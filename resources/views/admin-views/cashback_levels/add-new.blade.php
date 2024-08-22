@extends('layouts.back-end.app')

@section('title', translate('cashback_level_Add'))

@push('css_or_js')
    <link href="{{ asset('public/assets/select2/css/select2.min.css')}}" rel="stylesheet">
    <link href="{{ asset('public/assets/back-end/css/custom.css')}}" rel="stylesheet">
@endpush

@section('content')
    <div class="content container-fluid">
        <!-- Page Title -->
        <div class="mb-3">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                <img src="{{asset('/public/assets/back-end/img/cashback_level_setup.png')}}" alt="">
                {{translate('cashback_level_setup')}}
            </h2>
        </div>
        <!-- End Page Title -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-sm-12 col-lg-12 mb-3 mb-lg-2">
                <div class="card">
                    <div class="card-body">
                        <form action="{{route('admin.cashback_level.store-level')}}" method="post">
                            @csrf

                            <div class="row">
                                <div class="col-md-6 col-lg-4 form-group">
                                    <label for="name" class="title-color font-weight-medium d-flex">{{translate('cashback_level_title')}}</label>
                                    <input type="text" name="title" class="form-control" value="{{ old('title') }}" id="title"
                                           placeholder="{{translate('title')}}" required>
                                </div>
                                <div class="col-md-6 col-lg-4 form-group">
                                    <label for="level_desc" class="title-color font-weight-medium d-flex">{{translate('cashback_level_desc')}}</label>
                                    <textarea name="level_desc" class="form-control" id="level_desc" rows="1" placeholder="{{translate('level_desc')}}" ></textarea>
                                </div>
                                <div class="col-md-6 col-lg-4 form-group free_delivery">
                                    <label for="percentage" class="title-color font-weight-medium d-flex">{{translate('percentage')}} <span id="percentage"> (%)</span></label>
                                    <input type="number" min="1" max="1000000" name="percentage" value="{{ old('percentage') }}" class="form-control"
                                           id="percentage"
                                           placeholder="{{translate('ex')}} : 5">
                                </div>
                                <div class="col-md-6 col-lg-4 form-group">
                                    <label for="name" class="title-color font-weight-medium d-flex">{{translate('minimum_purchase')}} ($)</label>
                                    <input type="number" min="1"  name="min_order" value="{{ old('min_order') }}" class="form-control"
                                        id="minimum purchase"
                                        placeholder="{{translate('ex')}} : 100">
                                </div>
                            </div>

                            <div class="d-flex align-items-center justify-content-end flex-wrap gap-10">
                                <button type="reset" class="btn btn-secondary px-4">{{translate('reset')}}</button>
                                <button type="submit" class="btn btn--primary px-4">{{translate('submit')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-20">
            <div class="col-md-12">
                <div class="card">
                    <div class="px-3 py-4">
                        <div class="row justify-content-between align-items-center flex-grow-1">
                            <div class="col-sm-4 col-md-6 col-lg-8 mb-2 mb-sm-0">
                                <h5 class="mb-0 text-capitalize d-flex gap-2">
                                    {{translate('cashback_level_list')}}
                                    <span class="badge badge-soft-dark radius-50 fz-12 ml-1">{{ $levels->total() }}</span>
                                </h5>
                            </div>
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
                                               placeholder="{{translate('search_by_Title_or_Description')}}"
                                               value="{{ $search }}" aria-label="Search orders" required>
                                        <button type="submit" class="btn btn--primary">{{translate('search')}}</button>
                                    </div>
                                </form>
                                <!-- End Search -->
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table id="datatable"
                                class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table {{ Session::get('direction') === 'rtl' ? 'text-right' : 'text-left' }}">
                            <thead class="thead-light thead-50 text-capitalize">
                            <tr>
                                <th>{{translate('SL')}}</th>
                                <th>{{translate('title')}}</th>
                                <th>{{translate('min_order')}}</th>
                                <th>{{translate('percentage')}}</th>
                                <th class="text-center">{{translate('action')}}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($levels as $k=>$l)
                                <tr>
                                    <td >{{$levels->firstItem() + $k}}</td>
                                    <td>
                                        <span>{{$l['title'] }}</span>
                                    </td>
                                    <td>
                                        <span>{{ $l['min_order'] }}$</strong></span>
                                    </td>
                                    <td>
                                        <span><strong>{{ $l['percentage'] }}%</strong></span>
                                    </td>
                                    <td>
                                        <div class="d-flex gap-10 justify-content-center">
                                            <button class="btn btn-outline--primary square-btn btn-sm mr-1" onclick="get_details(this)" data-id="{{ $l['id'] }}" data-toggle="modal" data-target="#exampleModalCenter">
                                                <img src="{{asset('/public/assets/back-end/img/eye.svg')}}" class="svg" alt="">
                                            </button>
                                            <a class="btn btn-outlstore-leveline--primary btn-sm edit"
                                            href="{{route('admin.cashback_level.update',[$l['id']])}}"
                                            title="{{ translate('edit')}}"
                                            >
                                                <i class="tio-edit"></i>
                                            </a>
                                            <a class="btn btn-outline-danger btn-sm delete"
                                                href="javascript:"
                                                onclick="form_alert('cashback_level-{{$l['id']}}','{{translate('want_to_delete_this_cashback_level?')}}')"
                                                title="{{translate('delete')}}"
                                                >
                                                <i class="tio-delete"></i>
                                            </a>
                                            <form action="{{route('admin.cashback_level.delete',[$l['id']])}}"
                                                method="post" id="cashback_level-{{$l['id']}}">
                                                @csrf @method('delete')
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div class="modal fade" id="quick-view" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered cashback_level-details" role="document">
                                <div class="modal-content" id="quick-view-modal">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive mt-4">
                        <div class="px-4 d-flex justify-content-lg-end">
                            <!-- Pagination -->
                            {{$levels->links()}}
                        </div>
                    </div>

                    @if(count($levels)==0)
                        <div class="text-center p-4">
                            <img class="mb-3 w-160" src="{{asset('public/assets/back-end')}}/svg/illustrations/sorry.svg"
                                 alt="Image Description">
                            <p class="mb-0">{{translate('no_data_to_show')}}</p>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
<script>

    $(document).ready(function() {
            generateCode();

            $('#discount_percent').hide();
            let discount_type = $('#discount_type').val();
            if (discount_type == 'amount') {
                $('#max-discount').hide()
            } else if (discount_type == 'percentage') {
                $('#max-discount').show()
            }

            $('#start_date').attr('min',(new Date()).toISOString().split('T')[0]);
            $('#expire_date').attr('min',(new Date()).toISOString().split('T')[0]);
        });

        $("#start_date").on("change", function () {
            $('#expire_date').attr('min',$(this).val());
        });

        $("#expire_date").on("change", function () {
            $('#start_date').attr('max',$(this).val());
        });

        function get_details(t){
            let id = $(t).data('id')

            $.ajax({
                type: 'GET',
                url: '{{route('admin.cashback_level.quick-view-details')}}',
                data: {
                    id: id
                },
                beforeSend: function () {
                    $('#loading').fadeIn();
                },
                success: function (data) {
                    $('#loading').fadeOut();
                    $('#quick-view').modal('show');
                    $('#quick-view-modal').empty().html(data.view);
                }
            });
        }

        function checkDiscountType(val) {
            if (val == 'amount') {
                $('#max-discount').hide()
            } else if (val == 'percentage') {
                $('#max-discount').show()
            }
        }

        function  generateCode(){
            let code = Math.random().toString(36).substring(2,12);
            $('#code').val(code)
        }


</script>

    <script src="{{asset('public/assets/back-end')}}/js/select2.min.js"></script>
    <script>
        $(".js-example-theme-single").select2({
            theme: "classic"
        });

        $(".js-example-responsive").select2({
            width: 'resolve'
        });
    </script>

    <!-- Page level plugins -->
    <script src="{{asset('public/assets/back-end')}}/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="{{asset('public/assets/back-end')}}/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="{{asset('public/assets/back-end')}}/js/demo/datatables-demo.js"></script>

<script>
    $('#discount_type').on('change', function (){
        let type = $('#discount_type').val();
        if(type === 'amount'){
            $('#discount').attr({
                'placeholder': 'Ex: 500',
                "max":"1000000"
            });
            $('#discount_percent').hide();
        }else if(type === 'percentage'){
            $('#discount').attr({
                "max":"100",
                "placeholder":"Ex: 10%"
            });
            $('#discount_percent').show();
        }
    });
    $('#cashback_level_bearer').on('change', function (){
        let cashback_level_bearer = $('#cashback_level_bearer').val();
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            }
        });
    });

    $('#cashback_level_type').on('change', function (){
        let discount_type = $('#discount_type').val();
        let type = $('#cashback_level_type').val();

        if(type === 'free_delivery'){
            if (discount_type === 'amount') {
                $('.first_order').show();
                $('.free_delivery').hide();
            } else if (discount_type === 'percentage') {
                $('.first_order').show();
                $('.free_delivery').hide();
            }
        }else if(type === 'first_order'){
            if (discount_type === 'amount') {
                $('.free_delivery').show();
                $('.first_order').hide();
                $('#max-discount').hide()
            } else if (discount_type === 'percentage') {
                $('.free_delivery').show();
                $('.first_order').hide();
                $('#max-discount').show()
            }
        }else{
            if (discount_type === 'amount') {
                $('.first_order').show();
                $('.free_delivery').show();
                $('#max-discount').hide()
            } else if (discount_type === 'percentage') {
                $('.first_order').show();
                $('.free_delivery').show();
                $('#max-discount').show()
            }
        }
    });

    $('.cashback_level_status_form').on('submit', function(event){
            event.preventDefault();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            $.ajax({
                url: $(this).attr('action'),
                method: 'GET',
                data: $(this).serialize(),
                success: function (data) {
                    toastr.success(data.message);
                }
            });
        });
</script>
@endpush
