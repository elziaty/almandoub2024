<?php

namespace App\Http\Controllers\api\v4;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\DealOfTheDay;
use App\Model\Product;
use App\CPU\Helpers;

class DealOfTheDayController extends Controller
{
    public function get_deal_of_the_day_product(Request $request)
    {
        $deal_of_the_day_status = Helpers::get_business_settings('deal_of_the_day');
        if(!$deal_of_the_day_status){
            return response()->json(['message' => translate('Deal of the day is not enabled!')], 403);
        }

        $deal_of_the_day = DealOfTheDay::where('deal_of_the_days.status', 1)->first();

        if(isset($deal_of_the_day)){

            $product = Product::active()->find($deal_of_the_day->product_id);

            if(!isset($product))
            {
                $product = Product::active()->inRandomOrder()->first();
            }
            $product = Helpers::product_data_formatting($product);
            return response()->json($product, 200);
        }else{
            $product = Product::active()->inRandomOrder()->first();
            $product = Helpers::product_data_formatting($product);
            return response()->json($product, 200);
        }

    }
}
