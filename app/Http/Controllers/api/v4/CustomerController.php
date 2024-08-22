<?php

namespace App\Http\Controllers\api\v4;

use App\CPU\CustomerManager;
use App\CPU\Helpers;
use App\CPU\ImageManager;
use App\CPU\OrderManager;
use App\Http\Controllers\Controller;
use App\Model\DeliveryCountryCode;
use App\Model\DeliveryZipCode;
use App\Model\Order;
use App\Model\OrderDetail;
use App\Model\ShippingAddress;
use App\Model\SupportTicket;
use App\Model\SupportTicketConv;
use App\Model\Wishlist;
use App\Traits\CommonTrait;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;
use function App\CPU\translate;

class CustomerController extends Controller
{
    use CommonTrait;

    public function __construct(
        private Order $order
    ){}
    public function info(Request $request)
    {
        $customer = $request->user();
        $wishlists = Wishlist::whereHas('wishlistProduct', function ($q) {
            return $q;
        })->where('customer_id', $customer->id)->count();

        $total_order = Order::where('customer_id', $customer->id)->count();

        $data = [
            'customer'=>$customer,
            'wishlists'=>$wishlists,
            'total_order'=>$total_order,
            'compare_list'=>$request->user()->compare_list->count(),
        ];
        return response()->json($data, 200);
    }

    public function create_support_ticket(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'subject' => 'required',
            'type' => 'required',
            'description' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $request['customer_id'] = $request->user()->id;
        $request['status'] = 'pending';

        try {
            CustomerManager::create_support_ticket($request);
        } catch (\Exception $e) {
            return response()->json([
                'errors' => [
                    'code' => 'failed',
                    'message' => 'Something went wrong',
                ],
            ], 422);
        }
        return response()->json(['message' => 'Support ticket created successfully.'], 200);
    }
    public function account_delete(Request $request)
    {
        $user = User::find($request->user()->id);

        if($user->delete_request == 1){
            return response()->json(['message' =>translate('Your_account_delete_request_is_already_sent_to_admin')],403);
        }

        $ongoing = ['out_for_delivery','processing','confirmed', 'pending'];
        $order = Order::where('customer_id', $user->id)->whereIn('order_status', $ongoing)->count();
        if($order>0){
            return response()->json(['message' =>translate('You_can_not_delete_account_due_ongoing_order')],403);
        }

        // flag the user for deletion request
        $user->delete_request = 1;
        $user->save();

        return response()->json(['message' => translate('Your_account_delete_request_has_been_sent_to_admin')], 200);
    }

    public function reply_support_ticket(Request $request, $ticket_id)
    {
        $ticket = SupportTicket::find($ticket_id);
        $ticket->status = 'open';
        $ticket->save();

        $support = new SupportTicketConv();
        $support->support_ticket_id = $ticket_id;
        $support->admin_id = 1;
        $support->customer_message = $request['message'];
        $support->save();
        return response()->json(['message' => 'Support ticket reply sent.'], 200);
    }

    public function support_ticket_close(Request $request)
    {
        SupportTicket::where(['id' => $request->ticket_id])->update([
            'status' => 'close',
            'updated_at' => now(),
        ]);

        return response()->json(['message' => translate('ticket_closed')], 200);
    }

    public function get_support_tickets(Request $request)
    {
        return response()->json(SupportTicket::where('customer_id', $request->user()->id)->get(), 200);
    }

    public function get_support_ticket_conv(Request $request, $ticket_id)
    {
        return response()->json(SupportTicketConv::where('support_ticket_id', $ticket_id)->get(), 200);

    }

    public function add_to_wishlist(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product_id' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $wishlist = Wishlist::where('customer_id', $request->user()->id)->where('product_id', $request->product_id)->first();

        if (empty($wishlist)) {
            $wishlist = new Wishlist;
            $wishlist->customer_id = $request->user()->id;
            $wishlist->product_id = $request->product_id;
            $wishlist->save();
            return response()->json(['message' => translate('successfully added!')], 200);
        }

        return response()->json(['message' => translate('Already in your wishlist')], 409);
    }

