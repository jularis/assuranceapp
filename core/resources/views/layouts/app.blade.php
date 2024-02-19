@extends('layouts.master')
@section('title', __($pageTitle ?? ''))
@section('content')
    <!-- page-wrapper start -->
    <div class="page-wrapper default-version">
        @include('partials.sidenav')
        @include('partials.topnav')

        <div class="body-wrapper">
            <div class="bodywrapper__inner">
                @include('partials.breadcrumb')
                @yield('panel')
            </div><!-- bodywrapper__inner end -->
        </div><!-- body-wrapper end -->
    </div>
@endsection
