<div class="sidebar bg--dark">
    <button class="res-sidebar-close-btn"><i class="las la-times"></i></button>
    <div class="sidebar__inner">
        <div class="sidebar__logo">
            <a href="{{ route('dashboard') }}" class="sidebar__main-logo"><img
                    src="{{ getImage(getFilePath('logoIcon') . '/logo.png') }}" alt="@lang('image')"></a>
        </div>
        <div class="sidebar__menu-wrapper" id="sidebar__menuWrapper">
            <ul class="sidebar__menu">
                <li class="sidebar-menu-item {{ menuActive('dashboard') }}">
                    <a href="{{ route('dashboard') }}" class="nav-link ">
                        <i class="menu-icon las la-home"></i>
                        <span class="menu-title">@lang('Dashboard')</span>
                    </a>
                </li>
                <li class="sidebar-menu-item {{ menuActive('branch.index') }}">
                    <a href="{{ route('branch.index') }}" class="nav-link ">
                        <i class="menu-icon las la-university"></i>
                        <span class="menu-title">@lang('Branch List')</span>
                    </a>
                </li>
                <li class="sidebar-menu-item {{ menuActive('staff*') }}">
                    <a href="{{ route('index') }}" class="nav-link ">
                        <i class="menu-icon las la-user-friends"></i>
                        <span class="menu-title">@lang('Manager Staff')</span>
                    </a>
                </li>

                <li class="sidebar-menu-item sidebar-dropdown">
                    <a href="javascript:void(0)" class="{{ menuActive('courier*', 3) }}">
                        <i class="menu-icon las la-university"></i>
                        <span class="menu-title">@lang('Manage Courier') </span>
                    </a>
                    <div class="sidebar-submenu {{ menuActive('courier*', 2) }} ">
                        <ul>

                            <li class="sidebar-menu-item {{ menuActive('courier.sentQueue') }}">
                                <a href="{{ route('courier.sentQueue') }}" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">@lang('Sent In Queue')</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item {{ menuActive('courier.dispatch') }}">
                                <a href="{{ route('courier.dispatch') }}" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">@lang('Dispatched')</span>
                                </a>
                            </li>

                            <li class="sidebar-menu-item {{ menuActive('courier.upcoming') }}">
                                <a href="{{ route('courier.upcoming') }}" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">@lang('Upcoming')</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item {{ menuActive('courier.deliveryInQueue') }}">
                                <a href="{{ route('courier.deliveryInQueue') }}" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">@lang('Delivery In Queue')</span>
                                </a>
                            </li>

                            <li class="sidebar-menu-item {{ menuActive('courier.delivered') }}">
                                <a href="{{ route('courier.delivered') }}" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">@lang('Delivered')</span>
                                </a>
                            </li>

                            <li class="sidebar-menu-item {{ menuActive('courier.sent') }}">
                                <a href="{{ route('courier.sent') }}" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">@lang('Sent All Courier')</span>
                                </a>
                            </li>

                            <li class="sidebar-menu-item {{ menuActive('courier.index') }}">
                                <a href="{{ route('courier.index') }}" class="nav-link">
                                    <i class="menu-icon las la-dot-circle"></i>
                                    <span class="menu-title">@lang('All')</span>
                                </a>
                            </li>


                        </ul>
                    </div>
                </li>
                <li class="sidebar-menu-item  {{ menuActive('branch.income') }}">
                    <a href="{{ route('branch.income') }}" class="nav-link">
                        <i class="menu-icon las la-wallet"></i>
                        <span class="menu-title">@lang('Branch Income')</span>
                    </a>
                </li>
                <li class="sidebar-menu-item  {{ menuActive('ticket*') }}">
                    <a href="{{ route('ticket.index') }}" class="nav-link">
                        <i class="menu-icon las la-ticket-alt"></i>
                        <span class="menu-title">@lang('Support Ticket')</span>
                    </a>
                </li>
            </ul>
            <div class="text-center mb-3 text-uppercase">
                <span class="text--primary">{{ __($general->site_name) }}</span>
                <span class="text--success">@lang('V'){{ systemDetails()['version'] }} </span>
            </div>
        </div>


        <div class="sidebar__menu-wrapper" id="sidebar__menuWrapper">
            <div class="text-center mb-3 text-uppercase">
                <span class="text--primary">{{ __($general->site_name) }}</span>
                <span class="text--success">@lang('V'){{ systemDetails()['version'] }} </span>
            </div>
        </div>
    </div>
</div>
<!-- sidebar end -->

@push('script')
    <script>
        if ($('li').hasClass('active')) {
            $('#sidebar__menuWrapper').animate({
                scrollTop: eval($(".active").offset().top - 320)
            }, 500);
        }
    </script>
@endpush
