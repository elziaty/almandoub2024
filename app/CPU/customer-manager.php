<?php

namespace App\CPU;

use App\Model\CustomerWalletHistory;
use App\Model\SupportTicket;
use App\Model\Transaction;
use App\Model\BusinessSetting;
use App\Model\WalletTransaction;
use App\Model\LoyaltyPointTransaction;
use App\Model\CashbackTransaction;
use App\Model\Order;
use App\Model\Seller;
use App\Model\Visit;
use App\User;
use Illuminate\Support\Facades\DB;
use App\CPU\Helpers;
use App\Model\OrderDetail;
use Carbon\Carbon;
use App\Model\Cashback_level;

class CustomerManager
{
    public static function create_support_ticket($data)
    {
        $support = new SupportTicket();
        $support->customer_id = $data['customer_id'];
        $support->subject = $data['subject'];
        $support->type = $data['type'];
        $support->priority = $data['priority'];
        $support->description = $data['description'];
        $support->status = $data['status'];
        $support->save();

        return $support;
    }

    public static function user_transactions($customer_id, $customer_type)
    {
        return Transaction::where(['payer_id' => $customer_id])->orWhere(['payment_receiver_id' => $customer_type])->get();
    }

    public static function user_wallet_histories($user_id)
    {
        return CustomerWalletHistory::where(['customer_id' => $user_id])->get();
    }

    public static function create_wallet_transaction($user_id, float $amount, $transaction_type, $referance, $payment_method=null)
    {
        if(BusinessSetting::where('type','wallet_status')->first()->value != 1) return false;
        $user = User::find($user_id);
        $current_balance = $user->wallet_balance;

        $wallet_transaction = new WalletTransaction();
        $wallet_transaction->user_id = $user->id;
        $wallet_transaction->transaction_id = \Str::uuid();
        $wallet_transaction->reference = $referance;
        $wallet_transaction->transaction_type = $transaction_type;
        $wallet_transaction->payment_method = $payment_method;

        $debit = 0.0;
        $credit = 0.0;
        $add_fund_to_wallet_bonus = 0;

        if(in_array($transaction_type, ['add_fund_by_admin','add_fund','order_refund','loyalty_point']))
        {
            $credit = $amount;
            if($transaction_type == 'add_fund')
            {
                $wallet_transaction->admin_bonus = Convert::usd(Helpers::add_fund_to_wallet_bonus($amount) ?? 0);
                $add_fund_to_wallet_bonus = Convert::usd(Helpers::add_fund_to_wallet_bonus($amount) ?? 0);
            }
            else if($transaction_type == 'loyalty_point')
            {
                $credit = (($amount / BusinessSetting::where('type','loyalty_point_exchange_rate')->first()->value)*Convert::default(1));
            }
        }
        else if($transaction_type == 'order_place')
        {
            $debit = $amount;
        }

        $wallet_transaction->credit = Convert::usd($credit);
        $wallet_transaction->debit = Convert::usd($debit);
        $wallet_transaction->balance = $current_balance + Convert::usd($credit) - Convert::usd($debit);
        $wallet_transaction->created_at = now();
        $wallet_transaction->updated_at = now();
        $user->wallet_balance = $current_balance + $add_fund_to_wallet_bonus + Convert::usd($credit) - Convert::usd($debit);

        try{
            DB::beginTransaction();
            $user->save();
            $wallet_transaction->save();
            DB::commit();
            if(in_array($transaction_type, ['loyalty_point','order_place','add_fund_by_admin'])) return $wallet_transaction;
            return true;
        }catch(\Exception $ex)
        {
            info($ex);
            DB::rollback();

            return false;
        }
        return false;
    }

    public static function create_loyalty_point_transaction($user_id, $referance, $amount, $transaction_type)
    {
        $settings = array_column(BusinessSetting::whereIn('type',['loyalty_point_status','loyalty_point_exchange_rate','loyalty_point_item_purchase_point'])->get()->toArray(), 'value','type');
        if($settings['loyalty_point_status'] != 1)
        {
            return true;
        }

        $credit = 0;
        $debit = 0;
        $user = User::find($user_id);

        $loyalty_point_transaction = new LoyaltyPointTransaction();
        $loyalty_point_transaction->user_id = $user->id;
        $loyalty_point_transaction->transaction_id = \Str::uuid();
        $loyalty_point_transaction->reference = $referance;
        $loyalty_point_transaction->transaction_type = $transaction_type;

        if($transaction_type=='order_place')
        {
            $credit = (int)($amount * $settings['loyalty_point_item_purchase_point']/100);
        }
        else if($transaction_type=='point_to_wallet')
        {
            $debit = $amount;
        }else if($transaction_type=='refund_order')
        {
            $debit = $amount;
        }

        $current_balance = $user->loyalty_point + $credit - $debit;
        $loyalty_point_transaction->balance = $current_balance;
        $loyalty_point_transaction->credit = $credit;
        $loyalty_point_transaction->debit = $debit;
        $loyalty_point_transaction->created_at = now();
        $loyalty_point_transaction->updated_at = now();
        $user->loyalty_point = $current_balance;

        try{
            DB::beginTransaction();
            $user->save();
            $loyalty_point_transaction->save();
            DB::commit();
            return true;
        }catch(\Exception $ex)
        {
            info($ex);
            DB::rollback();

            return false;
        }
        return false;
    }

