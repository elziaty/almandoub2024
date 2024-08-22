<button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <i class="tio-clear"></i>
</button>
<div class="coupon__details">
    <div class="coupon__details-left">
        <div class="text-center">
            <h6 class="title" id="title">{{ $level->title }}</h6>
            <div class="text-capitalize">
                <span>{{translate(str_replace('_',' ',$level->level_desc))}}</span>
            </div>
        </div>
        <div class="coupon-info">
            <div class="coupon-info-item">
                <span>{{translate('minimum_purchase')}} :</span>
                <strong id="min_order">{{\App\CPU\BackEndHelper::set_symbol(\App\CPU\BackEndHelper::usd_to_currency($level->min_order))}}</strong>
            </div>
        </div>
    </div>
    <div class="coupon__details-right">
        <div class="coupon">
            @if($level->coupon_type == 'free_delivery')
                <img src="{{ asset('public/assets/back-end/img/free-delivery.png') }}" alt="Free delivery" width="100">
            @else
                <div class="d-flex">
                    <h4 id="discount">
                        {{$level->percentage.'%'}}
                    </h4>
                </div>

                <span>{{translate('Cashback')}}</span>
            @endif
        </div>
    </div>
</div>
