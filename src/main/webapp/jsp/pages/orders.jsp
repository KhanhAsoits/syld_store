<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .orders .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
        background: #ffac00;
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
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="orders-tab" data-bs-toggle="tab"
                                    data-bs-target="#orders" type="button" role="tab" aria-controls="home"
                                    aria-selected="true">Orders
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link " id="order-wait-tab" data-bs-toggle="tab"
                                    data-bs-target="#waiting" type="button" role="tab" aria-controls="home"
                                    aria-selected="true">Confirming Orders
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                                    data-bs-target="#unpaid_order"
                                    type="button" role="tab" aria-controls="profile" aria-selected="false">Unpaid
                                Orders
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab" data-bs-toggle="tab"
                                    data-bs-target="#success_order"
                                    type="button" role="tab" aria-controls="contact" aria-selected="false">Success
                                Orders
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="acac-tab" data-bs-toggle="tab"
                                    data-bs-target="#shipping_order"
                                    type="button" role="tab" aria-controls="contact" aria-selected="false">Shipping
                                Orders
                            </button>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active my-2" id="orders" role="tabpanel"
                             aria-labelledby="home-tab">
                            <c:forEach var="order" items="${orders.getContent()}" varStatus="loop">
                                <div data-bs-toggle="collapse" data-bs-target="#order-detail${loop.index}"
                                     style="cursor: pointer"
                                     class="my-2 flex-wrap d-flex justify-content-between align-items-center">
                                    <span class="order_name">${order.order_name}</span>
                                    <span class="order_name">$${order.order_amount}</span>
                                    <span class="order_name">${order.create_at}</span>
                                        ${order.orderStateString()}
                                </div>
                                <div class="collapse" id="order-detail${loop.index}">
                                    <c:forEach var="product" items="${order.productCart}">
                                        <div class="d-flex flex-wrap justify-content-between align-items-center my-2">
                                            <c:forEach varStatus="loop_in" var="image"
                                                       items="${product.product.thumbnails}">
                                                <c:if test="${loop_in.index == 0}">
                                                    <img height="50" style="object-fit: cover"
                                                         src="${pageContext.request.contextPath}${image.path}">
                                                </c:if>
                                            </c:forEach>
                                            <span>name : ${product.product.product_name}</span>
                                            <span>quantity : ${product.quantity}</span>
                                            <span>price : ${product.product.product_price}</span>
                                        </div>
                                    </c:forEach>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="tab-pane fade" id="unpaid_order" role="tabpanel" aria-labelledby="profile-tab">
                            <c:forEach var="order" items="${orders.getContent()}" varStatus="loop">
                                <c:if test="${order.order_state == 0}">
                                    <div data-bs-toggle="collapse" data-bs-target="#order-detail${loop.index}"
                                         style="cursor: pointer"
                                         class="my-2 flex-wrap d-flex justify-content-between align-items-center">
                                        <span class="order_name">${order.order_name}</span>
                                        <span class="order_name">$${order.order_amount}</span>
                                        <span class="order_name">${order.create_at}</span>
                                            ${order.orderStateString()}
                                    </div>
                                    <div class="collapse" id="order-detail${loop.index}">
                                        <c:forEach var="product" items="${order.productCart}">
                                            <div class="d-flex flex-wrap justify-content-between align-items-center my-2">
                                                <c:forEach varStatus="loop_in" var="image"
                                                           items="${product.product.thumbnails}">
                                                    <c:if test="${loop_in.index == 0}">
                                                        <img height="50" style="object-fit: cover"
                                                             src="${pageContext.request.contextPath}${image.path}">
                                                    </c:if>
                                                </c:forEach>
                                                <span>name : ${product.product.product_name}</span>
                                                <span>quantity : ${product.quantity}</span>
                                                <span>price : ${product.product.product_price}</span>
                                            </div>
                                        </c:forEach>
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
                                        <span class="order_name">${order.order_name}</span>
                                        <span class="order_name">$${order.order_amount}</span>
                                        <span class="order_name">${order.create_at}</span>
                                            ${order.orderStateString()}
                                    </div>
                                    <div class="collapse" id="order-detail${loop.index}">
                                        <c:forEach var="product" items="${order.productCart}">
                                            <div class="d-flex flex-wrap justify-content-between align-items-center my-2">
                                                <c:forEach varStatus="loop_in" var="image"
                                                           items="${product.product.thumbnails}">
                                                    <c:if test="${loop_in.index == 0}">
                                                        <img height="50" style="object-fit: cover"
                                                             src="${pageContext.request.contextPath}${image.path}">
                                                    </c:if>
                                                </c:forEach>
                                                <span>name : ${product.product.product_name}</span>
                                                <span>quantity : ${product.quantity}</span>
                                                <span>price : ${product.product.product_price}</span>
                                            </div>
                                        </c:forEach>
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
                                        <span class="order_name">${order.order_name}</span>
                                        <span class="order_name">$${order.order_amount}</span>
                                        <span class="order_name">${order.create_at}</span>
                                            ${order.orderStateString()}
                                    </div>
                                    <div class="collapse" id="order-detail${loop.index}">
                                        <c:forEach var="product" items="${order.productCart}">
                                            <div class="d-flex flex-wrap justify-content-between align-items-center my-2">
                                                <c:forEach varStatus="loop_in" var="image"
                                                           items="${product.product.thumbnails}">
                                                    <c:if test="${loop_in.index == 0}">
                                                        <img height="50" style="object-fit: cover"
                                                             src="${pageContext.request.contextPath}${image.path}">
                                                    </c:if>
                                                </c:forEach>
                                                <span>name : ${product.product.product_name}</span>
                                                <span>quantity : ${product.quantity}</span>
                                                <span>price : ${product.product.product_price}</span>
                                            </div>
                                        </c:forEach>
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
                                        <span class="order_name">${order.order_name}</span>
                                        <span class="order_name">$${order.order_amount}</span>
                                        <span class="order_name">${order.create_at}</span>
                                            ${order.orderStateString()}
                                    </div>
                                    <div class="collapse" id="order-detail${loop.index}">
                                        <c:forEach var="product" items="${order.productCart}">
                                            <div class="d-flex flex-wrap justify-content-between align-items-center my-2">
                                                <c:forEach varStatus="loop_in" var="image"
                                                           items="${product.product.thumbnails}">
                                                    <c:if test="${loop_in.index == 0}">
                                                        <img height="50" style="object-fit: cover"
                                                             src="${pageContext.request.contextPath}${image.path}">
                                                    </c:if>
                                                </c:forEach>
                                                <span>name : ${product.product.product_name}</span>
                                                <span>quantity : ${product.quantity}</span>
                                                <span>price : ${product.product.product_price}</span>
                                            </div>
                                        </c:forEach>
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