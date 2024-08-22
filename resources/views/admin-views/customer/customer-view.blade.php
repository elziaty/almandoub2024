@extends('layouts.back-end.app')
{{--@section('title','Customer')--}}
@section('title', translate('customer_Details'))

@push('css_or_js')

@endpush

@section('content')
    <div class="content container-fluid">
        <!-- Page Header -->
        <div class="d-print-none pb-2">
            <div class="row align-items-center">
                <div class="col-sm mb-2 mb-sm-0">

                    <!-- Page Title -->
                    <div class="mb-3">
                        <h2 class="h1 mb-0 text-capitalize d-flex gap-2">
                            <img width="20" src="{{asset('/public/assets/back-end/img/customer.png')}}" alt="">
                            {{translate('customer_details')}}
                        </h2>
                    </div>
                    <!-- End Page Title -->

                    <div class="d-sm-flex align-items-sm-center">
                        <h3 class="page-header-title">{{translate('customer_ID')}} #{{$customer['id']}}</h3>
                        <span class="{{Session::get('direction') === "rtl" ? 'mr-2 mr-sm-3' : 'ml-2 ml-sm-3'}}">
                        <i class="tio-date-range">
                        </i> {{translate('joined_At')}} : {{date('d M Y H:i:s',strtotime($customer['created_at']))}}
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Header -->

        <div class="row" id="printableArea">
            <div class="col-lg-8 mb-3 mb-lg-0">
                <div class="card">
                    <div class="p-3">
                        <div class="row justify-content-end">
                            <div class="col-auto">
                                <form action="{{ url()->current() }}" method="GET">
                                    <!-- Search -->
                                    <div class="input-group input-group-merge input-group-custom">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="tio-search"></i>
                                            </div>
                                        </div>
                                        <input id="datatableSearch_" type="search" name="search" class="form-control"
                                            placeholder="{{translate('search_orders')}}" aria-label="Search orders" value="{{ $search }}"
                                            required>
                                        <button type="submit" class="btn btn--primary">{{translate('search')}}</button>
                                    </div>
                                    <!-- End Search -->
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Table -->
                    <div class="table-responsive datatable-custom">
                        <table
                               class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table w-100">
                            <thead class="thead-light thead-50 text-capitalize">
                            <tr>
                                <th>{{translate('sl')}}</th>
                                <th>{{translate('order_ID')}}</th>
                                <th>{{translate('total')}}</th>
                                <th class="text-center">{{translate('action')}}</th>
                            </tr>

                            </thead>

                            <tbody>
                            @foreach($orders as $key=>$order)
                                <tr>
                                    <td>{{$orders->firstItem()+$key}}</td>
                                    <td>
                                        <a href="{{route('admin.orders.details',['id'=>$order['id']])}}" class="title-color hover-c1">{{$order['id']}}</a>
                                    </td>
                                    <td> {{\App\CPU\BackEndHelper::set_symbol(\App\CPU\BackEndHelper::usd_to_currency($order['order_amount']))}}</td>

                                    <td>
                                        <div class="d-flex justify-content-center gap-10">
                                            <a class="btn btn-outline--primary btn-sm edit square-btn"
                                                title="{{translate('view')}}"
                                                href="{{route('admin.orders.details',['id'=>$order['id']])}}"><i
                                                    class="tio-invisible"></i> </a>
                                            <a class="btn btn-outline-info btn-sm square-btn"
                                                title="{{translate('invoice')}}"
                                                target="_blank"
                                                href="{{route('admin.orders.generate-invoice',[$order['id']])}}"><i
                                                    class="tio-download"></i> </a>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        @if(count($orders)==0)
                            <div class="text-center p-4">
                                <img class="mb-3 w-160" src="{{asset('public/assets/back-end')}}/svg/illustrations/sorry.svg" alt="Image Description">
                                <p class="mb-0">{{ translate('no_data_to_show')}}</p>
                            </div>
                        @endif
                        <!-- Footer -->
                        <div class="card-footer">
                            <!-- Pagination -->
                        {!! $orders->links() !!}
                        <!-- End Pagination -->
                        </div>
                        <!-- End Footer -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <!-- Card -->
                <div class="card">
                    @if($customer)
                        <div class="card-body">
                            <h4 class="mb-4 d-flex align-items-center gap-2">
                                <img src="{{asset('/public/assets/back-end/img/seller-information.png')}}" alt="">
                                {{translate('customer')}}
                            </h4>

                            <div class="media">
                                <div class="mr-3">
                                    <img
                                        class="avatar rounded-circle avatar-70"
                                        onerror="this.src='{{asset('public/assets/front-end/img/image-place-holder.png')}}'"
                                        src="{{asset('storage/app/public/profile/'.$customer->image??'')}}"
                                        alt="Image">
                                </div>
                                <div class="media-body d-flex flex-column gap-1">
                                    <span class="title-color hover-c1"><strong>{{$customer['f_name'].' '.$customer['l_name']}}</strong></span>
                                    <span class="title-color">
                                        <strong>{{\App\Model\Order::where('customer_id',$customer['id'])->count()}} </strong>{{translate('orders')}}
                                    </span>
                                    <span class="title-color"><strong>{{$customer['phone']}}</strong></span>
                                    <span class="title-color">{{$customer['email']}}</span>
                                </div>
                                <div class="media-body text-right">
                                    {{--<i class="tio-chevron-right text-body"></i>--}}
                                </div>
                            </div>
                        </div>
                    @endif
                <!-- End Body -->
                </div>
                <!-- End Card -->
                <!-- Card -->
                @if($customer)
                <form action="{{route('admin.customer.update_shipping_method')}}" method="post" enctype="multipart/form-data"
                      style="text-align: {{Session::get('direction') === 'rtl' ? 'right' : 'left'}};">
                    <input type="hidden" name="id" value="{{$customer['id']}}">
                    @csrf
                    <div class="card mt-3">
                            <div class="card-body">
                                <h4 class="mb-4 d-flex align-items-center gap-2">
                                    <img src="{{asset('/public/assets/back-end/img/shipping_method.png')}}" width="25" alt="">
                                    {{translate('Shipping Method')}}
                                </h4>
                                <div class="form-group">
                                    <label for="name" class="title-color">{{translate('Shipping Method')}}</label>
                                    <select class="form-control" name="shipping_method_id">
                                        <option value="0" selected disabled>{{translate('select')}}
                                        </option>
                                        @foreach(\App\Model\ShippingMethod::where(['status' => 1])->get() as $key=>$shipping_method)
                                                <option value="{{$shipping_method['id']}}" {{$customer['shipping_method_id']==$shipping_method['id']?'selected':''}}>{{$shipping_method['title']}}</option>
                                            @endforeach
                                    </select>
                                </div>
                                <div class="d-flex justify-content-end gap-3">
                                    <button type="submit" class="btn btn--primary px-4">{{translate('submit')}}</button>
                                </div>
                            </div>
                    <!-- End Body -->
                    </div>
                    <!-- End Card -->
                </form>
                @endif
                @if($customer)
                <form action="{{route('admin.customer.update_password')}}" method="post" enctype="multipart/form-data"
                      style="text-align: {{Session::get('direction') === 'rtl' ? 'right' : 'left'}};">
                    <input type="hidden" name="id" value="{{$customer['id']}}">
                    @csrf
                    <div class="card mt-3">
                            <div class="card-body">
                                <h4 class="mb-4 d-flex align-items-center gap-2">
                                    {{translate('Change Password')}}
                                </h4>
                                <div class="form-group">
                                    <label for="name" class="title-color">{{translate('New Password')}}</label>
                                    <input type="password" class="form-control" name="password" required>
                                </div>
                                <div class="d-flex justify-content-end gap-3">
                                    <button type="submit" class="btn btn--primary px-4">{{translate('submit')}}</button>
                                </div>
                            </div>
                    <!-- End Body -->
                    </div>
                    <!-- End Card -->
                </form>
                @endif
            </div>
            
        </div>
        <!-- End Row -->
    </div>
@endsection

@push('script_2')

@endpush
