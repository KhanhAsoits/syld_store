<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- CONTENT WRAPPER -->
<div class="ec-content-wrapper">
    <div class="content">
        <!-- Top Statistics -->
        <div class="row">
            <div class="col-xl-3 col-sm-6 p-b-15 lbl-card">
                <div class="card card-mini dash-card card-1">
                    <div class="card-body">
                        <h2 class="mb-1">${data.user_count}</h2>
                        <p>Người dùng</p>
                        <span class="mdi mdi-account-arrow-left"></span>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 p-b-15 lbl-card">
                <div class="card card-mini dash-card card-2">
                    <div class="card-body">
                        <h2 class="mb-1">${data.order_count}</h2>
                        <p>Tổng số đơn</p>
                        <span class="mdi mdi-account-clock"></span>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 p-b-15 lbl-card">
                <div class="card card-mini dash-card card-3">
                    <div class="card-body">
                        <h2 class="mb-1">${data.product_count}</h2>
                        <p>Sản phẩm</p>
                        <span class="mdi mdi-package-variant"></span>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 p-b-15 lbl-card">
                <div class="card card-mini dash-card card-4">
                    <div class="card-body">
                        <h2 class="mb-1">${data.daily_income}00 VND</h2>
                        <p>Doanh số trong tháng</p>
                        <span class="mdi mdi-currency-usd"></span>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-8 col-md-12 p-b-15">
                <!-- Sales Graph -->
                <div id="user-acquisition" class="card card-default">
                    <div class="card-header">
                        <h2>Báo cáo bán hàng</h2>
                    </div>
                    <div class="card-body">
                        <ul class="nav nav-tabs nav-style-border justify-content-between justify-content-lg-start border-bottom"
                            role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-bs-toggle="tab" href="#todays" role="tab"
                                   aria-selected="true">Trong ngày</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#monthly" role="tab"
                                   aria-selected="false">Trong tháng </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#yearly" role="tab"
                                   aria-selected="false">Trong năm</a>
                            </li>
                        </ul>
                        <div class="tab-content pt-4" id="salesReport">
                            <div class="tab-pane fade show active" id="source-medium" role="tabpanel">
                                <div class="mb-6" style="max-height:247px">
                                    <canvas id="acquisition" class="chartjs2"></canvas>
                                    <div id="acqLegend" class="customLegend mb-2"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-4 col-md-12 p-b-15">
                <!-- Doughnut Chart -->
                <div class="card card-default">
                    <div class="card-header justify-content-center">
                        <h2>Tổng quan về các đơn hàng</h2>
                    </div>
                    <div class="card-body">
                        <canvas id="doChart"></canvas>
                    </div>
                    <a href="#" class="pb-5 d-block text-center text-muted"><i
                            class="mdi mdi-download mr-2"></i> Tải xuống báo cáo đơn hàng</a>
                    <div class="card-footer d-flex flex-wrap bg-white p-0">
                        <div class="col-6">
                            <div class="p-20">
                                <ul class="d-flex flex-column justify-content-between">
                                    <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2"
                                                        style="color: #4c84ff"></i>Đơn hàng đã hoàn thành</li>
                                    <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2"
                                                        style="color: #80e1c1 "></i>Đơn hàng chưa thanh toán</li>
                                    <li><i class="mdi mdi-checkbox-blank-circle-outline mr-2"
                                           style="color: #ff7b7b "></i>Đơn hàng trả về</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-6 border-left">
                            <div class="p-20">
                                <ul class="d-flex flex-column justify-content-between">
                                    <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2"
                                                        style="color: #8061ef"></i>Đơn hàng chờ xác nhận</li>
                                    <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2"
                                                        style="color: #ffa128"></i>Đơn hàng hủy</li>
                                    <li><i class="mdi mdi-checkbox-blank-circle-outline mr-2"
                                           style="color: #7be6ff"></i>Đơn hàng lỗi </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-8 col-md-12 p-b-15">
                <!-- User activity statistics -->
                <div class="card card-default" id="user-activity">
                    <div class="no-gutters">
                        <div>
                            <div class="card-header justify-content-between">
                                <h2>Hoạt động của người dùng</h2>
                                <div class="date-range-report ">
                                    <span></span>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="tab-content" id="userActivityContent">
                                    <div class="tab-pane fade show active" id="user" role="tabpanel">
                                        <canvas id="activity" class="chartjs"></canvas>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer d-flex flex-wrap bg-white border-top">
                                <a href="#" class="text-uppercase py-3">Chi tiết </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-12 p-b-15">
                <div class="card card-default">
                    <div class="card-header flex-column align-items-start">
                        <h2>Báo cáo người dùng hiện tại</h2>
                    </div>
                    <div class="card-body">
                        <canvas id="currentUser" class="chartjs"></canvas>
                    </div>
                    <div class="card-footer d-flex flex-wrap bg-white border-top">
                        <a href="#" class="text-uppercase py-3">Chi tiết tổng <quan class=""></quan></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-8 col-12 p-b-15">
                <!-- World Chart -->

            </div>
            <div class="col-xl-4 col-12 p-b-15">
                <!-- Top Sell Table -->

            </div>
        </div>

        <div class="row">
            <div class="col-12 p-b-15">
                <!-- Recent Order Table -->
                <div class="card card-table-border-none card-default recent-orders" id="recent-orders">
                    <div class="card-header justify-content-between">
                        <h2>Những đơn hàng gần đây.</h2>
                        <div class="date-range-report">
                            <span></span>
                        </div>
                    </div>
                    <div class="card-body pt-0 pb-5">
                        <table class="table card-table table-responsive table-responsive-large"
                               style="width:100%">
                            <thead>
                            <tr>
                                <th>Tên sản phẩm</th>
                                <th class="d-none d-lg-table-cell">Số lượng</th>
                                <th class="d-none d-lg-table-cell">Thời gian</th>
                                <th class="d-none d-lg-table-cell">Chi phí đơn hàng</th>
                                <th>Trạng thái</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="order" items="${data.recent_order}">
                                <tr>
                                    <td>
                                        <a class="text-dark" > ${order.productNameJoin()}</a>
                                    </td>
                                    <td class="d-none d-lg-table-cell">${order.getProductQuantity()}</td>
                                    <td class="d-none d-lg-table-cell">${order.create_at}</td>
                                    <td class="d-none d-lg-table-cell">${order.order_amount}00 VND</td>
                                    <td>
                                        <span class="badge badge-success">${order.order_state}</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="dropdown show d-inline-block widget-dropdown">
                                            <a class="dropdown-toggle icon-burger-mini" href="#"
                                               role="button" id="dropdown-recent-order1"
                                               data-bs-toggle="dropdown" aria-haspopup="true"
                                               aria-expanded="false" data-display="static"></a>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li class="dropdown-item">
                                                    <a href="#">Xem </a>
                                                </li>
                                                <li class="dropdown-item">
                                                    <a href="#">Xóa </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-5">
                <!-- New Customers -->
                <div class="card ec-cust-card card-table-border-none card-default">
                    <div class="card-header justify-content-between ">
                        <h2>Những khách hàng mới</h2>
                        <div>
                            <button class="text-black-50 mr-2 font-size-20">
                                <i class="mdi mdi-cached"></i>
                            </button>
                            <div class="dropdown show d-inline-block widget-dropdown">
                                <a class="dropdown-toggle icon-burger-mini" href="#" role="button"
                                   id="dropdown-customar" data-bs-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false" data-display="static">
                                </a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item"><a href="#">Thêm khách hàng mới</a></li>
                                    <li class="dropdown-item"><a href="#">Danh sách khách hàng mới</a></li>
                                    <li class="dropdown-item"><a href="#">Hỗ trợ</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body pt-0 pb-15px">
                        <table class="table ">
                            <tbody>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="media-image mr-3 rounded-circle">
                                            <a href="profile.html"><img
                                                    class="profile-img rounded-circle w-45"
                                                    src="assets/img/user/u1.jpg"
                                                    alt="customer image"></a>
                                        </div>
                                        <div class="media-body align-self-center">
                                            <a href="profile.html">
                                                <h6 class="mt-0 text-dark font-weight-medium">Selena
                                                    Wagner</h6>
                                            </a>
                                            <small>@selena.oi</small>
                                        </div>
                                    </div>
                                </td>
                                <td>2 Orders</td>
                                <td class="text-dark d-none d-md-block">$150</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="media-image mr-3 rounded-circle">
                                            <a href="profile.html"><img
                                                    class="profile-img rounded-circle w-45"
                                                    src="assets/img/user/u2.jpg"
                                                    alt="customer image"></a>
                                        </div>
                                        <div class="media-body align-self-center">
                                            <a href="profile.html">
                                                <h6 class="mt-0 text-dark font-weight-medium">Walter
                                                    Reuter</h6>
                                            </a>
                                            <small>@walter.me</small>
                                        </div>
                                    </div>
                                </td>
                                <td>5 Orders</td>
                                <td class="text-dark d-none d-md-block">$200</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="media-image mr-3 rounded-circle">
                                            <a href="profile.html"><img
                                                    class="profile-img rounded-circle w-45"
                                                    src="assets/img/user/u3.jpg"
                                                    alt="customer image"></a>
                                        </div>
                                        <div class="media-body align-self-center">
                                            <a href="profile.html">
                                                <h6 class="mt-0 text-dark font-weight-medium">Larissa
                                                    Gebhardt</h6>
                                            </a>
                                            <small>@larissa.gb</small>
                                        </div>
                                    </div>
                                </td>
                                <td>1 Order</td>
                                <td class="text-dark d-none d-md-block">$50</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="media-image mr-3 rounded-circle">
                                            <a href="profile.html"><img
                                                    class="profile-img rounded-circle w-45"
                                                    src="assets/img/user/u4.jpg"
                                                    alt="customer image"></a>
                                        </div>
                                        <div class="media-body align-self-center">
                                            <a href="profile.html">
                                                <h6 class="mt-0 text-dark font-weight-medium">Albrecht
                                                    Straub</h6>
                                            </a>
                                            <small>@albrech.as</small>
                                        </div>
                                    </div>
                                </td>
                                <td>2 Orders</td>
                                <td class="text-dark d-none d-md-block">$100</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="media-image mr-3 rounded-circle">
                                            <a href="profile.html"><img
                                                    class="profile-img rounded-circle w-45"
                                                    src="assets/img/user/u5.jpg"
                                                    alt="customer image"></a>
                                        </div>
                                        <div class="media-body align-self-center">
                                            <a href="profile.html">
                                                <h6 class="mt-0 text-dark font-weight-medium">Leopold
                                                    Ebert</h6>
                                            </a>
                                            <small>@leopold.et</small>
                                        </div>
                                    </div>
                                </td>
                                <td>1 Order</td>
                                <td class="text-dark d-none d-md-block">$60</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="media-image mr-3 rounded-circle">
                                            <a href="profile.html"><img
                                                    class="profile-img rounded-circle w-45"
                                                    src="assets/img/user/u3.jpg"
                                                    alt="customer image"></a>
                                        </div>
                                        <div class="media-body align-self-center">
                                            <a href="profile.html">
                                                <h6 class="mt-0 text-dark font-weight-medium">Larissa
                                                    Gebhardt</h6>
                                            </a>
                                            <small>@larissa.gb</small>
                                        </div>
                                    </div>
                                </td>
                                <td>1 Order</td>
                                <td class="text-dark d-none d-md-block">$50</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-xl-7">
                <!-- Top Products -->
                <div class="card card-default ec-card-top-prod">
                    <div class="card-header justify-content-between">
                        <h2>Những sản phẩm hàng đầu.</h2>
                        <div>
                            <button class="text-black-50 mr-2 font-size-20"><i
                                    class="mdi mdi-cached"></i></button>
                            <div class="dropdown show d-inline-block widget-dropdown">
                                <a class="dropdown-toggle icon-burger-mini" href="#" role="button"
                                   id="dropdown-product" data-bs-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false" data-display="static">
                                </a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item"><a href="#">Update Data</a></li>
                                    <li class="dropdown-item"><a href="#">Detailed Log</a></li>
                                    <li class="dropdown-item"><a href="#">Statistics</a></li>
                                    <li class="dropdown-item"><a href="#">Clear Data</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body mt-10px mb-10px py-0">
                        <div class="row media d-flex pt-15px pb-15px">
                            <div
                                    class="col-lg-3 col-md-3 col-2 media-image align-self-center rounded">
                                <a href="#"><img src="assets/img/products/p1.jpg" alt="customer image"></a>
                            </div>
                            <div class="col-lg-9 col-md-9 col-10 media-body align-self-center ec-pos">
                                <a href="#">
                                    <h6 class="mb-10px text-dark font-weight-medium">Baby cotton shoes</h6>
                                </a>
                                <p class="float-md-right sale"><span class="mr-2">58</span>Sales</p>
                                <p class="d-none d-md-block">Statement belting with double-turnlock hardware
                                    adds “swagger” to a simple.</p>
                                <p class="mb-0 ec-price">
                                    <span class="text-dark">$520</span>
                                    <del>$580</del>
                                </p>
                            </div>
                        </div>
                        <div class="row media d-flex pt-15px pb-15px">
                            <div
                                    class="col-lg-3 col-md-3 col-2 media-image align-self-center rounded">
                                <a href="#"><img src="assets/img/products/p2.jpg" alt="customer image"></a>
                            </div>
                            <div class="col-lg-9 col-md-9 col-10 media-body align-self-center ec-pos">
                                <a href="#">
                                    <h6 class="mb-10px text-dark font-weight-medium">Hoodies for men</h6>
                                </a>
                                <p class="float-md-right sale"><span class="mr-2">20</span>Sales</p>
                                <p class="d-none d-md-block">Statement belting with double-turnlock hardware
                                    adds “swagger” to a simple.</p>
                                <p class="mb-0 ec-price">
                                    <span class="text-dark">$250</span>
                                    <del>$300</del>
                                </p>
                            </div>
                        </div>
                        <div class="row media d-flex pt-15px pb-15px">
                            <div
                                    class="col-lg-3 col-md-3 col-2 media-image align-self-center rounded">
                                <a href="#"><img src="assets/img/products/p3.jpg" alt="customer image"></a>
                            </div>
                            <div class="col-lg-9 col-md-9 col-10 media-body align-self-center ec-pos">
                                <a href="#">
                                    <h6 class="mb-10px text-dark font-weight-medium">Long slive t-shirt</h6>
                                </a>
                                <p class="float-md-right sale"><span class="mr-2">10</span>Sales</p>
                                <p class="d-none d-md-block">Statement belting with double-turnlock hardware
                                    adds “swagger” to a simple.</p>
                                <p class="mb-0 ec-price">
                                    <span class="text-dark">$480</span>
                                    <del>$654</del>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Content -->
</div> <!-- End Content Wrapper -->

<!-- Footer -->