    public static function count_loyalty_point_for_amount($id)
    {
        $order_details = OrderDetail::find($id);
        $loyalty_point_status = Helpers::get_business_settings('loyalty_point_status');
        $loyalty_point = 0;
        if($loyalty_point_status == 1)
        {
            $loyalty_point_item_purchase_point = Helpers::get_business_settings('loyalty_point_item_purchase_point');
            $subtotal = ($order_details->price * $order_details->qty) - $order_details->discount + $order_details->tax;

            $loyalty_point = (int)(Convert::default($subtotal) * $loyalty_point_item_purchase_point /100);

            return $loyalty_point;
        }
        return $loyalty_point;
    }
    

    public static function user_cashback_level($user_id)
    {
        // get total order amount for this month this user id
        $total_order_amount = Order::where(['customer_id' => $user_id])
            ->whereMonth('created_at', Carbon::now()->month)
            ->whereYear('created_at', Carbon::now()->year)
            ->where('payment_status','paid')
            ->get()
            ->sum('order_amount');
        // dd($total_order_amount);
        // get cashback level for this user
        $cashback_level = Cashback_level::where('min_order','<=',$total_order_amount)
        ->orderBy('min_order','desc')->first();

        // next level
        $next_level = Cashback_level::where('min_order','>',$total_order_amount)->orderBy('min_order','asc')->first();


        return [
            'current_level' => $cashback_level,
            'next_level' => $next_level,
            'total_order_amount' => $total_order_amount
        ];
    }

    public static function create_cashback_transaction($user_id, $referance, $amount, $transaction_type,$percentage=0)
    {

        $user = User::find($user_id);
        $order = Order::find($referance);

        $credit = 0;
        $debit = 0;
        $cashback_transaction = new CashbackTransaction();
        $cashback_transaction->user_id = $user->id;
        $cashback_transaction->transaction_id = \Str::uuid();
        $cashback_transaction->reference = $referance;
        $cashback_transaction->transaction_type = $transaction_type;

        if($transaction_type=='order_place')
        {
            $cashback_level = CustomerManager::user_cashback_level($user_id);
            if($cashback_level['current_level'] == null){
                return false;
            }

            // update order cashback_percentage in order table 
            $order->cashback_percentage = $cashback_level['current_level']['percentage'];

            $credit = (float)($amount * $cashback_level['current_level']['percentage']/100);

        }else if($transaction_type=='refund_order')
        {
            $debit = (float)($amount * $percentage/100);
        }

        $current_balance = $user->wallet_balance + $credit - $debit;
        $cashback_transaction->balance = $current_balance;
        $cashback_transaction->credit = $credit;
        $cashback_transaction->debit = $debit;
        $cashback_transaction->created_at = now();
        $cashback_transaction->updated_at = now();
        $user->wallet_balance = number_format($current_balance,2);

     

        try{
            DB::beginTransaction();
            $user->save();
            $cashback_transaction->save();
            if($transaction_type=='order_place')
            {
                $order->save();
            }
            DB::commit();
            return true;
        }catch(\Exception $ex)
        {
            info($ex);
            DB::rollback();
            return false;
        }
        return false;
    }

    public static function view_shop_visit($shop_id, $source, $user_id=null)
    {
        try{
            // add visit record
            $visit = Visit::create([
                'target_type' => "App\Models\Shop",
                'target_id'   => $shop_id,
                'user_id'     => $user_id,
                'source'      => $source
            ]);
            return true;
        }catch(\Exception $ex)
        {
            // info($ex);
            return false;
        }
        return false;
    }

    public static function get_shop_visits($shop_id, $source='all', $date_type=null, $from=null, $to=null)
    {
        $counter =  Visit::where('target_type',"App\Models\Shop")
        ->where('target_id',$shop_id)
        ->when($source != 'all', function ($q) use($source){
                $q->where('source', $source);
        })
        ->when($date_type,function($q) use($date_type, $from, $to){
            $q->when($date_type  == "this_year", function($dateQuery) {
                $current_start_year = date('Y-01-01');
                $current_end_year = date('Y-12-31');
                $dateQuery->whereDate('created_at', '>=',$current_start_year)
                    ->whereDate('created_at', '<=',$current_end_year);
            })
            ->when($date_type  == "this_month", function($dateQuery) {
                $current_month_start = date('Y-m-01');
                $current_month_end = date('Y-m-t');
                $dateQuery->whereDate('created_at', '>=',$current_month_start)
                    ->whereDate('created_at', '<=',$current_month_end);
            })
            ->when($date_type == "this_week", function ($dateQuery) {
                $start_week = Carbon::now()->startOfWeek(Carbon::SATURDAY)->format('Y-m-d');
                $end_week = Carbon::now()->endOfWeek(Carbon::FRIDAY)->format('Y-m-d');
                $dateQuery->whereDate('created_at', '>=', $start_week)
                    ->whereDate('created_at', '<=', $end_week);
            })
            ->when($date_type  == "custom_date" && !empty($from) && !empty($to), function($dateQuery) use($from, $to) {
                $dateQuery->whereDate('created_at', '>=',$from)
                    ->whereDate('created_at', '<=',$to);
            });
        })->count();
        return $counter;
    }


}
