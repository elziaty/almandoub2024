@extends('layouts.back-end.app')

@section('title', translate('customer_Delete_Requests'))

@push('css_or_js')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endpush

@section('content')
    <div class="content container-fluid">

        <!-- Page Title -->
        <div class="mb-4">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                <img width="20" src="{{asset('/public/assets/back-end/img/customer.png')}}" alt="">
                {{translate('customer_delete_requests')}}
                <span class="badge badge-soft-dark radius-50">{{$customers->total()}}</span>
            </h2>
        </div>
        <!-- End Page Title -->

        <!-- Card -->
        <div class="card">
            <!-- Header -->
            <div class="px-3 py-4">
                <div class="row gy-2 align-items-center">
                    <div class="col-sm-8 col-md-6 col-lg-4">
                        <!-- Search -->
                        <form action="{{ url()->current() }}" method="GET">
                            <div class="input-group input-group-merge input-group-custom">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="tio-search"></i>
                                    </div>
                                </div>
                                <input id="datatableSearch_" type="search" name="search" class="form-control"
                                       placeholder="{{translate('search_by_Name_or_Email_or_Phone')}}"
                                       aria-label="Search orders" value="{{ $search }}">
                                <button type="submit" class="btn btn--primary">{{translate('search')}}</button>
                            </div>
                        </form>
                        <!-- End Search -->
                    </div>
                    <div class="col-sm-4 col-md-6 col-lg-8 mb-2 mb-sm-0">
                        <div class="d-flex justify-content-sm-end">
                           
                        </div>
                    </div>
                </div>
                <!-- End Row -->
            </div>
            <!-- End Header -->

            <!-- Table -->
            <div class="table-responsive datatable-custom">
                <table
                    style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};"
                    class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table w-100">
                    <thead class="thead-light thead-50 text-capitalize">
                    <tr>
                        <th>{{translate('SL')}}</th>
                        <th>{{translate('customer_name')}}</th>
                        <th>{{translate('contact_info')}}</th>
                        <th>{{translate('total_Order')}} </th>
                        <th class="text-center">{{translate('action')}}</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach($customers as $key=>$customer)
                        <tr>
                            <td>
                                {{$customers->firstItem()+$key}}
                            </td>
                            <td>
                                <a href="{{route('admin.customer.view',[$customer['id']])}}"
                                   class="title-color hover-c1 d-flex align-items-center gap-10">
                                    <img src="{{asset('storage/app/public/profile')}}/{{$customer->image}}"
                                         onerror="this.src='{{asset('public/assets/back-end/img/160x160/img1.jpg')}}'"
                                         class="avatar rounded-circle" alt="" width="40">
                                    {{\Illuminate\Support\Str::limit($customer['f_name']." ".$customer['l_name'],20)}}
                                </a>
                            </td>
                            <td>
                                <div class="mb-1">
                                    <strong><a class="title-color hover-c1" href="mailto:{{$customer->email}}">{{$customer->email}}</a></strong>

                                </div>
                                <a class="title-color hover-c1" href="tel:{{$customer->phone}}">{{$customer->phone}}</a>

                            </td>
                            <td>
                                <label class="btn text-info bg-soft-info font-weight-bold px-3 py-1 mb-0 fz-12">
                                    {{$customer->orders->count()}}
                                </label>
                            </td>


                            <td>
                                <div class="d-flex justify-content-center gap-2">
                                    <a title="{{translate('view')}}"
                                       class="btn btn-outline-info btn-sm square-btn"
                                       href="{{route('admin.customer.view',[$customer['id']])}}"
                                       target="_blank"
                                       >
                                        <i class="tio-invisible"></i>
                                    </a>
                                                                        
                                    @if($customer['id'] != '0')
                                    <a title="{{translate('Cancel_request')}}"
                                       class="btn btn-outline-success btn-sm delete square-btn" href="javascript:"
                                       onclick="form_alert('customer-unflag-{{$customer['id']}}','{{translate('want_to_cancel_this_request').'?'}}')">
                                        <i class="tio-clear"></i>
                                    </a>
                                    @endif

                                    @if($customer['id'] != '0')
                                    <a title="{{translate('Delete_user')}}"
                                       class="btn btn-outline-danger btn-sm delete square-btn" href="javascript:"
                                       onclick="form_alert('customer-{{$customer['id']}}','{{translate('want_to_delete_this_customer').'?'}}')">
                                        <i class="tio-delete"></i>
                                    </a>
                                    @endif
                                </div>
                                <form action="{{route('admin.customer.unflag-delete-request',[$customer['id']])}}"
                                        method="post" id="customer-unflag-{{$customer['id']}}">
                                    @csrf
                                </form>
                                <form action="{{route('admin.customer.delete',[$customer['id']])}}"
                                        method="post" id="customer-{{$customer['id']}}">
                                    @csrf @method('delete')
                                </form>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
            <!-- End Table -->

            <div class="table-responsive mt-4">
                <div class="px-4 d-flex justify-content-lg-end">
                    <!-- Pagination -->
                    {!! $customers->links() !!}
                </div>
            </div>

            @if(count($customers)==0)
                <div class="text-center p-4">
                    <img class="mb-3 w-160" src="{{asset('public/assets/back-end')}}/svg/illustrations/sorry.svg"
                         alt="Image Description">
                    <p class="mb-0">{{translate('no_data_to_show')}}</p>
                </div>
        @endif
        <!-- End Footer -->
        </div>
        <!-- End Card -->
    </div>
@endsection

@push('script_2')
    <script>
        $('.customer_status_form').on('submit', function(event){
            event.preventDefault();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            $.ajax({
                url: $(this).attr('action'),
                method: 'POST',
                data: $(this).serialize(),
                success: function (data) {
                    toastr.success("{{translate('status_updated_successfully')}}");
                }
            });
        });
    </script>
@endpush
