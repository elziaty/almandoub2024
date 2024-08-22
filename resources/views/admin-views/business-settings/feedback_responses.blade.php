@extends('layouts.back-end.app')
@section('title', translate('feedback_responses'))
@push('css_or_js')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endpush

@section('content')
    <div class="content container-fluid">
        <!-- Page Title -->
        <div class="mb-3">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                {{translate('feedback_responses')}}
            </h2>
        </div>
        <!-- End Page Title -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0">{{ translate('feedback_responses_form')}}</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12 mt-2">
                                    <label for="category" class="category-color">{{ translate('feedback_responses_category')}}</label>
                                    <input type="text" name="category" class="form-control" id="category"
                                             readonly>
                                </div>
                                <div class="col-md-12 mt-2">
                                    <label for="title" class="title-color">{{ translate('feedback_responses_title')}}</label>
                                    <input type="text" name="title" class="form-control" id="title"
                                             readonly>
                                </div>
                                <div class="col-md-12 mt-2">
                                    <label for="description" class="description-color">{{ translate('feedback_responses_description')}}</label>
                                    <input type="text" name="description" class="form-control" id="description"
                                             readonly>
                                </div>
                                <div class="col-md-12">
                                    <input type="hidden" id="id">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-md-12">
                <div class="card">
                    <div class="px-3 py-4">
                        <h5 class="mb-0 d-flex">{{ translate('feedback_responses_table')}}</h5>
                    </div>
                    <div class="pb-3">
                        <div class="table-responsive">
                            <table class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table w-100" id="dataTable" cellspacing="0"
                                   style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
                                <thead class="thead-light thead-50 text-capitalize">
                                    <tr>
                                        <th>{{ translate('sl')}}</th>
                                        <th>{{ translate('title')}}</th>
                                        <th>{{ translate('category')}}</th>
                                        <th>{{ translate('action')}}</th>
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
        fetch_feedback_responses();

        function fetch_feedback_responses() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            $.ajax({
                url: "{{route('admin.business-settings.feedback_responses_fetch')}}",
                method: 'GET',
                success: function (data) {

                    if (data.length != 0) {
                        var html = '';
                        for (var count = 0; count < data.length; count++) {
                            html += '<tr>';
                            html += '<td class="column_name" data-column_name="sl" data-id="' + data[count].id + '">' + (count + 1) + '</td>';
                            html += '<td class="column_name" data-column_name="category" data-id="' + data[count].id + '">' + data[count].category + '</td>';
                            html += '<td class="column_name" data-column_name="title" data-id="' + data[count].id + '">' + data[count].title + '</td>';
                            html += `<td>
                                        <a type="button" class="btn btn-outline--primary btn-xs show square-btn" id="` + data[count].id + `"><i class="tio-visible"></i></a>
                                    </td>
                            </tr>`;
                        }
                        $('tbody').html(html);
                    }
                }
            });
        }

        $(document).on('click', '.show', function () {
            var id = $(this).attr("id");
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            $.ajax({
                url: "{{route('admin.business-settings.feedback_responses_show')}}",
                method: 'GET',
                data: {id: id},
                success: function (data) {
                    $(window).scrollTop(0);
                    $('#id').val(data.id);
                    $('#category').val(data.category);
                    $('#title').val(data.title);
                    $('#description').val(data.description);
                    fetch_feedback_responses()
                }
            });
        });


    </script>
@endpush
