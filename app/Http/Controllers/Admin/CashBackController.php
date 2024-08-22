<?php

namespace App\Http\Controllers\Admin;

use App\CPU\BackEndHelper;
use App\CPU\Convert;
use App\CPU\Helpers;
use App\Http\Controllers\Controller;
use App\Model\Cashback_level;
use App\Model\Seller;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use function App\CPU\translate;

class CashBackController extends Controller
{
    public function add_new(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        $levels = Cashback_level::when(isset($request['search']) && !empty($request['search']), function ($query) use ($search) {
                    $key = explode(' ', $search);
                    foreach ($key as $value) {
                        $query->where('title', 'like', "%{$value}%")
                            ->orWhere('level_desc', 'like', "%{$value}%");
                    }
            })
            ->orderBy('min_order', 'asc')
            ->paginate(Helpers::pagination_limit())->appends($query_param);
        return view('admin-views.cashback_levels.add-new', compact('levels','search'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'level_desc' => 'required_',
            'min_order' => 'required|numeric|unique:cashback_levels,min_order',
            'percentage' => 'required|numeric',
        ], [
            'title.required' => translate('title_is_required!'),
            'level_desc.required' => translate('level_desc_is_required!'),
            'min_order.required' => translate('min_order_is_required!'),
            'percentage.required' => translate('percentage_is_required!'),
            'min_order.unique' => translate('min_order_is_already_taken!'),
        ]);


        $level = new Cashback_level();
        $level->title = $request->title;
        $level->level_desc = $request->level_desc;
        $level->min_order = Convert::usd($request->min_order);
        $level->percentage = $request->percentage;

        $level->save();

        Toastr::success(translate('Coupon_added_successfully'));
        return back();
    }

    public function edit($id)
    {

        $l = Cashback_level::find($id);
        if(!$l){
            Toastr::error(translate('Invalid_Cashback_Level'));
            return redirect()->route('admin.cashback_levels.add-new');
        }
        return view('admin-views.cashback_levels.edit', compact('l'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'level_desc' => 'required_',
            'min_order' => 'required|numeric|unique:cashback_levels,min_order,'.$id,
            'percentage' => 'required|numeric',
        ], [
            'title.required' => translate('title_is_required!'),
            'level_desc.required' => translate('level_desc_is_required!'),
            'min_order.required' => translate('min_order_is_required!'),
            'percentage.required' => translate('percentage_is_required!'),
            'min_order.unique' => translate('min_order_is_already_taken!'),
        ]);

        $level = Cashback_level::find($id);
        $level->title = $request->title;
        $level->level_desc = $request->level_desc;
        $level->min_order = Convert::usd($request->min_order);
        $level->percentage = $request->percentage;

        $level->save();


        Toastr::success(translate('Cashback_Level_updated_successfully'));
        return back();
    }

    public function status(Request $request)
    {
        $cash_back = Cashback_level::find($request->id);
        $cash_back->status = $request->status ?? 0;
        $cash_back->save();

        if ($request->ajax()) {
            return response()->json([
                'status' => 1,
                'message' => translate('cash_back_level_status_updated')
            ]);
        }
        Toastr::success(translate('cash_back_level_updated'));
        return back();
    }

    public function quick_view_details(Request $request)
    {
        $level = Cashback_level::find($request->id);

        return response()->json([
            'view' => view('admin-views.cashback_levels.details-quick-view', compact('level'))->render(),
        ]);
    }

    public function delete($id)
    {
        $cashback_levels = Cashback_level::find($id);
        $cashback_levels->delete();
        Toastr::success(translate('cashback_level_deleted_successfully'));
        return back();
    }
}
