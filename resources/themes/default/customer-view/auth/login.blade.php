@extends('layouts.front-end.app')
@section('title', translate('login'))
@push('css_or_js')
    <style>
        .password-toggle-btn .custom-control-input:checked ~ .password-toggle-indicator {
            color: {{$web_config['primary_color']}};
        }
    </style>
@endpush
@section('content')
    <div class="container py-4 py-lg-5 my-4"
         style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
        <div class="mx-auto __max-w-620">
            <div class="card border-0 box-shadow">
                <div class="card-body">
                    <h2 class="h4 mb-1">{{ translate('sign_in')}}</h2>
                    <form class="needs-validation mt-2" autocomplete="off" action="{{route('customer.auth.login')}}"
                            method="post" id="form-id">
                        @csrf
                        <div class="form-group">
                            <label for="si-email">{{ translate('email_address') }}
                                / {{ translate('phone')}}</label>
                            <input class="form-control" type="text" name="user_id" id="si-email"
                                    style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};"
                                    value="{{old('user_id')}}"
                                    placeholder="{{ translate('enter_email_address_or_phone_number') }}"
                                    required>
                            <div
                                class="invalid-feedback">{{ translate('please_provide_valid_email_or_phone_number') }}
                                .
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="si-password">{{ translate('password') }}</label>
                            <div class="password-toggle">
                                <input class="form-control" name="password" type="password" id="si-password"
                                        style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};"
                                        required>
                                <label class="password-toggle-btn">
                                    <input class="custom-control-input" type="checkbox"><i
                                        class="czi-eye password-toggle-indicator"></i><span
                                        class="sr-only">{{ translate('show_password') }} </span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group d-flex flex-wrap justify-content-between">

                            <div class="form-group">
                                <input type="checkbox"
                                        class="{{Session::get('direction') === "rtl" ? 'ml-1' : 'mr-1'}}"
                                        name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                <label class="" for="remember">{{ translate('remember_me') }}</label>
                            </div>
                            <a class="font-size-sm" href="{{route('customer.auth.recover-password')}}">
                                {{ translate('forgot_password') }}?
                            </a>
                        </div>

                        <button class="btn btn--primary btn-block btn-shadow"
                                type="submit">{{ translate('sign_in') }}</button>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-12 d-flex flex-wrap justify-content-around justify-content-md-between align-items-center __gap-15" style="direction: {{ Session::get('direction') }}">
                            <div class="{{Session::get('direction') === "rtl" ? '' : 'ml-2'}}">
                                <h6 class="m-0">{{  translate('no_account_Sign_up_now') }}</h6>
                            </div>
                            <div class="{{Session::get('direction') === "rtl" ? 'ml-2' : ''}}">
                                <a class="btn btn-outline-primary"
                                    href="{{route('customer.auth.sign-up')}}">
                                    <i class="fa fa-user-circle"></i> {{ translate('sign_up') }}
                                </a>
                            </div>
                        </div>
                        @foreach (\App\CPU\Helpers::get_business_settings('social_login') as $socialLoginService)
                            @if (isset($socialLoginService) && $socialLoginService['status']==true)
                                <div class="col-sm-6 text-center mt-3">
                                    <a class="btn btn-outline-primary w-100" href="{{route('customer.auth.service-login', $socialLoginService['login_medium'])}}">
                                        <i class="czi-{{ $socialLoginService['login_medium'] }} mr-2 ml-n1"></i>{{ translate('sign_in_with_'.$socialLoginService['login_medium']) }}
                                    </a>
                                </div>
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')

    {{-- recaptcha scripts start --}}
    @if(isset($recaptcha) && $recaptcha['status'] == 1)
        <script type="text/javascript">
            var onloadCallback = function () {
                grecaptcha.render('recaptcha_element', {
                    'sitekey': '{{ \App\CPU\Helpers::get_business_settings('recaptcha')['site_key'] }}'
                });
            };
        </script>
        <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async
                defer></script>
        <script>
            $("#form-id").on('submit', function (e) {
                var response = grecaptcha.getResponse();

                if (response.length === 0) {
                    e.preventDefault();
                    toastr.error("{{ translate('please_check_the_recaptcha') }}");
                }
            });
        </script>
    @else
        <script type="text/javascript">
            function re_captcha() {
                $url = "{{ URL('/customer/auth/code/captcha') }}";
                $url = $url + "/" + Math.random()+'?captcha_session_id=default_recaptcha_id_customer_login';
                document.getElementById('customer_login_recaptcha_id').src = $url;
                console.log('url: '+ $url);
            }
        </script>
    @endif
    {{-- recaptcha scripts end --}}
@endpush
