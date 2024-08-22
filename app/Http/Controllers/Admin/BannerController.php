<?php

namespace App\Http\Controllers\Admin;

use App\CPU\Helpers;
use App\CPU\ImageManager;
use App\Http\Controllers\Controller;
use App\Model\Banner;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    function list(Request $request)
    {
        $banner_types = [];
        if (theme_root_path() == 'default') {
            $banner_types = ["Main Banner", "Popup Banner","App Popup Banner", "Footer Banner","Main Section Banner"];
        }else if (theme_root_path() == 'theme_aster') {
            $banner_types = ["Main Banner", "Popup Banner","App Popup Banner", "Footer Banner","Main Section Banner","Header Banner","Sidebar Banner", "Top Side Banner"];
        }if (theme_root_path() == 'theme_fashion') {
            $banner_types = ["Main Banner", "Popup Banner","App Popup Banner", "Promo Banner Left", "Promo Banner Middle Top", "Promo Banner Middle Bottom", "Promo Banner Right", "Promo Banner Bottom"];
        }

        $query_param = [];
        $search = $request['search'];
        if ($request->has('search')) {
            $key = explode(' ', $request['search']);
            $banners = Banner::where(function ($q) use ($key) {
                foreach ($key as $value) {
                    $q->Where('banner_type', 'like', "%{$value}%");
                }
            })->orderBy('sort_order', 'asc');
            $query_param = ['search' => $request['search']];
        } else {
            $banners = Banner::orderBy('sort_order', 'asc');
        }
        $banners = $banners->where('theme',theme_root_path())->whereIn('banner_type', $banner_types)->paginate(Helpers::pagination_limit())->appends($query_param);
        return view('admin-views.banner.view', compact('banners', 'search'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'url' => 'required',
            'image' => 'required',
        ], [
            'url.required' => 'url is required!',
            'image.required' => 'Image is required!',

        ]);

        $banner = new Banner;
        $banner->banner_type = $request->banner_type;
        $banner->resource_type = $request->resource_type;
        $banner->resource_id = $request[$request->resource_type . '_id'];
        $banner->title = $request->title;
        $banner->theme = theme_root_path();
        $banner->sub_title = $request->sub_title;
        $banner->button_text = $request->button_text;
        $banner->background_color = $request->background_color;
        $banner->url = $request->url;
        $banner->photo = ImageManager::upload('banner/', 'png', $request->file('image'));
        $banner->save();
        Toastr::success(translate('banner_added_successfully'));
        return back();
    }

    public function status(Request $request)
    {
        if ($request->ajax()) {
            $banner = Banner::find($request->id);
            $banner->published = $request->status ?? 0;
            $banner->save();
            $data = $request->status ?? 0;
            return response()->json($data);
        }
    }

    public function edit($id)
    {
        $banner = Banner::where('id', $id)->first();
        return view('admin-views.banner.edit', compact('banner'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'url' => 'required',
        ], [
            'url.required' => 'url is required!',
        ]);

        $banner = Banner::find($id);
        $banner->banner_type = $request->banner_type;
        $banner->resource_type = $request->resource_type;
        $banner->resource_id = $request[$request->resource_type . '_id'];
        $banner->title = $request->title;
        $banner->sub_title = $request->sub_title;
        $banner->button_text = $request->button_text;
        $banner->background_color = $request->background_color;
        $banner->url = $request->url;
        if ($request->file('image')) {
            $banner->photo = ImageManager::update('banner/', $banner['photo'], 'png', $request->file('image'));
        }
        $banner->save();

        Toastr::success(translate('banner_updated_successfully'));
        return back();
    }

    public function delete(Request $request)
    {
        $br = Banner::find($request->id);
        ImageManager::delete('/banner/' . $br['photo']);
        Banner::where('id', $request->id)->delete();
        return response()->json();
    }

    public function sort(Request $request)
    {
        try{
            $orders = $request->order;
            foreach ($orders as $row) {
                Banner::where('id', $row['id'])->update(['sort_order' => $row['position']]);
            }
            return response()->json([
                'success' => true,
                'message' => translate('banner_sort_order_updated_successfully')
            ], 200);
        }catch (\Exception $e){
            return $e->getMessage();
            return response()->json([
                'success' => false,
                'message' => translate('banner_sort_order_updated_failed')
            ], 403);
        }
    }

}
