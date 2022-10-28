<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="cart-main-area section-padding--lg bg--white">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 ol-lg-12">
                <form action="#">
                    <div class="table-content wnro__table table-responsive">
                        <table>
                            <thead>
                            <tr class="title-top">
                                <th class="product-thumbnail">Image</th>
                                <th class="product-name">Product</th>
                                <th class="product-price">Price</th>
                                <th class="product-quantity">Quantity</th>
                                <th class="product-subtotal">Total</th>
                                <th class="product-remove">Remove</th>
                            </tr>
                            </thead>
                            <tbody id="cart-detail-table">
                            <c:forEach var="product" items="${cart.productCarts}">
                                <tr>
                                    <td class="product-thumbnail"><a href="#">
                                        <c:forEach var="image" items="${product.product.thumbnails}"
                                                   varStatus="loop">
                                        <c:if test="${loop.index == 1}">
                                        <a href="${pageContext.request.contextPath}">
                                            <img src="${pageContext.request.contextPath}${image.path}"
                                                 alt="product images"></a>
                                        </c:if>
                                        </c:forEach>
                                    <td class="product-name"><a href="#">${product.product.product_name}</a></td>
                                    <td class="product-price"><span
                                            class="amount">$${cart.getSalePrice(product.product)}</span></td>
                                    <td class="product-quantity">
                                        <input onchange="totalProcess(this)"
                                               data-per="${cart.getSalePrice(product.product)}"
                                               type="number" min="1" value="${product.quantity}"
                                               max="${product.product.product_quantity}"></td>
                                    <td class="product-subtotal">
                                        $${cart.getSalePrice(product.product) * product.quantity}</td>
                                    <td class="product-remove"><a data-product="${product.id}"
                                                                  data-user="${email}"
                                                                  onclick="removeFromCart(this)"
                                                                  href="javascript:void(0)">X</a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="cartbox__btn">
                    <ul
                            class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
                        <li><a href="#">Update Cart</a></li>
                        <li><a href="#">Check Out</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 offset-lg-6">
                <div class="cartbox__total__area">
                    <div class="cart__total__amount">
                        <span>Grand Total</span>
                        <span class="grand-total">$140</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
