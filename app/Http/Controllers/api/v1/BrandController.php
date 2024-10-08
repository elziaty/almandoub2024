<?php

namespace App\Http\Controllers\api\v1;

use App\CPU\BrandManager;
use App\CPU\Helpers;
use App\Http\Controllers\Controller;
use App\Model\Brand;
use App\Model\Product;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function get_brands(Request $request)
    {

        //finding brand ids
        $brand_ids = Product::active()
                    ->when($request->has('seller_id') && !empty($request->seller_id), function ($query) use ($request) {
                        return $query->where(['added_by' => 'seller'])
                            ->where('user_id', $request->seller_id);
                    })->pluck('brand_id');

        try {
            $brands = Brand::active()->whereIn('id', $brand_ids)->withCount('brandProducts')->orderBy('sort_order')->get();
        } catch (\Exception $e) {

        }

        return response()->json($brands,200);
    }

    public function get_products(Request $request, $brand_id)
    {
        try {
            $products = BrandManager::get_products($brand_id, $request);
        } catch (\Exception $e) {
            return response()->json(['errors' => $e], 403);
        }

        return response()->json($products,200);
    }
}