    public function remove_from_wishlist(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product_id' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $wishlist = Wishlist::where('customer_id', $request->user()->id)->where('product_id', $request->product_id)->first();

        if (!empty($wishlist)) {
            Wishlist::where(['customer_id' => $request->user()->id, 'product_id' => $request->product_id])->delete();
            return response()->json(['message' => translate('successfully removed!')], 200);

        }
        return response()->json(['message' => translate('No such data found!')], 404);
    }

    public function wish_list(Request $request)
    {

        $wishlist = Wishlist::whereHas('wishlistProduct',function($q){
            return $q;
        })->with(['product_full_info'])->where('customer_id', $request->user()->id)->get();

        return response()->json($wishlist, 200);
    }

    public function address_list(Request $request)
    {
        $user = Helpers::get_customer($request);
        if($user == 'offline'){
            $data = ShippingAddress::where(['customer_id'=> $request->guest_id, 'is_guest'=>1])->latest()->get();
        }else{
            $data = ShippingAddress::where(['customer_id'=> $user->id, 'is_guest'=>'0'])->latest()->get();
        }
        return response()->json($data, 200);
    }

    public function add_new_address(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'contact_person_name' => 'required',
            'address_type' => 'required',
            'address' => 'required',
            'city' => 'required',
            'zip' => 'required',
            'country' => 'required',
            'phone' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'is_billing' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $zip_restrict_status = Helpers::get_business_settings('delivery_zip_code_area_restriction');
        $country_restrict_status = Helpers::get_business_settings('delivery_country_restriction');

        if ($country_restrict_status && !self::delivery_country_exist_check($request->input('country'))) {
            return response()->json(['message' => translate('Delivery_unavailable_for_this_country')], 403);

        } elseif ($zip_restrict_status && !self::delivery_zipcode_exist_check($request->input('zip'))) {
            return response()->json(['message' => translate('Delivery_unavailable_for_this_zip_code_area')], 403);
        }

        $user = Helpers::get_customer($request);
        $address = [
            'customer_id' => $user=='offline' ? $request->guest_id : $user->id,
            'is_guest' => $user == 'offline' ? 1 : 0,
            'contact_person_name' => $request->contact_person_name,
            'address_type' => $request->address_type,
            'address' => $request->address,
            'city' => $request->city,
            'zip' => $request->zip,
            'country' => $request->country,
            'email' => $request->email,
            'phone' => $request->phone,
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'is_billing' => $request->is_billing,
            'created_at' => now(),
            'updated_at' => now(),
        ];
        ShippingAddress::insert($address);
        return response()->json(['message' => translate('successfully added!')], 200);
    }

