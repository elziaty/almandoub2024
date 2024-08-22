@extends('layouts.back-end.app')
@section('title', translate('feedback_categories'))
@push('css_or_js')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endpush

@section('content')
    <div class="content container-fluid">
        <!-- Page Title -->
        <div class="mb-3">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                {{translate('feedback_categories')}}
            </h2>
        </div>
        <!-- End Page Title -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0">{{ translate('feedback_categories_form')}}</h5>
                    </div>
                    <div class="card-body">
                        <form style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};" onsubmit="return false" >
                            @csrf
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12 mt-2">
                                        <input type="hidden" id="id">
                                        <label for="title" class="title-color">{{ translate('feedback_categories_title')}}</label>
                                        <input type="text" name="title" class="form-control" id="title"
                                               placeholder="{{translate('enter_feedback_categories_title')}}" required>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="hidden" id="id">
                                    </div>
                                </div>
                            </div>

                            <div class="d-flex gap-10 justify-content-end flex-wrap">
                                <a id="add" class="btn btn--primary px-4">{{ translate('save')}}</a>
                                <a id="update" class="btn btn--primary px-4 d--none">{{ translate('update')}}</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-md-12">
                <div class="card">
                    <div class="px-3 py-4">
                        <h5 class="mb-0 d-flex">{{ translate('feedback_categories_table')}}</h5>
                    </div>
                    <div class="pb-3">
                        <div class="table-responsive">
                            <table class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table w-100" id="dataTable" cellspacing="0"
                                   style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
                                <thead class="thead-light thead-50 text-capitalize">
                                    <tr>
                                        <th>{{ translate('sl')}}</th>
                                        <th>{{ translate('name')}}</th>
                                        <th>{{ translate('edit')}}</th>
                                        <th>{{ translate('delete')}}</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
    <script>
        fetch_feedback_categories();

        function fetch_feedback_categories() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            $.ajax({
                url: "{{route('admin.business-settings.feedback_categories_fetch')}}",
                method: 'GET',
                success: function (data) {

                    if (data.length != 0) {
                        var html = '';
                        for (var count = 0; count < data.length; count++) {
                            html += '<tr>';
                            html += '<td class="column_name" data-column_name="sl" data-id="' + data[count].id + '">' + (count + 1) + '</td>';
                            html += '<td class="column_name" data-column_name="title" data-id="' + data[count].id + '">' + data[count].title + '</td>';

                            // html += '<td><a type="button" class="btn btn--primary btn-xs edit" id="' + data[count].id + '"><i class="fa fa-edit text-white"></i></a> <a type="button" class="btn btn-danger btn-xs delete" id="' + data[count].id + '"><i class="fa fa-trash text-white"></i></a></td></tr>';
                            html += `<td>
                                        <a type="button" class="btn btn-outline--primary btn-xs edit square-btn" id="` + data[count].id + `"><i class="tio-edit"></i></a>  
                                    </td>
                                    <td>
                                        <a type="button" class="btn btn--primary text-nowrap text-capitalize delete"  id="` + data[count].id + `" >
                                                <i class="tio-delete"></i>
                                            </a>
                                    </td>
                            </tr>`;
                        }
                        $('tbody').html(html);
                    }
                }
            });
        }

        $('#add').on('click', function () {
            $('#add').attr("disabled", true);
            var title = $('#title').val();
            if (title == "") {
                toastr.error("{{translate('title_Is_Requeired.')}}");
                return false;
            }
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            $.ajax({
                url: "{{route('admin.business-settings.feedback_categories-store')}}",
                method: 'POST',
                data: {
                    title: title
                },
                success: function (response) {
                    if (response.error == 1) {
                        toastr.error("{{translate('feedback_categories_Already_taken')}}");
                    } else {
                        toastr.success("{{translate('feedback_categories_inserted_Successfully.')}}");
                    }
                    $('#title').val('');
                    fetch_feedback_categories();
                }
            });
        });
        $('#update').on('click', function () {
            $('#update').attr("disabled", true);
            var id = $('#id').val();
            var title = $('#title').val();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            $.ajax({
                url: "{{route('admin.business-settings.feedback_categories-update')}}",
                method: 'POST',
                data: {
                    id: id,
                    title: title,
                },
                success: function (data) {
                    $('#title').val('');

                    toastr.success("{{translate('social_info_updated_successfully.')}}");
                    $('#update').hide();
                    $('#add').show();
                    fetch_feedback_categories();

                }
            });
            $('#save').hide();
        });
        $(document).on('click', '.delete', function () {
            var id = $(this).attr("id");
            if (confirm("{{translate('are_you_sure_delete_this_feedback_categories')}}?")) {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });
                $.ajax({
                    url: "{{route('admin.business-settings.feedback_categories-delete')}}",
                    method: 'POST',
                    data: {id: id},
                    success: function (data) {
                        fetch_feedback_categories();
                        toastr.success("{{translate('feedback_categories-deleted_successfully.')}}");
                    }
                });
            }
        });
        $(document).on('click', '.edit', function () {
            $('#update').show();
            $('#add').hide();
            var id = $(this).attr("id");
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            $.ajax({
                url: "{{route('admin.business-settings.feedback_categories-edit')}}",
                method: 'POST',
                data: {id: id},
                success: function (data) {
                    $(window).scrollTop(0);
                    $('#id').val(data.id);
                    $('#title').val(data.title);
                    fetch_feedback_categories()
                }
            });
        });

        $('.feedback_categories_status_form').on('submit', function(event){
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
