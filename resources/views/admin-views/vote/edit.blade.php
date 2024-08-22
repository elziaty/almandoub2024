@extends('layouts.back-end.app')

@section('title', translate('vote'))

@push('css_or_js')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endpush

@section('content')
    <div class="content container-fluid">
        <!-- Page Title -->
        <div class="d-flex justify-content-between mb-3">
            <div>
                <h2 class="h1 mb-1 text-capitalize d-flex align-items-center gap-2">
                    <img width="20" src="{{asset('/public/assets/back-end/img/vote.png')}}" alt="">
                    {{translate('vote_update_form')}}
                </h2>
            </div>
            <div>
                <a class="btn btn--primary text-white" href="{{ route('admin.vote.list') }}">
                    <i class="tio-chevron-left"></i> {{ translate('back') }}</a>
            </div>
        </div>
        <!-- End Page Title -->

        <!-- Content Row -->
        <div class="row" style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <form action="{{route('admin.vote.update',[$vote['id']])}}" method="post" enctype="multipart/form-data"
                              class="vote_form">
                            @csrf
                            @method('put')
                            <div class="row g-3">
                                <div class="col-md-12">
                                    <input type="hidden" id="id" name="id">
                                    <div class="form-group">
                                        <label for="name"
                                               class="title-color text-capitalize">{{translate('vote_question')}}</label>
                                        <input type="text" name="vote_question" class="form-control" id="vote_question" required placeholder="{{ translate('Enter_vote_question') }}"
                                                  value="{{ $vote['question'] }}">
                                    </div>
                                    <label for="name" class="title-color text-capitalize">{{translate('vote_answers')}}</label>
                                    <div id="new_answers">
                                        @foreach($vote->answers as $answer)
                                            <div class="row mt-3" id="data-{{$answer['id']}}">
                                                <div class="col-md-10">
                                                    <input type="text" name="update_vote_answer[{{$answer['id']}}]" class="form-control" required placeholder="{{ translate('Enter_vote_answer') }}" value="{{ $answer['answer'] }}"
                                                    >
                                                </div>
                                                <div class="col-md-2 d-flex gap-2 align-items-center">
                                                        <div class="d-flex align-items-center ">
                                                            <button type="button" class="btn btn--primary text-nowrap text-capitalize delete" data-placement="top" title="Delete" data-modal-target="#deleteModal" data-url="{{route('admin.vote.answer.delete',[$answer['id']])}}"
                                                            data-id="{{$answer['id']}}"
                                                            >
                                                            <i class="tio-delete"></i>
                                                            {{ translate('delete')}}
                                                            </button>
                                                        </div>
                                                    @if($answer['answer'])
                                                        <div class="d-flex align-items-center ">
                                                            <span class="badge badge-pill badge-primary my-3">{{ $answer->userAnswers->count() }} {{translate('votes')}}</span>
                                                        </div>
                                                    @endif
                                                </div>
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button type="button" class="btn btn--primary text-nowrap text-capitalize" id="add_answer">
                                        <i class="tio-add"></i>
                                        {{ translate('add_vote_answer')}}
                                </div>
                                <div class="col-12 d-flex justify-content-end flex-wrap gap-10">
                                    <button class="btn btn-secondary cancel px-4" type="reset">{{ translate('reset')}}</button>
                                    <button id="add" type="submit"
                                            class="btn btn--primary px-4">{{ translate('save')}}</button>
                                    <button id="update"
                                       class="btn btn--primary d--none text-white">{{ translate('update')}}</button>
                                </div>
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
        $(document).on('ready', function () {
            theme_wise_ration();
        });

        function theme_wise_ration(){
            let vote_type = $('#vote_type_select').val();
            let theme = '{{ theme_root_path() }}';
            let theme_ratio = {!! json_encode(THEME_RATIO) !!};
            let get_ratio= theme_ratio[theme][vote_type];

            $('#theme_ratio').text(get_ratio);
        }

     

    </script>

    <script>

        $(document).on('click', '.delete', function () {
            var id = $(this).data('id');
            console.log(id);
            Swal.fire({
                title: "{{translate('are_you_sure_delete_this_vote')}}?",
                text: "{{translate('you_will_not_be_able_to_revert_this')}}!",
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: '{{translate("yes_delete_it")}}!',
                cancelButtonText: '{{ translate("cancel") }}',
                type: 'warning',
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                        }
                    });
                    $.ajax({
                        url: "{{route('admin.vote.answer.delete')}}",
                        method: 'POST',
                        data: {id: id},
                        success: function (response) {
                            toastr.success('{{translate("vote_deleted_successfully")}}');
                            $('#data-' + id).remove();
                        }
                    });
                }
            })
        });
    </script>

    <!-- New Added JS - Start -->
    <script>
        $('#add_answer').on('click',function(){
            var default_answer = `<div class="row mt-3">
                                            <div class="col-md-10">
                                                <input type="text" name="vote_answer[]" class="form-control" required placeholder="{{ translate('Enter_vote_answer') }}">
                                            </div>
                                            <div class="col-md-2">
                                                <button type="button" class="btn btn--primary text-nowrap text-capitalize" >
                                                    <i class="tio-delete"></i>
                                                    {{ translate('delete')}}
                                                </button>
                                            </div>
                                        </div>`;
            $('#new_answers').append(default_answer);
        });
    </script>
    <!-- New Added JS - End -->

@endpush
