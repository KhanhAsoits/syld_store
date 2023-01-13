<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ec-left-sidebar ec-bg-sidebar">
    <div id="sidebar" class="sidebar ec-sidebar-footer">

        <div class="ec-brand">
            <a href="${pageContext.request.contextPath}/admin/dashboard" title="Ekka">
                <img class="ec-brand-icon" src="${pageContext.request.contextPath}/assets/admin/img/logo/Logo.png" alt="" />
                <span class="ec-brand-name text-truncate">Syld </span>
            </a>
        </div>

        <!-- begin sidebar scrollbar -->
        <div class="ec-navigation" data-simplebar>
            <!-- sidebar menu -->
            <ul class="nav sidebar-inner" id="sidebar-menu">
                <!-- Dashboard -->
                <li class="has-sub">
                    <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/dashboard">
                        <i class="mdi mdi-view-dashboard-outline"></i>
                        <span class="nav-text">Tổng quan</span>
                    </a>
                    <hr>
                </li>

                <!-- Vendors -->
                <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)">
                        <i class="mdi mdi-account-group-outline"></i>
                        <span class="nav-text">Quản trị viên</span> <b class="caret"></b>
                    </a>
                    <div class="collapse">
                        <ul class="sub-menu" id="vendors" data-parent="#sidebar-menu">

                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/roles">
                                    <span class="nav-text">Quyền tài khoản</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>

                <!-- Users -->
                <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)">
                        <i class="mdi mdi-account-group"></i>
                        <span class="nav-text">Người dùng - Thẻ bank</span> <b class="caret"></b>
                    </a>
                    <div class="collapse">
                        <ul class="sub-menu" id="users" data-parent="#sidebar-menu">
                            <li>
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/cards">
                                    <span class="nav-text">Thẻ ngân hàng</span>
                                </a>
                            </li>

                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/users">
                                    <span class="nav-text">Danh sách người dùng</span>
                                </a>
                            </li>

                        </ul>
                    </div>
                    <hr>
                </li>

                <!-- Category -->
                <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)">
                        <i class="mdi mdi-dns-outline"></i>
                        <span class="nav-text">Các danh mục</span> <b class="caret"></b>
                    </a>
                    <div class="collapse">
                        <ul class="sub-menu" id="category" data-parent="#sidebar-menu">
                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/categories/create">
                                    <span class="nav-text">Thêm mới danh mục</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/categories">
                                    <span class="nav-text">Danh sách danh mục</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>

                <%--Colors--%>
                <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)">
                        <i class="mdi mdi-dns-outline"></i>
                        <span class="nav-text">Màu sắc & Kích thước</span> <b class="caret"></b>
                    </a>
                    <div class="collapse">
                        <ul class="sub-menu" id="color" data-parent="#sidebar-menu">
                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/colors">
                                    <span class="nav-text">Danh sách màu</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/sizes">
                                    <span class="nav-text">Danh sách kích thước</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>

                <!-- Products -->
                <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)">
                        <i class="mdi mdi-palette-advanced"></i>
                        <span class="nav-text">Sản phẩm</span> <b class="caret"></b>
                    </a>
                    <div class="collapse">
                        <ul class="sub-menu" id="products" data-parent="#sidebar-menu">
                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/products/create">
                                    <span class="nav-text">Thêm mới sản phẩm</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/products">
                                    <span class="nav-text">Danh sách sản phẩm</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/products/gird/all">
                                    <span class="nav-text">Danh sách lưới</span>
                                </a>
                            </li>

                        </ul>
                    </div>
                </li>

                <!-- Orders -->
                <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)">
                        <i class="mdi mdi-cart"></i>
                        <span class="nav-text">Đơn hàng</span> <b class="caret"></b>
                    </a>
                    <div class="collapse">
                        <ul class="sub-menu" id="orders" data-parent="#sidebar-menu">
                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/orders">
                                    <span class="nav-text">Danh sách đơn hàng</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/history">
                                    <span class="nav-text">Lịch sử đơn hàng</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>

                <!-- Reviews -->
                <li>
                    <a class="sidenav-item-link" href="../../../../../../../ekka-admin/review-list.html">
                        <i class="mdi mdi-star-half"></i>
                        <span class="nav-text">Đánh giá</span>
                    </a>
                </li>

                <!-- Brands -->
                <li>
                    <a class="sidenav-item-link" href="${pageContext.request.contextPath}/admin/brands">
                        <i class="mdi mdi-tag-faces"></i>
                        <span class="nav-text">Thương hiệu</span>
                    </a>
                    <hr>
                </li>

                <!-- Icons -->
                <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)">
                        <i class="mdi mdi-diamond-stone"></i>
                        <span class="nav-text">Icons</span> <b class="caret"></b>
                    </a>
                    <div class="collapse">
                        <ul class="sub-menu" id="icons" data-parent="#sidebar-menu">
                            <li class="">
                                <a class="sidenav-item-link" href="../../../../../../../ekka-admin/material-icon.html">
                                    <span class="nav-text">Material Icon</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="sidenav-item-link" href="../../../../../../../ekka-admin/font-awsome-icons.html">
                                    <span class="nav-text">Font Awsome Icon</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="sidenav-item-link" href="../../../../../../../ekka-admin/flag-icon.html">
                                    <span class="nav-text">Flag Icon</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>

                <!-- Other Pages -->
                <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)">
                        <i class="mdi mdi-image-filter-none"></i>
                        <span class="nav-text">Other Pages</span> <b class="caret"></b>
                    </a>
                    <div class="collapse">
                        <ul class="sub-menu" id="otherpages" data-parent="#sidebar-menu">
                            <li class="has-sub">
                                <a href="../../../../../../../ekka-admin/404.html">404 Page</a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
