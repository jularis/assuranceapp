@extends('pharmacie::layouts.app')
@section('panel')
  
                        
    <div class="row gy-4">
        <div class="col-xxl-3 col-sm-6">
            <div class="card bg--primary overflow-hidden box--shadow2">
            <a href="/users" class="item-link"></a>
        <div class="card-body">
        <div class="row align-items-center">
            <div class="col-4">
                <i class="la las la-users f-size--56 f-size--56 text--white"></i>
            </div>
            <div class="col-8 text-end">
                <span class="text--white text--small">Total Users</span>
                <h2 class="text--white">28</h2>
            </div>
        </div>
    </div>
</div>


        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-3 col-sm-6">
            <div class="card bg--success overflow-hidden box--shadow2">
            <a href="/users/active" class="item-link"></a>
        <div class="card-body">
        <div class="row align-items-center">
            <div class="col-4">
                <i class="la las la-user-check f-size--56 f-size--56 text--white"></i>
            </div>
            <div class="col-8 text-end">
                <span class="text--white text--small">Active Users</span>
                <h2 class="text--white">14</h2>
            </div>
        </div>
    </div>
</div>


        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-3 col-sm-6">
            <div class="card bg--danger overflow-hidden box--shadow2">
            <a href="/users/email-unverified" class="item-link"></a>
        <div class="card-body">
        <div class="row align-items-center">
            <div class="col-4">
                <i class="la lar la-envelope f-size--56 f-size--56 text--white"></i>
            </div>
            <div class="col-8 text-end">
                <span class="text--white text--small">Email Unverified Users</span>
                <h2 class="text--white">14</h2>
            </div>
        </div>
    </div>
</div>


        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-3 col-sm-6">
            <div class="card bg--red overflow-hidden box--shadow2">
            <a href="/users/mobile-unverified" class="item-link"></a>
        <div class="card-body">
        <div class="row align-items-center">
            <div class="col-4">
                <i class="la las la-comment-slash f-size--56 f-size--56 text--white"></i>
            </div>
            <div class="col-8 text-end">
                <span class="text--white text--small">Mobile Unverified Users</span>
                <h2 class="text--white">0</h2>
            </div>
        </div>
    </div>
