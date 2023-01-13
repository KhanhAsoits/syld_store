<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .bottom-information {
        width: 100% !important;
    }

    div.dataTables_wrapper div.dataTables_info, div.dataTables_wrapper div.dataTables_paginate {
        padding: 0 16px !important;
    }
</style>
<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Order</h1>
                <p class="breadcrumbs"><span><a href="home">Trang chủ</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>Đơn hàng</p>
            </div>

        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-body">
                        <div class="table-responsive" style="overflow-x: hidden">
                            <table id="responsive-data-table" class="table"
                                   style="width:100%">
                                <thead>
                                <tr>
                                    <th>Mã đơn hàng</th>
                                    <th>Trạng thái</th>
                                    <th>Thời gian taoh đơn</th>
                                    <th>Thời gian chỉnh sửa</th>
                                    <th>Tổng tiền</th>
                                    <th>Thao tác</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="order" items="${orders}">
                                    <tr>
                                        <td class="order_name">${order.order_name}</td>
                                        <td style="color: ${order.getColor(order.order_state)}">${order.orderStateString()}</td>
                                        <td class="order_name">${order.create_at}</td>
                                        <td class="order_name">${order.update_at}</td>
                                        <td>${order.order_amount}00 VND</td>
                                        <td>
                                            <div class="btn-group mb-1">
                                                <button type="button"
                                                        class="btn btn-outline-success"><a
                                                        href="${pageContext.request.contextPath}/admin/orders/detail/${order.id}">Chi tiết</a>
                                                </button>
                                                <button type="button"
                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false" data-display="static">
                                                    <span class="sr-only">Chi tiết</span>
                                                </button>

                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/orders/change_state?id=${order.id}&status=2">Xác nhận</a>
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/orders/change_state?id=${order.id}&status=3">Đã nhận hàng</a>
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/orders/change_state?id=${order.id}&status=4">Giao thành công</a>
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/orders/change_state?id=${order.id}&status=-1">Hủy đơn hàng
                                                        </a>
                                                </div>
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
        </div>
    </div> <!-- End Content -->
</div>
<!-- End Content Wrapper -->

