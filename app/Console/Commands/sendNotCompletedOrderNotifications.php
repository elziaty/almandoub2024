<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Model\Cart;
use App\User;
use App\CPU\Helpers;
use DB;

class sendNotCompletedOrderNotifications extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'send:not-completed-order-notifications';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'send notification for users who have not completed their orders';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        try{
            // get all carts that have not been completed for more than 15 minutes and send notifications to the users if notified_at is null and remember to get the user of the cart without duplicating the user
            $carts = Cart::where('updated_at', '<', now()->subMinutes(15))
            ->where('notified_at', null)
            ->get();
            $users = [];
            foreach ($carts as $cart) {
                // update notified_at
            
                $user = User::where('id',$cart->customer_id)->first();
                if (!$user || in_array($user, $users)) {
                    continue;
                }
                array_push($users, $user);

                // $user->notify(new \App\Notifications\NotCompletedOrderNotification($cart));

                // messages title and description
                $title = \App\Model\BusinessSetting::where('type','not_completed_order_message_title')->first() ? json_decode(\App\Model\BusinessSetting::where('type','not_completed_order_message_title')->first()->value)->message : 'شاركنا تجربتك عشان نحسن الخدمة';

                $description = \App\Model\BusinessSetting::where('type','not_completed_order_message_description')->first() ? json_decode(\App\Model\BusinessSetting::where('type','not_completed_order_message_description')->first()->value)->message : 'هل مازلت تردد؟ دعنا نساعدك في اتخاذ أفضل الخيارات لك';

                // send push notification 
                $fcm_token = $user->cm_firebase_token;
                $data = [
                    'title' => $title,
                    'description' => $description,
                    'image' => '',
                    'type'=> 'not_completed_order'
                ];

                Helpers::send_push_notif_to_device($fcm_token, $data);

                // update all carts with the same cart_group_id to be notified
                Cart::where('cart_group_id', $cart->cart_group_id)->update(['notified_at' => now()]);
                

            }
        }catch(\Exception $e){
            \Log::info($e->getMessage());
        }
        
       

    }
}