</div>


        </div><!-- dashboard-w1 end -->
    </div><!-- row end-->

    <div class="row gy-4 mt-2">
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
            <i class="fas fa-hand-holding-usd overlay-icon text--success"></i>
    
    <div class="widget-two__icon b-radius--5   bg--success  ">
        <i class="fas fa-hand-holding-usd"></i>
    </div>

    <div class="widget-two__content">
        <h3>$300.00</h3>
        <p>Total Deposited</p>
    </div>

            <a href="/deposit" class="widget-two__btn btn btn-outline--success">View All</a>
    </div>

        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
            <i class="fas fa-spinner overlay-icon text--warning"></i>
    
    <div class="widget-two__icon b-radius--5   bg--warning  ">
        <i class="fas fa-spinner"></i>
    </div>

    <div class="widget-two__content">
        <h3>2</h3>
        <p>Pending Deposits</p>
    </div>

            <a href="/deposit/pending" class="widget-two__btn btn btn-outline--warning">View All</a>
    </div>

        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
            <i class="fas fa-ban overlay-icon text--warning"></i>
    
    <div class="widget-two__icon b-radius--5   bg--warning  ">
        <i class="fas fa-ban"></i>
    </div>

    <div class="widget-two__content">
        <h3>1</h3>
        <p>Rejected Deposits</p>
    </div>

            <a href="/deposit/rejected" class="widget-two__btn btn btn-outline--warning">View All</a>
    </div>

        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
            <i class="fas fa-percentage overlay-icon text--primary"></i>
    
    <div class="widget-two__icon b-radius--5   bg--primary  ">
        <i class="fas fa-percentage"></i>
    </div>

    <div class="widget-two__content">
        <h3>$14.00</h3>
        <p>Deposited Charge</p>
    </div>

            <a href="/deposit" class="widget-two__btn btn btn-outline--primary">View All</a>
    </div>

        </div><!-- dashboard-w1 end -->
    </div><!-- row end-->

    <div class="row gy-4 mt-2">
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
            <i class="lar la-credit-card overlay-icon text--success"></i>
    
    <div class="widget-two__icon b-radius--5   border border--success text--success  ">
        <i class="lar la-credit-card"></i>
    </div>

    <div class="widget-two__content">
        <h3>$50.00</h3>
        <p>Total Withdrawn</p>
    </div>

            <a href="/withdraw/log" class="widget-two__btn btn btn-outline--success">View All</a>
    </div>

        </div>
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
            <i class="las la-sync overlay-icon text--warning"></i>
    
    <div class="widget-two__icon b-radius--5   border border--warning text--warning  ">
        <i class="las la-sync"></i>
    </div>

    <div class="widget-two__content">
        <h3>0</h3>
        <p>Pending Withdrawals</p>
    </div>

            <a href="/withdraw/pending" class="widget-two__btn btn btn-outline--warning">View All</a>
    </div>

        </div>
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
            <i class="las la-times-circle overlay-icon text--danger"></i>
    
    <div class="widget-two__icon b-radius--5   border border--danger text--danger  ">
        <i class="las la-times-circle"></i>
    </div>

    <div class="widget-two__content">
        <h3>1</h3>
        <p>Rejected Withdrawals</p>
    </div>

            <a href="/withdraw/rejected" class="widget-two__btn btn btn-outline--danger">View All</a>
    </div>

        </div>
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
            <i class="las la-percent overlay-icon text--primary"></i>
    
    <div class="widget-two__icon b-radius--5   border border--primary text--primary  ">
        <i class="las la-percent"></i>
    </div>

    <div class="widget-two__content">
        <h3>$1.00</h3>
        <p>Withdrawal Charge</p>
    </div>

            <a href="/withdraw/log" class="widget-two__btn btn btn-outline--primary">View All</a>
    </div>

        </div>
    </div><!-- row end-->

    <div class="row gy-4 mt-2">
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two style--two box--shadow2 b-radius--5 bg--primary">
    <div class="widget-two__icon b-radius--5 bg--primary">
        <i class="las la-users"></i>
    </div>

    <div class="widget-two__content">
        <h3 class="text-white">xxx</h3>
        <p class="text-white">Demo</p>
    </div>
            <a href="#" class="widget-two__btn">View All</a>
    </div>
        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two style--two box--shadow2 b-radius--5 bg--1">
    <div class="widget-two__icon b-radius--5 bg--1">
        <i class="las la-users"></i>
    </div>

    <div class="widget-two__content">
        <h3 class="text-white">xxx</h3>
        <p class="text-white">Demo</p>
    </div>
            <a href="#" class="widget-two__btn">View All</a>
    </div>
        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two style--two box--shadow2 b-radius--5 bg--14">
    <div class="widget-two__icon b-radius--5 bg--14">
        <i class="las la-users"></i>
    </div>

    <div class="widget-two__content">
        <h3 class="text-white">xxx</h3>
        <p class="text-white">Demo</p>
    </div>
            <a href="#" class="widget-two__btn">View All</a>
    </div>
        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-3 col-sm-6">
            <div class="widget-two style--two box--shadow2 b-radius--5 bg--19">
    <div class="widget-two__icon b-radius--5 bg--19">
        <i class="las la-users"></i>
    </div>

    <div class="widget-two__content">
        <h3 class="text-white">xxx</h3>
        <p class="text-white">Demo</p>
    </div>
            <a href="#" class="widget-two__btn">View All</a>
    </div>
        </div><!-- dashboard-w1 end -->
    </div><!-- row end-->

    <div class="row gy-4 mt-2">
        <div class="col-xxl-2 col-lg-4 col-sm-6">
            <div class="widget-six bg--white p-3 rounded-2 box--shadow2">
    <div class="widget-six__top">
        <i class="las la-users bg--primary text--white b-radius--5"></i>
        <p>Demo</p>
    </div>
    <div class="widget-six__bottom mt-3">
        <h4 class="widget-six__number">xxx</h4>
        <a href="#" class="widget-six__btn"><span class="text--small">View All</span><i class="las la-arrow-right"></i></a>
    </div>
</div>        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-2 col-lg-4 col-sm-6">
            <div class="widget-six bg--white p-3 rounded-2 box--shadow2">
    <div class="widget-six__top">
        <i class="las la-users bg--1 text--white b-radius--5"></i>
        <p>Demo</p>
    </div>
    <div class="widget-six__bottom mt-3">
        <h4 class="widget-six__number">xxx</h4>
        <a href="#" class="widget-six__btn"><span class="text--small">View All</span><i class="las la-arrow-right"></i></a>
    </div>
</div>        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-2 col-lg-4 col-sm-6">
            <div class="widget-six bg--white p-3 rounded-2 box--shadow2">
    <div class="widget-six__top">
        <i class="las la-users bg--2 text--white b-radius--5"></i>
        <p>Demo</p>
    </div>
    <div class="widget-six__bottom mt-3">
        <h4 class="widget-six__number">xxx</h4>
        <a href="#" class="widget-six__btn"><span class="text--small">View All</span><i class="las la-arrow-right"></i></a>
    </div>
