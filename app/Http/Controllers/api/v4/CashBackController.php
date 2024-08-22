<?php

namespace App\Http\Controllers\api\v4;

use App\CPU\CartManager;
use App\CPU\Helpers;
use App\CPU\CustomerManager;
use App\Http\Controllers\Controller;
use App\Model\Cashback_level;
use App\Model\Order;
use Carbon\Carbon;
use Illuminate\Http\Request;
use function App\CPU\translate;

class CashBackController extends Controller
{
    public function list(Request $request){

        $levels = Cashback_level::orderBy('min_order', 'asc')->paginate($request['limit'], ['*'], 'page', $request['offset']);

        return [
            'total_size' => $levels->total(),
            'limit' => (int)$request['limit'],
            'offset' => (int)$request['offset'],
            'levels' => $levels->items()
        ];
    }

    public function current(Request $request)
    {
        $user = CustomerManager::user_cashback_level($request->user()->id);
        return $user;
    }
}
