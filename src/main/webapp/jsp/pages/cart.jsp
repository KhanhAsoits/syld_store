<!-- Start breadcrumb area -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ht__breadcrumb__area bg-image--3">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__inner text-center">
                    <h2 class="breadcrumb-title">Shopping Cart</h2>
                    <nav class="breadcrumb-content">
                        <a class="breadcrumb_item" href="${pageContext.request.contextPath}/">Trang chủ</a>
                        <span class="brd-separator">/</span>
                        <span class="breadcrumb_item active">Giỏ hàng</span>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End breadcrumb area -->
<!-- cart-main-area start -->
<div class="cart-main-area section-padding--lg bg--white">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 ol-lg-12">
                <form action="#">
                    <div class="table-content wnro__table table-responsive">
                        <table>
                            <thead>
                            <tr class="title-top">
                                <th class="product-thumbnail border-radius:3px">Hình ảnh</th>
                                <th class="product-name">Sản phẩm</th>
                                <th class="product-price">Đơn giá</th>
                                <th class="product-quantity">Số lượng</th>
                                <th class="product-subtotal">Tổng giá</th>
                                <th class="product-remove">Xóa</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="product-thumbnail"><a href="#"><img
                                        src="images/product/sm-3/1.jpg" alt="product img"></a></td>
                                <td class="product-name"><a href="#">Natoque penatibus</a></td>
                                <td class="product-price"><span class="amount">$165.00</span></td>
                                <td class="product-quantity"><input type="number" value="1"></td>
                                <td class="product-subtotal">$165.00</td>
                                <td class="product-remove"><a href="#">X</a></td>
                            </tr>
                            <tr>
                                <td class="product-thumbnail"><a href="#"><img
                                        src="images/product/sm-3/2.jpg" alt="product img"></a></td>
                                <td class="product-name"><a href="#">Quisque fringilla</a></td>
                                <td class="product-price"><span class="amount">$50.00</span></td>
                                <td class="product-quantity"><input type="number" value="1"></td>
                                <td class="product-subtotal">$50.00</td>
                                <td class="product-remove"><a href="#">X</a></td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="cartbox__btn">
                    <ul
                            class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
                        <li><a href="#">Coupon Code</a></li>
                        <li><a href="#">Apply Code</a></li>
                        <li><a href="#">Update Cart</a></li>
                        <li><a href="#">Check Out</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 offset-lg-6">
                <div class="cartbox__total__area">
                    <div class="cartbox-total d-flex justify-content-between">
                        <ul class="cart__total__list">
                            <li>Cart total</li>
                            <li>Sub Total</li>
                        </ul>
                        <ul class="cart__total__tk">
                            <li>$70</li>
                            <li>$70</li>
                        </ul>
                    </div>
                    <div class="cart__total__amount">
                        <span>Grand Total</span>
                        <span>$140</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- cart-main-area end -->