</div>        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-2 col-lg-4 col-sm-6">
            <div class="widget-six bg--white p-3 rounded-2 box--shadow2">
    <div class="widget-six__top">
        <i class="las la-users bg--3 text--white b-radius--5"></i>
        <p>Demo</p>
    </div>
    <div class="widget-six__bottom mt-3">
        <h4 class="widget-six__number">xxx</h4>
        <a href="#" class="widget-six__btn"><span class="text--small">View All</span><i class="las la-arrow-right"></i></a>
    </div>
</div>        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-2 col-lg-4 col-sm-6">
            <div class="widget-six bg--white p-3 rounded-2 box--shadow2">
    <div class="widget-six__top">
        <i class="las la-users bg--4 text--white b-radius--5"></i>
        <p>Demo</p>
    </div>
    <div class="widget-six__bottom mt-3">
        <h4 class="widget-six__number">xxx</h4>
        <a href="#" class="widget-six__btn"><span class="text--small">View All</span><i class="las la-arrow-right"></i></a>
    </div>
</div>        </div><!-- dashboard-w1 end -->
        <div class="col-xxl-2 col-lg-4 col-sm-6">
            <div class="widget-six bg--white p-3 rounded-2 box--shadow2">
    <div class="widget-six__top">
        <i class="las la-users bg--5 text--white b-radius--5"></i>
        <p>Demo</p>
    </div>
    <div class="widget-six__bottom mt-3">
        <h4 class="widget-six__number">xxx</h4>
        <a href="#" class="widget-six__btn"><span class="text--small">View All</span><i class="las la-arrow-right"></i></a>
    </div>
