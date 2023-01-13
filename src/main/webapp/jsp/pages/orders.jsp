<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .orders .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
        background: gray;
        margin-inside: 0 50px !important;
        color: whitesmoke !important;
    }

    .orders .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link {
        color: black !important;

        font-weight: 700 !important;
    }
</style>
<div class="cart-main-area section-padding--lg bg--white my-5 orders">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 ol-lg-12">
                <div class="table-content wnro__table table-responsive">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation"  style="margin:0 40px">
                            <p>Tất cả đơn hàng</p>
                            <button class="nav-link active" id="orders-tab" data-bs-toggle="tab"
                                    data-bs-target="#orders" type="button" role="tab" aria-controls="home"
                                    aria-selected="true"><img style="width: 60px; height: 60px" src="${pageContext.request.contextPath}/assets/images/icons/list.png" />
                            </button>
                        </li>
                        <li class="nav-item" role="presentation"  style="margin:0 20px">
                            <p>Đơn hàng chưa thanh toán xong</p>
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                                    data-bs-target="#unpaid_order"
                                    type="button" role="tab" aria-controls="profile" aria-selected="false"><img style="width: 60px; height: 60px" src="${pageContext.request.contextPath}/assets/images/icons/unpaid-money.png" />
                            </button>
                        </li>
                        <li class="nav-item" role="presentation"  style="margin:0 20px">
                            <p>Đơn hàng chờ xác nhận</p>
                            <button class="nav-link " id="order-wait-tab" data-bs-toggle="tab"
                                    data-bs-target="#waiting" type="button" role="tab" aria-controls="home"
                                    aria-selected="true"><img style="width: 60px; height: 60px" src="${pageContext.request.contextPath}/assets/images/icons/confirmation.png" />
                            </button>
                        </li>
                        <li class="nav-item" role="presentation"  style="margin:0 20px">
                            <p>Đơn hàng đang giao</p>
                            <button class="nav-link" id="acac-tab" data-bs-toggle="tab"
                                    data-bs-target="#shipping_order"
                                    type="button" role="tab" aria-controls="contact" aria-selected="false"><img style="width: 60px; height: 60px" src="${pageContext.request.contextPath}/assets/images/icons/shiping.png" />
                            </button>
                        </li>
                        <li class="nav-item" role="presentation"  style="margin:0 20px">
                            <p>Đã giao thành công</p>
                            <button class="nav-link" id="contact-tab" data-bs-toggle="tab"
                                    data-bs-target="#success_order"
                                    type="button" role="tab" aria-controls="contact" aria-selected="false"><img style="width: 60px; height: 60px;" src="${pageContext.request.contextPath}/assets/images/icons/success.png" />
                            </button>
                        </li>

                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <%--page orders--%>
                        <div class="tab-pane fade show active my-2" id="orders" role="tabpanel"
                             aria-labelledby="home-tab">
                            <c:forEach var="order" items="${orders.getContent()}" varStatus="loop">
                                <div data-bs-toggle="collapse" data-bs-target="#order-detail${loop.index}"
                                     style="cursor: pointer"
                                     class="my-2 flex-wrap d-flex justify-content-between align-items-center">
                                    <table id="responsive-data-table" class="table">
                                        <thead>
                                        <tr style="background: lightgray">
                                            <th>Mã đơn hàng</th>
                                            <th>Tổng số tiền</th>
                                            <th>Thời gian tạo đơn</th>
                                            <th>Trạng thái</th>
                                        </tr>
                                        </thead>
                                        <tr>
                                            <td class="order_name">${order.order_name}</td>
                                            <td class="order_name">${order.order_amount}00 VND</td>
                                            <td class="order_name">${order.create_at}</td>
                                            <td clss="order_name">${order.orderStateString()}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="collapse" id="order-detail${loop.index}">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>Ảnh</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Số lượng</th>
                                            <th>Đơn giá</th>
                                        </tr>
                                        </thead>
                                        <c:forEach var="product" items="${order.productCart}">
                                            <tr>
                                                <td>
                                                    <c:forEach varStatus="loop_in" var="image"
                                                               items="${product.product.thumbnails}">
                                                        <c:if test="${loop_in.index == 0}">
                                                            <img height="50" style="object-fit: cover"
                                                                 src="${pageContext.request.contextPath}${image.path}">
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>${product.product.product_name}</td>
                                                <td>${product.quantity}</td>
                                                <td>${product.product.product_price}00 VND</td>

                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="tab-pane fade" id="unpaid_order" role="tabpanel" aria-labelledby="profile-tab">
                            <c:forEach var="order" items="${orders.getContent()}" varStatus="loop">
                                <c:if test="${order.order_state == 0}">
                                    <div data-bs-toggle="collapse" data-bs-target="#order-detail${loop.index}"
                                         style="cursor: pointer"
                                         class="my-2 flex-wrap d-flex justify-content-between align-items-center">
                                        <table id="responsive-data-table-1" class="table">
                                            <thead>
                                            <tr style="background: lightgray">
                                                <th>Mã đơn hàng</th>
                                                <th>Tổng tiền</th>
                                                <th>Thời gian tạo đơn</th>
                                                <th>Thanh toán tiếp</th>
                                            </tr>
                                            </thead>
                                            <tr>
                                                <td class="order_name">${order.order_name}</td>
                                                <td class="order_name">${order.order_amount}00 VND</td>
                                                <td class="order_name">${order.create_at}</td>
                                                <td clss="order_name"><a
                                                        href="${pageContext.request.contextPath}/order/paid/${order.id}">${order.orderStateString()}</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="collapse" id="order-detail${loop.index}">
                                        <div class="d-flex flex-wrap justify-content-between align-items-center my-2">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>Ảnh</th>
                                                    <th>Tên sản phẩm</th>
                                                    <th>Số lượng</th>
                                                    <th>Đơn giá</th>
                                                </tr>
                                                </thead>
                                                <c:forEach var="product" items="${order.productCart}">
                                                    <tr>
                                                        <td>
                                                            <c:forEach varStatus="loop_in" var="image"
                                                                       items="${product.product.thumbnails}">
                                                                <c:if test="${loop_in.index == 0}">
                                                                    <img height="50" style="object-fit: cover"
                                                                         src="${pageContext.request.contextPath}${image.path}">
                                                                </c:if>
                                                            </c:forEach>
                                                        </td>
                                                        <td>${product.product.product_name}</td>
                                                        <td>${product.quantity}</td>
                                                        <td>${product.product.product_price}00 VND</td>
                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </div>

                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                        <div class="tab-pane fade" id="waiting" role="tabpanel" aria-labelledby="profile-tab">
                            <c:forEach var="order" items="${orders.getContent()}" varStatus="loop">
                                <c:if test="${order.order_state == 1}">
                                    <div data-bs-toggle="collapse" data-bs-target="#order-detail${loop.index}"
                                         style="cursor: pointer"
                                         class="my-2 flex-wrap d-flex justify-content-between align-items-center">
                                        <table id="responsive-data-table-2" class="table">
                                            <thead>
                                            <tr style="background: lightgray">
                                                <th>Mã đơn hàng</th>
                                                <th>Tổng tiền</th>
                                                <th>Thời gian tạo đơn hàng</th>
                                                <th>Trạng thái</th>
                                            </tr>
                                            </thead>
                                            <tr>
                                                <td class="order_name">${order.order_name}</td>
                                                <td class="order_name">${order.order_amount}00 VND</td>
                                                <td class="order_name">${order.create_at}</td>
                                                <td clss="order_name">${order.orderStateString()}</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="collapse" id="order-detail${loop.index}">
                                        <div class="d-flex flex-wrap justify-content-between align-items-center my-2">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>Ảnh</th>
                                                    <th>Tên sản phẩm</th>
                                                    <th>Số lượng</th>
                                                    <th>Đơn giá</th>
                                                </tr>
                                                </thead>
                                                <c:forEach var="product" items="${order.productCart}">
                                                    <tr>
                                                        <td>
                                                            <c:forEach varStatus="loop_in" var="image"
                                                                       items="${product.product.thumbnails}">
                                                                <c:if test="${loop_in.index == 0}">
                                                                    <img height="50" style="object-fit: cover"
                                                                         src="${pageContext.request.contextPath}${image.path}">
                                                                </c:if>
                                                            </c:forEach>
                                                        </td>
                                                        <td>${product.product.product_name}</td>
                                                        <td>${product.quantity}</td>
                                                        <td>${product.product.product_price}00 VND</td>
                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                        <div class="tab-pane fade" id="success_order" role="tabpanel" aria-labelledby="contact-tab">
                            <c:forEach var="order" items="${orders.getContent()}" varStatus="loop">
                                <c:if test="${order.order_state == 4}">
                                    <div data-bs-toggle="collapse" data-bs-target="#order-detail${loop.index}"
                                         style="cursor: pointer"
                                         class="my-2 flex-wrap d-flex justify-content-between align-items-center">
                                        <table id="responsive-data-table-3" class="table">
                                            <thead>
                                            <tr style="background: lightgray">
                                                <th>Mã đơn hàng</th>
                                                <th>Tổng tiền</th>
                                                <th>Thời gian tạo</th>
                                                <th>Trạng thái</th>
                                            </tr>
                                            </thead>
                                            <tr>
                                                <td class="order_name">${order.order_name}</td>
                                                <td class="order_name">${order.order_amount}00 VND</td>
                                                <td class="order_name">${order.create_at}</td>
                                                <td clss="order_name">${order.orderStateString()}</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="collapse" id="order-detail${loop.index}">
                                        <div class="d-flex flex-wrap justify-content-between align-items-center my-2">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>Ảnh</th>
                                                    <th>Tên sản phẩm</th>
                                                    <th>Số lượng</th>
                                                    <th>Đơn giá</th>
                                                </tr>
                                                <c:forEach var="product" items="${order.productCart}">
                                                <tr>
                                                    <td>
                                                        <c:forEach varStatus="loop_in" var="image"
                                                                   items="${product.product.thumbnails}">
                                                            <c:if test="${loop_in.index == 0}">
                                                                <img height="50" style="object-fit: cover"
                                                                     src="${pageContext.request.contextPath}${image.path}">
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>${product.product.product_name}</td>
                                                    <td>${product.quantity}</td>
                                                    <td>${product.product.product_price}00 VND</td>
                                                </tr>
                                                </c:forEach>
                                            </table>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                        <div class="tab-pane fade" id="shipping_order" role="tabpanel"
                             aria-labelledby="contact-tab">
                            <c:forEach var="order" items="${orders.getContent()}" varStatus="loop">
                                <c:if test="${order.order_state == 2}">
                                    <div data-bs-toggle="collapse" data-bs-target="#order-detail${loop.index}"
                                         style="cursor: pointer"
                                         class="my-2 flex-wrap d-flex justify-content-between align-items-center">
                                        <table id="responsive-data-table-4" class="table">
                                            <thead>
                                            <tr style="background: lightgray">
                                                <th>Mã đơn hàng</th>
                                                <th>Tổng tiền</th>
                                                <th>Thời gian tạo đơn hàng</th>
                                                <th>Trạng thái</th>
                                            </tr>
                                            </thead>
                                            <tr>
                                                <td class="order_name">${order.order_name}</td>
                                                <td class="order_name">${order.order_amount}00 VND</td>
                                                <td class="order_name">${order.create_at}</td>
                                                <td clss="order_name">${order.orderStateString()}</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="collapse" id="order-detail${loop.index}">
                                        </thead>
                                        <div class="d-flex flex-wrap justify-content-between align-items-center my-2">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>Ảnh</th>
                                                    <th>Tên sản phẩm</th>
                                                    <th>Số lượng</th>
                                                    <th>Đơn giá</th>
                                                </tr>
                                                <c:forEach var="product" items="${order.productCart}">
                                                <tr>
                                                    <td>
                                                        <c:forEach varStatus="loop_in" var="image"
                                                                   items="${product.product.thumbnails}">
                                                            <c:if test="${loop_in.index == 0}">
                                                                <img height="50" style="object-fit: cover"
                                                                     src="${pageContext.request.contextPath}${image.path}">
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>${product.product.product_name}</td>
                                                    <td>${product.quantity}</td>
                                                    <td>${product.product.product_price}00 VND</td>
                                                </tr>
                                                </c:forEach>
                                            </table>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
