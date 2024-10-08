<?php

namespace App\Http\Controllers\api\v1;

use App\CPU\Helpers;
use App\Http\Controllers\Controller;
use App\Model\Banner;
use App\Model\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BannerController extends Controller
{
    public function get_banners(Request $request)
    {
        $theme_name = theme_root_path();

        $banner_array = match ($theme_name) {
            'default' => array(
                'Main Banner',
                'Footer Banner',
                'Popup Banner',
                'App Popup Banner',
                'Main Section Banner'
            ),
            'theme_aster' => array(
                'Main Banner',
                'Footer Banner',
                'Popup Banner',
                'App Popup Banner',
                'Header Banner',
                'Sidebar Banner',
                'Top Side Banner',
                'Main Section Banner'
            ),
            'theme_fashion' => array(
                'Main Banner',
                'Footer Banner',
                'Popup Banner',
                'App Popup Banner',
                'Main Section Banner',
                'Promo Banner Left',
                'Promo Banner Middle Top',
                'Promo Banner Middle Bottom',
                'Promo Banner Right',
                'Promo Banner Bottom'
            ),
        };

        $banners = Banner::whereIn('banner_type',$banner_array)
        ->orderBy('sort_order','asc')
        ->where(['published' => 1, 'theme'=>$theme_name])->get();
        $pro_ids = [];
        $data = [];
        foreach ($banners as $banner) {
            if ($banner['resource_type'] == 'product' && !in_array($banner['resource_id'], $pro_ids)) {
                array_push($pro_ids,$banner['resource_id']);
                $product = Product::find($banner['resource_id']);
                $banner['product'] = Helpers::product_data_formatting($product);
            }
            $data[] = $banner;
        }

        return response()->json($data, 200);

    }
}