</div>        </div><!-- dashboard-w1 end -->
    </div><!-- row end-->

    <div class="row mb-none-30 mt-30">
        <div class="col-xl-6 mb-30">
            <div class="card">
              <div class="card-body" style="position: relative;">
                <h5 class="card-title">Monthly Deposit &amp; Withdraw Report (Last 12 Month)</h5>
                <div id="apex-bar-chart" style="min-height: 465px;"><div id="apexchartsa1keh3em" class="apexcharts-canvas apexchartsa1keh3em apexcharts-theme-light" style="width: 449px; height: 450px;"><svg id="SvgjsSvg1171" width="449" height="450" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><foreignObject x="0" y="0" width="449" height="450"><div class="apexcharts-legend apexcharts-align-center position-bottom" xmlns="http://www.w3.org/1999/xhtml" style="inset: auto 0px 1px; position: absolute;"><div class="apexcharts-legend-series" rel="1" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="background: rgb(0, 143, 251); color: rgb(0, 143, 251); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 2px;"></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="Total%20Deposit" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Total Deposit</span></div><div class="apexcharts-legend-series" rel="2" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="background: rgb(0, 227, 150); color: rgb(0, 227, 150); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 2px;"></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="Total%20Withdraw" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Total Withdraw</span></div></div><style type="text/css">	
    	
      .apexcharts-legend {	
        display: flex;	
        overflow: auto;	
        padding: 0 10px;	
      }	
      .apexcharts-legend.position-bottom, .apexcharts-legend.position-top {	
        flex-wrap: wrap	
      }	
      .apexcharts-legend.position-right, .apexcharts-legend.position-left {	
        flex-direction: column;	
        bottom: 0;	
      }	
      .apexcharts-legend.position-bottom.apexcharts-align-left, .apexcharts-legend.position-top.apexcharts-align-left, .apexcharts-legend.position-right, .apexcharts-legend.position-left {	
        justify-content: flex-start;	
      }	
      .apexcharts-legend.position-bottom.apexcharts-align-center, .apexcharts-legend.position-top.apexcharts-align-center {	
        justify-content: center;  	
      }	
      .apexcharts-legend.position-bottom.apexcharts-align-right, .apexcharts-legend.position-top.apexcharts-align-right {	
        justify-content: flex-end;	
      }	
      .apexcharts-legend-series {	
        cursor: pointer;	
        line-height: normal;	
      }	
      .apexcharts-legend.position-bottom .apexcharts-legend-series, .apexcharts-legend.position-top .apexcharts-legend-series{	
        display: flex;	
        align-items: center;	
      }	
      .apexcharts-legend-text {	
        position: relative;	
        font-size: 14px;	
      }	
      .apexcharts-legend-text *, .apexcharts-legend-marker * {	
        pointer-events: none;	
      }	
      .apexcharts-legend-marker {	
        position: relative;	
        display: inline-block;	
        cursor: pointer;	
        margin-right: 3px;	
        border-style: solid;
      }	
      	
      .apexcharts-legend.apexcharts-align-right .apexcharts-legend-series, .apexcharts-legend.apexcharts-align-left .apexcharts-legend-series{	
        display: inline-block;	
      }	
      .apexcharts-legend-series.apexcharts-no-click {	
        cursor: auto;	
      }	
      .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {	
        display: none !important;	
      }	
      .apexcharts-inactive-legend {	
        opacity: 0.45;	
      }</style></foreignObject><g id="SvgjsG1173" class="apexcharts-inner apexcharts-graphical" transform="translate(52.359375, 40)"><defs id="SvgjsDefs1172"><linearGradient id="SvgjsLinearGradient1178" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1179" stop-opacity="0.4" stop-color="rgba(216,227,240,0.4)" offset="0"></stop><stop id="SvgjsStop1180" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop><stop id="SvgjsStop1181" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop></linearGradient><clipPath id="gridRectMaska1keh3em"><rect id="SvgjsRect1183" width="392.640625" height="356.348" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMaska1keh3em"><rect id="SvgjsRect1184" width="390.640625" height="358.348" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><rect id="SvgjsRect1182" width="48.330078125" height="354.348" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke-dasharray="3" fill="url(#SvgjsLinearGradient1178)" class="apexcharts-xcrosshairs" y2="354.348" filter="none" fill-opacity="0.9"></rect><g id="SvgjsG1195" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG1196" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText1198" font-family="Helvetica, Arial, sans-serif" x="96.66015625" y="383.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1199">February-2023</tspan><title>February-2023</title></text><text id="SvgjsText1201" font-family="Helvetica, Arial, sans-serif" x="289.98046875" y="383.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1202">July-2023</tspan><title>July-2023</title></text></g><line id="SvgjsLine1203" x1="0" y1="355.348" x2="386.640625" y2="355.348" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1"></line></g><g id="SvgjsG1218" class="apexcharts-grid"><g id="SvgjsG1219" class="apexcharts-gridlines-horizontal"></g><g id="SvgjsG1220" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine1221" x1="0" y1="355.348" x2="0" y2="361.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1222" x1="193.3203125" y1="355.348" x2="193.3203125" y2="361.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1223" x1="386.640625" y1="355.348" x2="386.640625" y2="361.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1225" x1="0" y1="354.348" x2="386.640625" y2="354.348" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine1224" x1="0" y1="1" x2="0" y2="354.348" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG1186" class="apexcharts-bar-series apexcharts-plot-series"><g id="SvgjsG1187" class="apexcharts-series" rel="1" seriesName="TotalxDeposit" data:realIndex="0"><path id="SvgjsPath1189" d="M 48.330078125 354.348L 48.330078125 188.25651953125Q 71.4951171875 166.09148046875 94.66015625 188.25651953125L 94.66015625 188.25651953125L 94.66015625 354.348L 94.66015625 354.348z" fill="rgba(0,143,251,1)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaska1keh3em)" pathTo="M 48.330078125 354.348L 48.330078125 188.25651953125Q 71.4951171875 166.09148046875 94.66015625 188.25651953125L 94.66015625 188.25651953125L 94.66015625 354.348L 94.66015625 354.348z" pathFrom="M 48.330078125 354.348L 48.330078125 354.348L 94.66015625 354.348L 94.66015625 354.348L 94.66015625 354.348L 48.330078125 354.348" cy="177.174" cx="240.650390625" j="0" val="100" barHeight="177.174" barWidth="48.330078125"></path><path id="SvgjsPath1190" d="M 241.650390625 354.348L 241.650390625 11.08251953125Q 264.8154296875 -11.08251953125 287.98046875 11.08251953125L 287.98046875 11.08251953125L 287.98046875 354.348L 287.98046875 354.348z" fill="rgba(0,143,251,1)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaska1keh3em)" pathTo="M 241.650390625 354.348L 241.650390625 11.08251953125Q 264.8154296875 -11.08251953125 287.98046875 11.08251953125L 287.98046875 11.08251953125L 287.98046875 354.348L 287.98046875 354.348z" pathFrom="M 241.650390625 354.348L 241.650390625 354.348L 287.98046875 354.348L 287.98046875 354.348L 287.98046875 354.348L 241.650390625 354.348" cy="0" cx="433.970703125" j="1" val="200" barHeight="354.348" barWidth="48.330078125"></path></g><g id="SvgjsG1191" class="apexcharts-series" rel="2" seriesName="TotalxWithdraw" data:realIndex="1"><path id="SvgjsPath1193" d="M 96.66015625 354.348L 96.66015625 354.348Q 119.8251953125 354.348 142.990234375 354.348L 142.990234375 354.348L 142.990234375 354.348L 142.990234375 354.348z" fill="rgba(0,227,150,1)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaska1keh3em)" pathTo="M 96.66015625 354.348L 96.66015625 354.348Q 119.8251953125 354.348 142.990234375 354.348L 142.990234375 354.348L 142.990234375 354.348L 142.990234375 354.348z" pathFrom="M 96.66015625 354.348L 96.66015625 354.348L 142.990234375 354.348L 142.990234375 354.348L 142.990234375 354.348L 96.66015625 354.348" cy="354.348" cx="288.98046875" j="0" val="0" barHeight="0" barWidth="48.330078125"></path><path id="SvgjsPath1194" d="M 289.98046875 354.348L 289.98046875 276.84351953125Q 313.1455078125 254.67848046875002 336.310546875 276.84351953125L 336.310546875 276.84351953125L 336.310546875 354.348L 336.310546875 354.348z" fill="rgba(0,227,150,1)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaska1keh3em)" pathTo="M 289.98046875 354.348L 289.98046875 276.84351953125Q 313.1455078125 254.67848046875002 336.310546875 276.84351953125L 336.310546875 276.84351953125L 336.310546875 354.348L 336.310546875 354.348z" pathFrom="M 289.98046875 354.348L 289.98046875 354.348L 336.310546875 354.348L 336.310546875 354.348L 336.310546875 354.348L 289.98046875 354.348" cy="265.761" cx="482.30078125" j="1" val="50" barHeight="88.587" barWidth="48.330078125"></path><g id="SvgjsG1192" class="apexcharts-datalabels" data:realIndex="1"></g></g><g id="SvgjsG1188" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine1226" x1="0" y1="0" x2="386.640625" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1227" x1="0" y1="0" x2="386.640625" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1228" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG1229" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG1230" class="apexcharts-point-annotations"></g></g><g id="SvgjsG1204" class="apexcharts-yaxis" rel="0" transform="translate(22.359375, 0)"><g id="SvgjsG1205" class="apexcharts-yaxis-texts-g"><text id="SvgjsText1206" font-family="Helvetica, Arial, sans-serif" x="20" y="41.4" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1207">200</tspan></text><text id="SvgjsText1208" font-family="Helvetica, Arial, sans-serif" x="20" y="129.987" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1209">150</tspan></text><text id="SvgjsText1210" font-family="Helvetica, Arial, sans-serif" x="20" y="218.57399999999998" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1211">100</tspan></text><text id="SvgjsText1212" font-family="Helvetica, Arial, sans-serif" x="20" y="307.16099999999994" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1213">50</tspan></text><text id="SvgjsText1214" font-family="Helvetica, Arial, sans-serif" x="20" y="395.74799999999993" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1215">0</tspan></text></g><g id="SvgjsG1216" class="apexcharts-yaxis-title"><text id="SvgjsText1217" font-family="Helvetica, Arial, sans-serif" x="-9.359375" y="217.174" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="900" fill="#7c97bb" class="apexcharts-text apexcharts-yaxis-title-text " style="font-family: Helvetica, Arial, sans-serif;" transform="rotate(-90 -12.703125 212.6739959716797)">$</text></g></g><g id="SvgjsG1174" class="apexcharts-annotations"></g></svg><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 143, 251);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 227, 150);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
              <div class="resize-triggers"><div class="expand-trigger"><div style="width: 482px; height: 556px;"></div></div><div class="contract-trigger"></div></div></div>
            </div>
          </div>
        <div class="col-xl-6 mb-30">
            <div class="card">
              <div class="card-body" style="position: relative;">
                <h5 class="card-title">Transactions Report (Last 30 Days)</h5>
                <div id="apex-line" style="min-height: 465px;"><div id="apexcharts86xy1weh" class="apexcharts-canvas apexcharts86xy1weh apexcharts-theme-light apexcharts-zoomable" style="width: 449px; height: 450px;"><svg id="SvgjsSvg1233" width="449" height="450" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><foreignObject x="0" y="0" width="449" height="450"><div class="apexcharts-legend apexcharts-align-center position-bottom" xmlns="http://www.w3.org/1999/xhtml" style="inset: auto 0px 1px; position: absolute;"><div class="apexcharts-legend-series" rel="1" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="background: rgb(0, 143, 251); color: rgb(0, 143, 251); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="Plus%20Transactions" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Plus Transactions</span></div><div class="apexcharts-legend-series" rel="2" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="background: rgb(0, 227, 150); color: rgb(0, 227, 150); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="Minus%20Transactions" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Minus Transactions</span></div></div><style type="text/css">	
    	
      .apexcharts-legend {	
        display: flex;	
        overflow: auto;	
        padding: 0 10px;	
      }	
      .apexcharts-legend.position-bottom, .apexcharts-legend.position-top {	
        flex-wrap: wrap	
      }	
      .apexcharts-legend.position-right, .apexcharts-legend.position-left {	
        flex-direction: column;	
        bottom: 0;	
      }	
      .apexcharts-legend.position-bottom.apexcharts-align-left, .apexcharts-legend.position-top.apexcharts-align-left, .apexcharts-legend.position-right, .apexcharts-legend.position-left {	
        justify-content: flex-start;	
      }	
      .apexcharts-legend.position-bottom.apexcharts-align-center, .apexcharts-legend.position-top.apexcharts-align-center {	
        justify-content: center;  	
      }	
      .apexcharts-legend.position-bottom.apexcharts-align-right, .apexcharts-legend.position-top.apexcharts-align-right {	
        justify-content: flex-end;	
      }	
      .apexcharts-legend-series {	
        cursor: pointer;	
        line-height: normal;	
      }	
      .apexcharts-legend.position-bottom .apexcharts-legend-series, .apexcharts-legend.position-top .apexcharts-legend-series{	
        display: flex;	
        align-items: center;	
      }	
      .apexcharts-legend-text {	
        position: relative;	
        font-size: 14px;	
      }	
      .apexcharts-legend-text *, .apexcharts-legend-marker * {	
        pointer-events: none;	
      }	
      .apexcharts-legend-marker {	
        position: relative;	
        display: inline-block;	
        cursor: pointer;	
        margin-right: 3px;	
        border-style: solid;
      }	
      	
      .apexcharts-legend.apexcharts-align-right .apexcharts-legend-series, .apexcharts-legend.apexcharts-align-left .apexcharts-legend-series{	
        display: inline-block;	
      }	
      .apexcharts-legend-series.apexcharts-no-click {	
        cursor: auto;	
      }	
      .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {	
        display: none !important;	
      }	
      .apexcharts-inactive-legend {	
        opacity: 0.45;	
      }</style></foreignObject><g id="SvgjsG1235" class="apexcharts-inner apexcharts-graphical" transform="translate(38.359375, 40)"><defs id="SvgjsDefs1234"><clipPath id="gridRectMask86xy1weh"><rect id="SvgjsRect1241" width="381.7861328125" height="358.348" x="-4" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMask86xy1weh"><rect id="SvgjsRect1242" width="377.7861328125" height="358.348" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient1248" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1249" stop-opacity="0.7" stop-color="rgba(0,143,251,0.7)" offset="0"></stop><stop id="SvgjsStop1250" stop-opacity="0.9" stop-color="rgba(255,255,255,0.9)" offset="0.9"></stop><stop id="SvgjsStop1251" stop-opacity="0.9" stop-color="rgba(255,255,255,0.9)" offset="1"></stop></linearGradient><filter id="SvgjsFilter1253" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood1254" flood-color="#000000" flood-opacity="0.08" result="SvgjsFeFlood1254Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite1255" in="SvgjsFeFlood1254Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite1255Out"></feComposite><feOffset id="SvgjsFeOffset1256" dx="0" dy="-2" result="SvgjsFeOffset1256Out" in="SvgjsFeComposite1255Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur1257" stdDeviation="10 " result="SvgjsFeGaussianBlur1257Out" in="SvgjsFeOffset1256Out"></feGaussianBlur><feMerge id="SvgjsFeMerge1258" result="SvgjsFeMerge1258Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode1259" in="SvgjsFeGaussianBlur1257Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode1260" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend1261" in="SourceGraphic" in2="SvgjsFeMerge1258Out" mode="normal" result="SvgjsFeBlend1261Out"></feBlend></filter><filter id="SvgjsFilter1263" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood1264" flood-color="#000000" flood-opacity="0.08" result="SvgjsFeFlood1264Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite1265" in="SvgjsFeFlood1264Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite1265Out"></feComposite><feOffset id="SvgjsFeOffset1266" dx="0" dy="-2" result="SvgjsFeOffset1266Out" in="SvgjsFeComposite1265Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur1267" stdDeviation="10 " result="SvgjsFeGaussianBlur1267Out" in="SvgjsFeOffset1266Out"></feGaussianBlur><feMerge id="SvgjsFeMerge1268" result="SvgjsFeMerge1268Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode1269" in="SvgjsFeGaussianBlur1267Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode1270" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend1271" in="SourceGraphic" in2="SvgjsFeMerge1268Out" mode="normal" result="SvgjsFeBlend1271Out"></feBlend></filter><linearGradient id="SvgjsLinearGradient1275" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1276" stop-opacity="0.7" stop-color="rgba(0,227,150,0.7)" offset="0"></stop><stop id="SvgjsStop1277" stop-opacity="0.9" stop-color="rgba(255,255,255,0.9)" offset="0.9"></stop><stop id="SvgjsStop1278" stop-opacity="0.9" stop-color="rgba(255,255,255,0.9)" offset="1"></stop></linearGradient><filter id="SvgjsFilter1280" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood1281" flood-color="#000000" flood-opacity="0.08" result="SvgjsFeFlood1281Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite1282" in="SvgjsFeFlood1281Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite1282Out"></feComposite><feOffset id="SvgjsFeOffset1283" dx="0" dy="-2" result="SvgjsFeOffset1283Out" in="SvgjsFeComposite1282Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur1284" stdDeviation="10 " result="SvgjsFeGaussianBlur1284Out" in="SvgjsFeOffset1283Out"></feGaussianBlur><feMerge id="SvgjsFeMerge1285" result="SvgjsFeMerge1285Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode1286" in="SvgjsFeGaussianBlur1284Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode1287" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend1288" in="SourceGraphic" in2="SvgjsFeMerge1285Out" mode="normal" result="SvgjsFeBlend1288Out"></feBlend></filter><filter id="SvgjsFilter1290" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood1291" flood-color="#000000" flood-opacity="0.08" result="SvgjsFeFlood1291Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite1292" in="SvgjsFeFlood1291Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite1292Out"></feComposite><feOffset id="SvgjsFeOffset1293" dx="0" dy="-2" result="SvgjsFeOffset1293Out" in="SvgjsFeComposite1292Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur1294" stdDeviation="10 " result="SvgjsFeGaussianBlur1294Out" in="SvgjsFeOffset1293Out"></feGaussianBlur><feMerge id="SvgjsFeMerge1295" result="SvgjsFeMerge1295Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode1296" in="SvgjsFeGaussianBlur1294Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode1297" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend1298" in="SourceGraphic" in2="SvgjsFeMerge1295Out" mode="normal" result="SvgjsFeBlend1298Out"></feBlend></filter></defs><line id="SvgjsLine1240" x1="0" y1="0" x2="0" y2="354.348" stroke="#b6b6b6" stroke-dasharray="3" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="354.348" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG1299" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG1300" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText1302" font-family="Helvetica, Arial, sans-serif" x="0" y="383.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1303">2023-07-12</tspan><title>2023-07-12</title></text><text id="SvgjsText1305" font-family="Helvetica, Arial, sans-serif" x="373.7861328125" y="383.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1306">2023-07-19</tspan><title>2023-07-19</title></text></g><line id="SvgjsLine1307" x1="0" y1="355.348" x2="373.7861328125" y2="355.348" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1"></line></g><g id="SvgjsG1322" class="apexcharts-grid"><g id="SvgjsG1323" class="apexcharts-gridlines-horizontal"></g><g id="SvgjsG1324" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine1325" x1="0" y1="355.348" x2="0" y2="361.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1326" x1="373.7861328125" y1="355.348" x2="373.7861328125" y2="361.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1328" x1="0" y1="354.348" x2="373.7861328125" y2="354.348" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine1327" x1="0" y1="1" x2="0" y2="354.348" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG1244" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG1272" class="apexcharts-series" seriesName="MinusxTransactions" data:longestSeries="true" rel="2" data:realIndex="1"><path id="SvgjsPath1279" d="M 0 354.348L 0 197.25372000000002C 130.82514648437498 197.25372000000002 242.96098632812502 236.23200000000003 373.7861328125 236.23200000000003C 373.7861328125 236.23200000000003 373.7861328125 236.23200000000003 373.7861328125 354.348M 373.7861328125 236.23200000000003z" fill="url(#SvgjsLinearGradient1275)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMask86xy1weh)" filter="url(#SvgjsFilter1280)" pathTo="M 0 354.348L 0 197.25372000000002C 130.82514648437498 197.25372000000002 242.96098632812502 236.23200000000003 373.7861328125 236.23200000000003C 373.7861328125 236.23200000000003 373.7861328125 236.23200000000003 373.7861328125 354.348M 373.7861328125 236.23200000000003z" pathFrom="M -1 354.348L -1 354.348L 373.7861328125 354.348"></path><path id="SvgjsPath1289" d="M 0 197.25372000000002C 130.82514648437498 197.25372000000002 242.96098632812502 236.23200000000003 373.7861328125 236.23200000000003" fill="none" fill-opacity="1" stroke="#00e396" stroke-opacity="1" stroke-linecap="butt" stroke-width="4" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMask86xy1weh)" filter="url(#SvgjsFilter1290)" pathTo="M 0 197.25372000000002C 130.82514648437498 197.25372000000002 242.96098632812502 236.23200000000003 373.7861328125 236.23200000000003" pathFrom="M -1 354.348L -1 354.348L 373.7861328125 354.348"></path><g id="SvgjsG1273" class="apexcharts-series-markers-wrap" data:realIndex="1"><g class="apexcharts-series-markers"><circle id="SvgjsCircle1335" r="0" cx="0" cy="0" class="apexcharts-marker wi2c2xj32 no-pointer-events" stroke="#ffffff" fill="#00e396" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG1245" class="apexcharts-series" seriesName="PlusxTransactions" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath1252" d="M 0 354.348L 0 354.348C 130.82514648437498 354.348 242.96098632812502 59.05799999999999 373.7861328125 59.05799999999999C 373.7861328125 59.05799999999999 373.7861328125 59.05799999999999 373.7861328125 354.348M 373.7861328125 59.05799999999999z" fill="url(#SvgjsLinearGradient1248)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask86xy1weh)" filter="url(#SvgjsFilter1253)" pathTo="M 0 354.348L 0 354.348C 130.82514648437498 354.348 242.96098632812502 59.05799999999999 373.7861328125 59.05799999999999C 373.7861328125 59.05799999999999 373.7861328125 59.05799999999999 373.7861328125 354.348M 373.7861328125 59.05799999999999z" pathFrom="M -1 354.348L -1 354.348L 373.7861328125 354.348"></path><path id="SvgjsPath1262" d="M 0 354.348C 130.82514648437498 354.348 242.96098632812502 59.05799999999999 373.7861328125 59.05799999999999" fill="none" fill-opacity="1" stroke="#008ffb" stroke-opacity="1" stroke-linecap="butt" stroke-width="4" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask86xy1weh)" filter="url(#SvgjsFilter1263)" pathTo="M 0 354.348C 130.82514648437498 354.348 242.96098632812502 59.05799999999999 373.7861328125 59.05799999999999" pathFrom="M -1 354.348L -1 354.348L 373.7861328125 354.348"></path><g id="SvgjsG1246" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle1334" r="0" cx="0" cy="0" class="apexcharts-marker wqk4uullg no-pointer-events" stroke="#ffffff" fill="#008ffb" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g><g id="SvgjsG1247" class="apexcharts-datalabels" data:realIndex="0"></g></g><g id="SvgjsG1274" class="apexcharts-datalabels" data:realIndex="1"></g></g><line id="SvgjsLine1329" x1="0" y1="0" x2="373.7861328125" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1330" x1="0" y1="0" x2="373.7861328125" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1331" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG1332" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG1333" class="apexcharts-point-annotations"></g><rect id="SvgjsRect1336" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect1337" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><rect id="SvgjsRect1239" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG1308" class="apexcharts-yaxis" rel="0" transform="translate(15.359375, 0)"><g id="SvgjsG1309" class="apexcharts-yaxis-texts-g"><text id="SvgjsText1310" font-family="Helvetica, Arial, sans-serif" x="20" y="41.5" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1311">300</tspan></text><text id="SvgjsText1312" font-family="Helvetica, Arial, sans-serif" x="20" y="112.3696" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1313">240</tspan></text><text id="SvgjsText1314" font-family="Helvetica, Arial, sans-serif" x="20" y="183.2392" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1315">180</tspan></text><text id="SvgjsText1316" font-family="Helvetica, Arial, sans-serif" x="20" y="254.10880000000003" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1317">120</tspan></text><text id="SvgjsText1318" font-family="Helvetica, Arial, sans-serif" x="20" y="324.9784" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1319">60</tspan></text><text id="SvgjsText1320" font-family="Helvetica, Arial, sans-serif" x="20" y="395.848" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1321">0</tspan></text></g></g><g id="SvgjsG1236" class="apexcharts-annotations"></g></svg><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 143, 251);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 227, 150);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
              <div class="resize-triggers"><div class="expand-trigger"><div style="width: 482px; height: 531px;"></div></div><div class="contract-trigger"></div></div></div>
            </div>
        </div>
    </div>

    <div class="row mb-none-30 mt-5">
        <div class="col-xl-4 col-lg-6 mb-30">
            <div class="card overflow-hidden">
                <div class="card-body"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                    <h5 class="card-title">Login By Browser (Last 30 days)</h5>
                    <canvas id="userBrowserChart" style="display: block; width: 281px; height: 281px;" width="281" height="281" class="chartjs-render-monitor"></canvas>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6 mb-30">
            <div class="card">
                <div class="card-body"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                    <h5 class="card-title">Login By OS (Last 30 days)</h5>
                    <canvas id="userOsChart" width="281" height="281" style="display: block; width: 281px; height: 281px;" class="chartjs-render-monitor"></canvas>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6 mb-30">
            <div class="card">
                <div class="card-body"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                    <h5 class="card-title">Login By Country (Last 30 days)</h5>
                    <canvas id="userCountryChart" width="281" height="281" style="display: block; width: 281px; height: 281px;" class="chartjs-render-monitor"></canvas>
                </div>
            </div>
        </div>
    </div>
 
@endsection