    public function update_address(Request $request)
    {
        $user = Helpers::get_customer($request);
        $shipping_address = ShippingAddress::where([
            'customer_id' => $user=='offline' ? $request->guest_id : $user->id,
            'id' => $request->id
        ])->first();

        if (!$shipping_address) {
            return response()->json(['message' => translate('not_found')], 200);
        }

        $zip_restrict_status = Helpers::get_business_settings('delivery_zip_code_area_restriction');
        $country_restrict_status = Helpers::get_business_settings('delivery_country_restriction');

        if ($country_restrict_status && !self::delivery_country_exist_check($request->input('country'))) {
            return response()->json(['message' => translate('Delivery_unavailable_for_this_country')], 403);

        } elseif ($zip_restrict_status && !self::delivery_zipcode_exist_check($request->input('zip'))) {
            return response()->json(['message' => translate('Delivery_unavailable_for_this_zip_code_area')], 403);
        }

        $shipping_address->update([
                'contact_person_name' => $request->contact_person_name,
                'address_type' => $request->address_type,
                'address' => $request->address,
                'city' => $request->city,
                'zip' => $request->zip,
                'country' => $request->country,
                'phone' => $request->phone,
                'latitude' => $request->latitude,
                'longitude' => $request->longitude,
                'is_billing' => $request->is_billing,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

        return response()->json(['message' => translate('update_successful')], 200);
    }

    public function delete_address(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'address_id' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        if (DB::table('shipping_addresses')->where(['id' => $request['address_id'], 'customer_id' => $request->user()->id])->first()) {
            DB::table('shipping_addresses')->where(['id' => $request['address_id'], 'customer_id' => $request->user()->id])->delete();
            return response()->json(['message' => 'successfully removed!'], 200);
        }
        return response()->json(['message' => translate('No such data found!')], 404);
    }

    public function get_order_list(Request $request)
    {
        $status = ['delivered','canceled','failed'];
        $orders = Order::with('seller.shop','delivery_man')
            ->withCount('details')
            ->where(['customer_id' => $request->user()->id])
            ->when($request->type=='previous', function($query) use($status){
                $query->whereIn('order_status', $status);
            })
            ->when($request->type=='ongoing', function($query) use($status){
                $query->whereNotIn('order_status', $status);
            })
            ->latest()
            ->paginate($request['limit'], ['*'], 'page', $request['offset']);

        $orders->map(function ($data) {
            $data['shipping_address_data'] = json_decode($data['shipping_address_data']);
            $data['billing_address_data'] = json_decode($data['billing_address_data']);
            return $data;
        });

        return [
            'total_size' => $orders->total(),
            'limit' => $request['limit'],
            'offset' => $request['offset'],
            'orders' => $orders->items()
        ];
    }

    public function get_order_details(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'order_id' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $user = Helpers::get_customer($request);

        $order = $this->order->with(['details.seller.shop', 'details.product','verification_images'])
            ->where([
                'id' => $request->order_id,
                'customer_id' => $user=='offline' ? $request->guest_id : $user->id,
                'is_guest' => $user=='offline' ? 1 : '0'
            ])
            ->first();

        if($order){
            $order['summery'] = OrderManager::order_summary($order);
            $order->details->map(function ($query) {
                $query['variation'] = json_decode($query['variation'], true);
                $query['product'] = Helpers::product_data_formatting(json_decode($query['product'], true));
                return $query;
            });
        }
        return response()->json($order, 200);
    }

    public function get_order_by_id(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'order_id' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $order = Order::with('verification_images','offline_payments')->where(['id' => $request['order_id']])->first();
        $order['shipping_address_data'] = json_decode($order['shipping_address_data']);
        $order['billing_address_data'] = json_decode($order['billing_address_data']);
        return response()->json($order, 200);
    }

    public function update_profile(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'f_name' => 'required',
            'l_name' => 'required',
            'phone' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif|max:6000'
        ], [
            'f_name.required' => translate('First name is required!'),
            'l_name.required' => translate('Last name is required!'),
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        if ($request->has('image')) {
            $imageName = ImageManager::update('profile/', $request->user()->image, 'png', $request->file('image'));
        } else {
            $imageName = $request->user()->image;
        }

        if ($request['password'] != null && strlen($request['password']) > 5) {
            $pass = bcrypt($request['password']);
        } else {
            $pass = $request->user()->password;
        }

        $userDetails = [
            'f_name' => $request->f_name,
            'l_name' => $request->l_name,
            'phone' => $request->phone,
            'image' => $imageName,
            'password' => $pass,
            'updated_at' => now(),
        ];

        User::where(['id' => $request->user()->id])->update($userDetails);

        return response()->json(['message' => translate('successfully updated!')], 200);
    }

    public function update_cm_firebase_token(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'cm_firebase_token' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        DB::table('users')->where('id', $request->user()->id)->update([
            'cm_firebase_token' => $request['cm_firebase_token'],
        ]);

        return response()->json(['message' => translate('successfully updated!')], 200);
    }

    public function get_restricted_country_list(Request $request)
    {
        $country_restriction = Helpers::get_business_settings('delivery_country_restriction');

        $stored_countries = DeliveryCountryCode::orderBy('country_code', 'ASC')->pluck('country_code')->toArray();
        $country_list = COUNTRIES;

        $countries = array();

        if($country_restriction){
            foreach ($country_list as $country) {
                if (in_array($country['code'], $stored_countries))
                {
                    $countries[]= [
                        'code' => $country['code'],
                        'name' => $country['name']
                    ];
                }
            }
        }else{
            foreach ($country_list as $country) {
                $countries[]= [
                    'code' => $country['code'],
                    'name' => $country['name']
                ];
            }
        }

        if($request->search){
            $countries = array_values(preg_grep('~' . $request->search . '~i', $countries));
        }

        return response()->json($countries, 200);
    }

    public function get_restricted_zip_list(Request $request)
    {
        $zipcodes = DeliveryZipCode::orderBy('zipcode', 'ASC')
            ->when($request->search, function ($query) use($request){
                $query->where('zipcode', 'like', "%{$request->search}%");
            })
            ->get();

        return response()->json($zipcodes, 200);
    }

    public function get_shipping_method(Request $request)
    {
        $user = Helpers::get_customer($request);
        if($user->shipping_method()->exists()){
           return response()->json([$user->shipping_method], 200);
        }
        return response()->json(['message' => translate( 'No_shipping_method_found._Please_contact_support' )], 403);
    }

    public function ordered_product_list(Request $request)
    {
        $user = $request->user();
        $filter_category = $request->filter_category;
        $filter_subcategory = $request->filter_subcategory;
        $filter_sub_subcategory = $request->filter_sub_subcategory;
        $date_type = $request->date_type;
        $from       = $request->from;
        $to         = $request->to;
        
        $status = ['delivered','canceled','failed'];
        $products = OrderDetail::with('product','order')
            ->whereHas('order', function($query) use($user,$request, $status){
                $query->where(['customer_id' => $user->id])
                    ->when($request->type=='previous', function($query) use($status){
                        $query->whereIn('order_status', $status);
                    })
                    ->when($request->type=='ongoing', function($query) use($status){
                        $query->whereNotIn('order_status', $status);
                    });
            })
            ->when($filter_category, function($query) use ($filter_category) {
                $query->whereHas('product', function ($q) use ($filter_category) {
                    $q->where('category_id', $filter_category);
                });
            })
            ->when($filter_subcategory,function($query) use($filter_subcategory){
                $query->whereHas('product', function ($q) use ($filter_subcategory) {
                    $q->where('sub_category_id', $filter_subcategory);
                });
            })
            ->when($filter_sub_subcategory,function($query) use($filter_sub_subcategory){
                $query->whereHas('product', function ($q) use ($filter_sub_subcategory) {
                    $q->where('sub_sub_category_id', $filter_sub_subcategory);
                });
            })
            ->when($date_type,function($q) use($date_type, $from, $to){
                $q->when($date_type  == "this_year", function($dateQuery) {
                    $current_start_year = date('Y-01-01');
                    $current_end_year = date('Y-12-31');
                    $dateQuery->whereDate('created_at', '>=',$current_start_year)->whereDate('created_at', '<=',$current_end_year);
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
            })
            ->groupBy('product_id') // Group by product_id
            ->latest()
            ->paginate($request['limit'], ['*'], 'page', $request['offset']);

        $products->map(function ($data) {
            $data['variation'] = json_decode($data['variation'], true);
            $data['product'] = Helpers::product_data_formatting(json_decode($data['product'], true));
            return $data;
        });

        return [
            'total_size' => $products->total(),
            'limit' => $request['limit'],
            'offset' => $request['offset'],
            'products' => $products->items()
        ];
    }
}
