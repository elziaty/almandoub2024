<?php

namespace App\Http\Controllers\Admin;

use App\CPU\BackEndHelper;
use App\Http\Controllers\Controller;
use App\Model\ShippingMethod;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Model\BusinessSetting;
use App\Model\Category;
use App\Model\CategoryShippingCost;

class ShippingMethodController extends Controller
{
    public function index_admin()
    {
        $shipping_methods = ShippingMethod::where(['creator_type' => 'admin'])->get();

        return view('admin-views.shipping-method.add-new', compact('shipping_methods'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'    => 'required|max:200',
            'duration' => 'required',
            'cost'     => 'numeric',
            'min_order'=> 'numeric',
        ]);

        DB::table('shipping_methods')->insert([
            'creator_id'   => auth('admin')->id(),
            'creator_type' => 'admin',
            'title'        => $request['title'],
            'duration'     => $request['duration'],
            'cost'         => BackEndHelper::currency_to_usd($request['cost']),
            'min_order'    => BackEndHelper::currency_to_usd($request['min_order']),
            'status'       => 1,
            'created_at'   => now(),
            'updated_at'   => now(),
        ]);

        Toastr::success(translate('Successfully_added'));
        return back();
    }

    public function status_update(Request $request)
    {
        ShippingMethod::where(['id' => $request['id']])->update([
            'status' => $request['status'],
        ]);
        return response()->json([
            'success' => 1,
        ], 200);
    }

    public function edit($id)
    {
        if ($id != 1) {
            $method = ShippingMethod::where(['id' => $id])->first();
            return view('admin-views.shipping-method.edit', compact('method'));
        }
        return back();
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'title'    => 'required|max:200',
            'duration' => 'required',
            'cost'     => 'numeric',
            'min_order'=> 'numeric',
        ]);

        DB::table('shipping_methods')->where(['id' => $id])->update([
            'creator_id'   => auth('admin')->id(),
            'creator_type' => 'admin',
            'title'        => $request['title'],
            'duration'     => $request['duration'],
            'cost'         => BackEndHelper::currency_to_usd($request['cost']),
            'min_order'    => BackEndHelper::currency_to_usd($request['min_order']),
            'status'       => 1,
            'created_at'   => now(),
            'updated_at'   => now(),
        ]);

        Toastr::success(translate('successfully_updated'));
        return redirect()->back();
    }

    public function setting()
    {
        $shipping_methods = ShippingMethod::where(['creator_type' => 'admin'])->get();
        $all_category_ids = Category::where(['position' => 0])->pluck('id')->toArray();
        $category_shipping_cost_ids = CategoryShippingCost::where('seller_id',0)->pluck('category_id')->toArray();

        foreach($all_category_ids as $id)
        {
            if(!in_array($id,$category_shipping_cost_ids))
            {
                $new_category_shipping_cost = new CategoryShippingCost;
                $new_category_shipping_cost->seller_id = 0;
                $new_category_shipping_cost->category_id = $id;
                $new_category_shipping_cost->cost = 0;
                $new_category_shipping_cost->save();
            }
        }
        $all_category_shipping_cost = CategoryShippingCost::where('seller_id',0)->get();
        return view('admin-views.shipping-method.setting',compact('all_category_shipping_cost','shipping_methods'));
    }

    public function shippingStore(Request $request)
    {
        DB::table('business_settings')->updateOrInsert(['type' => 'shipping_method'], [
            'value' => $request['shipping_method']
        ]);

        if ($request->ajax()) {
            return response()->json();
        }

        Toastr::success(translate('shipping_responsibility_updated_successfully'));
        return back();
    }

    public function delete(Request $request)
    {

        $shipping = ShippingMethod::find($request->id);

        $shipping->delete();
        return response()->json();
    }

}
