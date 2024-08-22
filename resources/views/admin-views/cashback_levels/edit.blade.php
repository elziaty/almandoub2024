@extends('layouts.back-end.app')
@section('title', translate('cashback_level_Edit'))
@push('css_or_js')
    <link href="{{ asset('public/assets/select2/css/select2.min.css')}}" rel="stylesheet">
    <link href="{{ asset('public/assets/back-end/css/custom.css')}}" rel="stylesheet">
@endpush

@section('content')
<div class="content container-fluid">
    <!-- Page Title -->
    <div class="mb-3">
        <h2 class="h1 mb-0 text-capitalize">
            <img src="{{asset('/public/assets/back-end/img/cashback_level_setup.png')}}" class="mb-1 mr-1" alt="">
            {{translate('cashback_level_update')}}
        </h2>
    </div>
    <!-- End Page Title -->

    <!-- Content Row -->
    <div class="row">
        <div class="col-md-12">
            <div class="card">

                <div class="card-body">
                    <form action="{{route('admin.cashback_level.update',[$l['id']])}}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-6  col-lg-4  form-group">
                                <label for="name" class="title-color text-capitalize">{{translate('title')}}</label>
                                <input type="text" name="title" class="form-control" id="title" value="{{$l['title']}}"
                                       placeholder="{{translate('title')}}" required>
                            </div>
                            <div class="col-md-6 col-lg-4 form-group free_delivery">
                                <label for="name" class="title-color text-capitalize">{{translate('percentage')}} <span id="discount_percent"> (%)</span></label>
                                <input type="number" min="0" step=".01" name="percentage" class="form-control" id="discount" value="{{$l['percentage']}}" placeholder="{{translate('ex')}} : 5%" required>
                            </div>
                            <div class="col-md-6 col-lg-4 form-group">
                                <label for="name" class="title-color text-capitalize">{{translate('minimum_purchase')}}</label>
                                <input type="number" min="0" max="1000000" step=".01" name="min_order" class="form-control" id="minimum purchase" value="{{ old('min_order', $l['min_order']) }}"
                                       placeholder="{{translate('minimum_purchase')}}" required>
                            </div>
                            
                            <div class="col-md-6  form-group">
                                <label for="level_desc" class="title-color text-capitalize">{{translate('Description')}}</label>
                                <textarea type="text" name="level_desc" class="form-control" id="level_desc"  placeholder="" required>{{$l['level_desc']}}</textarea>
                            </div>
                        </div>

                        <div class="d-flex align-items-center justify-content-end flex-wrap gap-10">
                            <button type="reset" class="btn btn-secondary px-4">{{translate('reset')}}</button>
                            <button type="submit" class="btn btn--primary px-4">{{translate('Update')}}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('script')
    <script>
        $(document).ready(function() {
            let discount_type = $('#discount_type').val();
            if (discount_type == 'amount') {
                $('#discount_percent').hide();
                $('#max-discount').hide()
            } else if (discount_type == 'percentage') {
                $('#max-discount').show()
            }
            $('#start_date').attr('min',(new Date()).toISOString().split('T')[0]);
            $('#expire_date').attr('min',(new Date()).toISOString().split('T')[0]);

            field_show_hide();
        });

        $("#start_date").on("change", function () {
            $('#expire_date').attr('min',$(this).val());
        });

        $("#expire_date").on("change", function () {
            $('#start_date').attr('max',$(this).val());
        });


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

    <script>
        $('#cashback_level_bearer').on('change', function (){
            let cashback_level_bearer = $('#cashback_level_bearer').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });

        });

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

        $('#cashback_level_type').on('change', function (){
            field_show_hide();
        });

        function field_show_hide(){
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
        }
    </script>
@endpush
