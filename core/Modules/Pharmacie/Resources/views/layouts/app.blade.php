@extends('pharmacie::layouts.master')
@section('title', __($pageTitle ?? ''))
@section('content')
    <!-- page-wrapper start -->
    <div class="page-wrapper default-version">
        @include('pharmacie::partials.sidenav')
        @include('pharmacie::partials.topnav')

        <div class="body-wrapper">
            <div class="bodywrapper__inner">
                @include('pharmacie::partials.breadcrumb')
                @yield('panel')
            </div><!-- bodywrapper__inner end -->
        </div><!-- body-wrapper end -->
    </div>
@endsection
