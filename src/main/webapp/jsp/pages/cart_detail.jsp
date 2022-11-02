<%@ page import="java.util.Base64" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spForm" uri="http://www.springframework.org/tags/form" %>
<%--@elvariable id="cart_update" type=""--%>
<div class="cart-main-area section-padding--lg bg--white my-5">
    <spForm:form modelAttribute="cart_update" method="post"
                 action="${pageContext.request.contextPath}/cart/client/update">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 ol-lg-12">
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
                            <spForm:input path="cart_id" cssStyle="visibility: hidden" value="${cart.id}"/>
                            <c:forEach var="product" items="${cart.productCarts}" varStatus="loop">
                                <tr>
                                    <spForm:input path="productCarts[${loop.index}].id" readonly="true"
                                                  value="${cart.productCarts.stream().toList().get(loop.index).id}" cssStyle="visibility: hidden"/>
                                    <td class="product-thumbnail"><a href="#">
                                        <c:forEach var="image" items="${product.product.thumbnails}"
                                                   varStatus="loop_in">
                                        <c:if test="${loop_in.index == 1}">
                                        <a href="${pageContext.request.contextPath}">
                                            <img src="${pageContext.request.contextPath}${image.path}"
                                                 alt="product images"></a>
                                        </c:if>
                                        </c:forEach>
                                    <td class="product-name"><a href="#">${product.product.product_name}</a></td>
                                    <td class="product-price"><span
                                            class="amount">$${cart.getSalePrice(product.product)}</span></td>
                                    <td class="product-quantity">
                                        <spForm:input onchange="totalProcess(this)"
                                                      data-per="${cart.getSalePrice(product.product)}"
                                                      type="number" min="1" value="${product.quantity}"
                                                      max="${product.product.product_quantity}"
                                                      path="productCarts[${loop.index}].quantity"/></td>
                                    <td class="product-subtotal">
                                        $${cart.getSalePrice(product.product) * product.quantity}</td>
                                    <td class="product-remove"><a data-product="${product.id}"
                                                                  data-user="${email}"
                                                                  onclick="removeFromCart(this)"
                                                                  href="javascript:void(0)">X</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="cartbox__btn">
                        <ul
                                class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
                            <li><button type="submit" style="border: none;padding:0">
                                <a>Update Cart</a>
                            </button></li>
                            <li><a href="javascript:void(0)" onclick="function processBeforeCheckout() {
                                                        if (document.getElementById('cart-total').textContent.replace('$','').trim() === '0'){
                                                            Toast.fire({
                                                                title:'Cart Empty'
                                                            })
                                                        }else {
                                                            window.location.assign(document.querySelector('.checkout__btn').dataset.link)
                                                        }
                                                   }
                                                   processBeforeCheckout()"
                                   data-link="${pageContext.request.contextPath}/order/<%=Base64.getEncoder().encodeToString(request.getAttribute("email").toString().getBytes())%>">Check
                                Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </spForm:form>
    <div class="row">
        <div class="col-lg-6 offset-lg-3 col-3">
            <div class="cartbox__total__area">
                <div class="cart__total__amount">
                    <span>Grand Total</span>
                    <span class="grand-total">$140</span>
                </div>
            </div>
        </div>
    </div>
</div>
