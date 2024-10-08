<?php

namespace App\Http\Controllers\api\v4;

use App\CPU\CartManager;
use App\CPU\Helpers;
use App\Http\Controllers\Controller;
use App\Model\CartShipping;
use App\Model\ShippingMethod;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use function App\CPU\translate;
use App\Model\ShippingType;
use App\Model\Cart;


class ShippingMethodController extends Controller
{
    public function get_shipping_method_info($id)
    {
        try {
            $shipping = ShippingMethod::find($id);
            return response()->json($shipping, 200);
        } catch (\Exception $e) {
            return response()->json(['errors' => $e], 403);
        }
    }

    public function shipping_methods_by_seller($id, $seller_is)
    {
        $seller_is = $seller_is == 'admin' ? 'admin' : 'seller';
        return response()->json(Helpers::get_shipping_methods($id, $seller_is), 200);
    }

    public function choose_for_order(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'cart_group_id' => 'required'
        ]);

        // get customer shipping method 
        $shipping_method = Helpers::get_customer($request)->shipping_method()->first();
        if($shipping_method == null){
            return response()->json([
                'message' => translate('No_shipping_method_found._Please_contact_the_support.')
            ], 403);
        }
        
        $request['id'] = $shipping_method->id;

        if ($validator->errors()->count() > 0) {
            return response()->json(['errors' => Helpers::error_processor($validator)]);
        }

        if ($request['cart_group_id'] == 'all_cart_group') {
            foreach (CartManager::get_cart_group_ids($request) as $group_id) {
                $request['cart_group_id'] = $group_id;
                $min = self::check_shipping_minimum_order($request);
                if($min != "ok"){ 
                    return response()->json([
                        'message' => $min
                    ], 403);
                }
                self::insert_into_cart_shipping($request);
            }
        } else {
            $min = self::check_shipping_minimum_order($request);
            if($min != "ok"){ 
                return response()->json([
                    'message' => $min
                ], 403);
            }            
            self::insert_into_cart_shipping($request);
        }

        return response()->json(translate('successfully_added'));
    }

    public static function check_shipping_minimum_order($request)
    {
        // check if shipping method minimum order is greater than cart total

        $cart_total = CartManager::cart_total(Cart::where('cart_group_id', $request['cart_group_id'])->get());
        $shipping_method = ShippingMethod::find($request['id']);
        if ($shipping_method->min_order > $cart_total) {
            return translate('Minimum_order_for_your_shipping_method_is_') .(int) $shipping_method->min_order . translate('egp');
        }else{
            return 'ok';
        }
    }

    public static function insert_into_cart_shipping($request)
    {
        $shipping = CartShipping::where(['cart_group_id' => $request['cart_group_id']])->first();
        if (isset($shipping) == false) {
            $shipping = new CartShipping();
        }
        $shipping['cart_group_id'] = $request['cart_group_id'];
        $shipping['shipping_method_id'] = $request['id'];
        $shipping['shipping_cost'] = ShippingMethod::find($request['id'])->cost;
        $shipping->save();
    }

    public function chosen_shipping_methods(Request $request)
    {
        $group_ids = CartManager::get_cart_group_ids($request);
        return response()->json(CartShipping::whereIn('cart_group_id', $group_ids)->get(), 200);
    }

    public function check_shipping_type(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'seller_is' => 'required',
            'seller_id' => 'required'
        ]);

        if ($validator->errors()->count() > 0) {
            return response()->json(['errors' => Helpers::error_processor($validator)]);
        }

        if($request->seller_is == 'admin')
        {
            $admin_shipping = ShippingType::where('seller_id',0)->first();
            $shipping_type = isset($admin_shipping)==true?$admin_shipping->shipping_type:'order_wise';

        }
        else{
            $seller_shipping = ShippingType::where('seller_id',$request->seller_id)->first();
            $shipping_type = isset($seller_shipping)==true? $seller_shipping->shipping_type:'order_wise';

        }
        return response()->json(['shipping_type'=>$shipping_type], 200);
    }
}
