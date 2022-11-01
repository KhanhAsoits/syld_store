<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <p class="breadcrumbs"><span><a href="home">Home</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>Order</p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/orders/history" class="btn btn-primary"> History
                    Order</a>
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
                                    <th>Name</th>
                                    <th>State</th>
                                    <th>Create order</th>
                                    <th>Update order</th>
                                    <th>Total</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="order" items="${orders}">
                                    <tr>
                                        <td class="order_name">${order.order_name}</td>
                                        <td style="color: ${order.getColor(order.order_state)}">${order.orderStateString()}</td>
                                        <td class="order_name">${order.create_at}</td>
                                        <td class="order_name">${order.update_at}</td>
                                        <td>${order.order_amount}</td>
                                        <td>
                                            <div class="btn-group mb-1">
                                                <button type="button"
                                                        class="btn btn-outline-success"><a
                                                        href="${pageContext.request.contextPath}/admin/orders/detail/${order.id}">Info</a>
                                                </button>
                                                <button type="button"
                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false" data-display="static">
                                                    <span class="sr-only">Info</span>
                                                </button>

                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/orders/change_state?id=${order.id}&status=2">Confirm</a>
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/orders/change_state?id=${order.id}&status=3">Da
                                                        Nhan Hang</a>
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/orders/change_state?id=${order.id}&status=4">Thanh
                                                        Cong</a>
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/orders/change_state?id=${order.id}&status=-1">Huy
                                                        Don</a>
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

