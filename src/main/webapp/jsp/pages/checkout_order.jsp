<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spForm" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Start breadcrumb area -->
<div class="ht__breadcrumb__area bg-image--4">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__inner text-center">
                    <h2 class="breadcrumb-title">Thanh toán</h2>
                    <nav class="breadcrumb-content">
                        <a class="breadcrumb_item" href="${pageContext.request.contextPath}/home">Trang chủ</a>
                        <span class="brd-separator">/</span>
                        <span class="breadcrumb_item active">Thanh toán</span>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End breadcrumb area -->
<!-- Start Checkout Area -->
<section class="wn__checkout__area section-padding--lg bg__white">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="wn_checkout_wrap">
                    <div class="checkout_info">
                        <span>Bạn có phiếu giảm giá ? </span>
                        <a class="showcoupon" href="#">Hãy nhập mã giảm giá vào đây !</a>
                    </div>
                    <div class="checkout_coupon">
                        <form action="#">
                            <div class="form__coupon">
                                <input type="text" placeholder="Nhập mã giảm giá">
                                <button>Xác nhận phiếu giảm giá</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="">
            <%--@elvariable id="order" type="com.syld.store.dto.OrderDto"--%>
            <spForm:form cssClass="row" action="${pageContext.request.contextPath}/payment/create" method="post"
                         modelAttribute="order">
                <spForm:input path="id" value="${order_detail.id}" cssStyle="visibility: hidden"/>
                <div class="col-lg-6 col-12">
                    <div class="customer_details">
                        <h3>Hóa đơn thanh toán</h3>
                        <div class="customar__field">
                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Họ và tên  </label>
                                    <spForm:input readonly="true" value="${cart.user.username}" path="user.username"
                                                  type="text"/>
                                </div>
                            </div>
                            <div class="input_box">
                                <label>Tên cửa hàng </label>
                                <input type="text" value="SYLD_SHOP" readonly>
                            </div>
                            <div class="input_box">
                                <label>Địa chỉ <span>*</span></label>
                                <spForm:input value="${cart.user.address}" path="user.address" type="text"
                                              placeholder="Full address"/>
                            </div>

                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Số điện thoại <span>*</span></label>
                                    <spForm:input value="${cart.user.phone_number}" placeholder="Phone"
                                                  path="user.phone_number" type="tel"/>
                                </div>

                                <div class="input_box space_between">
                                    <label>Địa chỉ Email</label>
                                    <spForm:input value="${cart.user.email}" path="user.email" readonly="true"
                                                  type="email"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="customer_details mt--20">
                        <div class="differt__address">
                            <input name="ship_to_different_address" value="1" type="checkbox">
                            <span>Giao đến một địa chỉ khác ?</span>
                        </div>
                        <div class="customar__field differt__form mt--40">
                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Họ <span>*</span></label>
                                    <input type="text">
                                </div>
                                <div class="input_box space_between">
                                    <label>Tên <span>*</span></label>
                                    <input type="text">
                                </div>
                            </div>
                            <div class="input_box">
                                <label>Tên cửa hàng <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="input_box">
                                <label>Quốc gia<span>*</span></label>
                                <select class="select__option">
                                    <option>Select a country…</option>
                                    <option>Afghanistan</option>
                                    <option>American Samoa</option>
                                    <option>Anguilla</option>
                                    <option>American Samoa</option>
                                    <option>Antarctica</option>
                                    <option>Antigua and Barbuda</option>
                                </select>
                            </div>
                            <div class="input_box">
                                <label>Địa chỉ <span>*</span></label>
                                <input type="text" placeholder="Street address">
                            </div>
                            <div class="input_box">
                                <input type="text" placeholder="Apartment, suite, unit etc. (optional)">
                            </div>
                            <div class="input_box">
                                <label>District<span>*</span></label>
                                <select class="select__option">
                                    <option>Chọn quốc gia</option>
                                    <option>Afghanistan</option>
                                    <option>American Samoa</option>
                                    <option>Anguilla</option>
                                    <option>American Samoa</option>
                                    <option>Antarctica</option>
                                    <option>Antigua and Barbuda</option>
                                </select>
                            </div>
                            <div class="input_box">
                                <label>mã bưu chính <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Số điện thoại <span>*</span></label>
                                    <input type="text">
                                </div>
                                <div class="input_box space_between">
                                    <label>Địa chỉ Email<span>*</span></label>
                                    <input type="email">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-12 md-mt-40 sm-mt-40">
                    <div class="wn__order__box">
                        <h3 class="order__title">Hóa đơn của bạn</h3>
                        <ul class="order__total">
                            <li>Sản phẩm</li>
                            <li>Tổng số tiền</li>
                        </ul>
                        <ul class="order_product">
                            <c:forEach var="product" items="${order_detail.productCart}">
                                <li>${product.product.product_name} x ${product.quantity}<span
                                        class="single_total_price">${cart.getSalePrice(product.product) * product.quantity}00 VND</span>
                                </li>
                            </c:forEach>
                        </ul>
                        <ul class="shipping__method">
                            <li>Giao hàng
                                <ul>
                                    <li>
                                        <input name="ship_mode" data-mode="fast" onchange="processShipPrice(this)"
                                               data-index="0"
                                               value="48"
                                               type="radio"/>
                                        <label>Giao hàng nhanh: 100.000 VND</label>
                                    </li>
                                    <li>
                                        <input name="ship_mode" data-index="0" data-mode="slow"
                                               onchange="processShipPrice(this)"
                                               value="16"
                                               checked="checked" type="radio"/>
                                        <label>Giao hàng bình thường: 30.000 VND</label>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="total__amount">
                            <li>Tiền đơn hàng <span id="sub_total">$223.00</span></li>
                            <li>Tổng hóa đơn <span id="order-total">$223.00</span></li>
                        </ul>
                    </div>
                    <div id="accordion" class="checkout_accordion mt--30" role="tablist">
                        <div class="payment">
                            <div class="che__header" role="tab" id="headingOne">
                                <a class="checkout__title" data-bs-toggle="collapse" href="#collapseOne"
                                   aria-expanded="true" aria-controls="collapseOne">
                                    <span>Chọn phương thức thanh toán</span>
                                </a>
                            </div>
                            <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingFour"
                                 data-bs-parent="#accordion">
                                <div class="py-2 px-3 my-2 row">
                                    <div class="col-12 col-md-4 border">
                                        <button type="submit" class="btn">
                                            <img src="${pageContext.request.contextPath}/assets/images/paypal/paypal.png"
                                                 alt="paypal">
                                        </button>
                                    </div>
                                    <div class="col-12 col-md-4 border">
                                        <button type="submit" class="btn">
                                            <img src="${pageContext.request.contextPath}/assets/images/pay_money/paymoney.png"
                                                 alt="money">
                                        </button>
                                    </div>
                                    <div class="col-12 col-md-4"></div>
                                    <div class="col-12 col-md-4"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </spForm:form>
        </div>
    </div>
</section>
<script>
    function processShipPrice(self) {
        processTotal()
    }

    function processTotal() {
        let listPrice = document.querySelectorAll(".single_total_price")
        let checked_price = document.querySelector("input[name='ship_mode']:checked")
        let check_value = checked_price.value
        let amount = parseInt(check_value);
        let subtotal = 0;
        listPrice.forEach((val, index) => {
            subtotal += parseInt(val.textContent.replace("$", "").trim().slice(0, val.textContent.length - 3))
            amount += parseInt(val.textContent.replace("$", "").trim().slice(0, val.textContent.length - 3))
        })
        document.getElementById("sub_total").textContent = '$' + subtotal + '.00'
        document.getElementById("order-total").textContent = '$' + amount + ".00";
    }

    processTotal()
</script>
<!-- End Checkout Area -->