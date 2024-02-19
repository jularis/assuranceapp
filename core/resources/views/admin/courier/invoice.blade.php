@extends('admin.layouts.app')
@section('panel')
    <div class="card">
        <div class="card-body">
            <div id="printInvoice">
                <div class="content-header">
                    <h3>
                        @lang('Invoice Number') :
                        <small>#{{ $courierInfo->invoice_id }}</small>
                        <br>
                        @lang('Date'):
                        {{ showDateTime($courierInfo->created_at) }}
                        <br>
                        @lang('Estimate Delivery Date') :
                        {{ showDateTime($courierInfo->estimate_date, 'd M Y') }}

                    </h3>
                </div>

                <div class="invoice">
                    <div class="d-flex justify-content-between mt-3">
                        <div class="text-center">
                            @php
                                echo '<img src="data:image/png;base64,' . DNS1D::getBarcodePNG($courierInfo->code, 'C128') . '" alt="barcode" />';
                            @endphp
                            <br>
                            <span>{{ $courierInfo->code }}</span>
                        </div>
                        <div>
                            <b>@lang('Order ID') : {{ $courierInfo->code }}</b><br>
                            <b>@lang('Payment Status'):</b>
                            @if (@$courierPayment->status == Status::PAID)
                                <span class="badge badge--success">@lang('Paid')</span>
                            @else
                                <span class="badge badge--danger">@lang('Unpaid')</span>
                            @endif
                            <br>
                            <b>@lang('Sender At Branch'):</b> {{ __($courierInfo->senderBranch->name) }}<br>
                            <b>@lang('Received At Branch'):</b> {{ __($courierInfo->receiverBranch->name) }}

                        </div>
                    </div>
                    <hr>
                    <div class=" invoice-info d-flex justify-content-between">
                        <div>
                            @lang('From')
                            <address>
                                <strong>{{ __($courierInfo->sender_name) }}</strong><br>
                                {{ __($courierInfo->sender_address) }}<br>
                                @lang('Phone'): {{ $courierInfo->sender_phone }}<br>
                                @lang('Email'): {{ $courierInfo->sender_email }}
                            </address>
                        </div>
                        <div>
                            @lang('To')
                            <address>
                                <strong>{{ __($courierInfo->receiver_name) }}</strong><br>
                                {{ __($courierInfo->receiver_address) }}<br>
                                @lang('Phone'): {{ $courierInfo->receiver_phone }}<br>
                                @lang('Email'): {{ $courierInfo->receiver_email }}
                            </address>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>@lang('Courier Type')</th>
                                        <th>@lang('Sending Time')</th>
                                        <th>@lang('Price')</th>
                                        <th>@lang('Qty')</th>
                                        <th>@lang('Subtotal')</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($courierInfo->products as $courierProductInfo)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ __($courierProductInfo->type->name) }}</td>
                                            <td>{{ showDateTime($courierProductInfo->created_at) }}</td>
                                            <td>{{ $general->cur_sym }}{{ showAmount($courierProductInfo->fee) }}</td>
                                            <td>{{ $courierProductInfo->qty }} {{ __(@$courierProductInfo->type->unit->name) }}</td>
                                            <td>{{ $general->cur_sym }}{{ showAmount($courierProductInfo->fee) }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="row mt-30 mb-none-30">
                        <div class="col-lg-12 mb-30">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <th>@lang('Subtotal'):</th>
                                        <td>{{ $general->cur_sym }}{{ showAmount(@$courierInfo->payment->amount) }}
                                        </td>
                                        </tr>
                                        <tr>
                                            <th>@lang('Discount'):</th>
                                            <td>{{ $general->cur_sym }}{{ showAmount(@$courierInfo->payment->discount) }}
                                                <small class="text--danger">
                                                    ({{ getAmount($courierInfo->payment->percentage) }}%)
                                                </small>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>@lang('Total'):</th>
                                            <td>{{ $general->cur_sym }}{{ showAmount(@$courierInfo->payment->final_amount) }}
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <hr>
                </div>
            </div>
            <div class="row no-print">
                <div class="col-sm-12">
                    <div class="float-sm-end">
                        <button class="btn btn-outline--primary printInvoice"><i
                                class="las la-download"></i>@lang('Print')
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('breadcrumb-plugins')
    <x-back route="{{ route('admin.courier.info.index') }}" />
@endpush

@push('script')
    <script>
        (function($) {
            "use strict";
            $('.printInvoice').click(function() {
                $("#printInvoice").printThis();
            });
        })(jQuery)
    </script>
@endpush
