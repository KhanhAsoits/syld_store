<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .bottom-information {
        width: 100% !important;
    }

    div.dataTables_wrapper div.dataTables_info, div.dataTables_wrapper div.dataTables_paginate {
        padding: 0 16px!important;
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
                <a href="${pageContext.request.contextPath}/admin/orders" class="btn btn-primary"> Active List Order</a>
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
                                    <th>Create order</th>
                                    <th>Update order</th>
                                    <th>Amount</th>
                                    <th>State</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="order" items="${order}">
                                    <tr>
                                        <td>${order.order_name}</td>
                                        <td>${order.create_at}</td>
                                        <td>${order.update_at}</td>
                                        <td>${order.order_amount}</td>
                                        <td style="color: ${order.order_state?'blue'||'blue'||'yellow'||'green'||'gray':'red'}">${order.order_state?"Dang thanh toan"||"Chua xac nhan"||"Dang giao hang"||"Da nhan hang"||"Thanh cong":"Huy don"}</td>
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

