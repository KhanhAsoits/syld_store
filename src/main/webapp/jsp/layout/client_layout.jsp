<%@ page import="java.util.Base64" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <%@include file="./client_header.jsp" %>
    <title>${title}</title>
    <style>
        .sticky__header.is-sticky {
            background-color: white !important;

        }

        .sticky__header.is-sticky a {
            color: black !important;
        }

        .sticky__header.is-sticky .meanmenu-reveal span {
            color: whitesmoke !important;
        }

        .logo {
            width: 86px !important;
            height: 80px !important;
        }

        .owl-nav {
            display: none !important;
        }

        .copyright {
            display: none !important;
        }

        .owl-nav {
            display: none !important;
        }

        .cart-quan {
            position: absolute;
            background-color: rgb(255, 53, 53);
            width: 15px;
            height: 15px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 10px;
            color: whitesmoke;
            border-radius: 50%;
            right: -6px;
            top: -2px;
        }
    </style>
</head>
<body>

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">
    <header id="wn__header" class="header__area header__absolute sticky__header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-6 col-lg-2 d-flex align-items-center ">
                    <div class="logo">
                        <a href="${pageContext.request.contextPath}/">
                            <img class="logo" src="${pageContext.request.contextPath}/assets/images/logo/logo.svg"
                                 style="width: 100px;height: 100px" alt="logo images">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 d-none d-lg-block">
                    <nav class="mainmenu__nav">
                        <ul class="meninmenu d-flex justify-content-start">
                            <li><a href="${pageContext.request.contextPath}/store?page=1&limit=18">Cửa hàng</a></li>
                            <c:forEach var="category" items="${navs}">
                                <li class="drop with--one--item">
                                    <a href="${pageContext.request.contextPath}/store?category=${category.children[0].category_slug}&page=1&limit=18">${category.parent.category_name}</a>
                                    <div class="megamenu dropdown">
                                        <ul class="item item01">
                                            <c:forEach var="child_category" items="${category.children}">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/store?category=${child_category.category_slug}&page=1&limit=18">${child_category.category_name}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </li>
                            </c:forEach>

                            <li><a href="${pageContext.request.contextPath}/contact">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-8 col-sm-8 col-5 col-lg-2">
                    <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                        <li><a class="search__active" href="#">
                            <span class="fa fa-search" style="font-size: 20px">
                            </span>
                        </a></li>
                        <li><a href="#"><span class="fa fa-heart-o mx-4" style="font-size: 20px"></span></a></li>
                        <sec:authorize access="!isAuthenticated()">
                            <li class="mx-1"><a href="${pageContext.request.contextPath}/auth/login">
                                <span style="font-size: 22px" class="fa fa-sign-in"></span>
                            </a></li>
                        </sec:authorize>

                        <sec:authorize access="isAuthenticated()">
                            <li class="me-4">
                                <a class="cartbox_active" href="#">
                                    <c:if test="${cart!=null}">
                                        <span id="cart-quantity" class="cart-quan">${cart.productCarts.size()}</span>
                                    </c:if>
                                    <span class="fa fa-shopping-cart" style="font-size: 20px"></span>
                                </a>
                                <!-- Start Shopping Cart -->
                                <div class="block-minicart minicart__active">
                                    <div class="minicart-content-wrapper">
                                        <div class="micart__close">
                                            <span>đóng</span>
                                        </div>
                                        <c:if test="${cart!=null}">
                                            <div class="items-total d-flex justify-content-between">
                                                <span id="cart-item">${cart.productCarts.size()} Sản phẩm</span>
                                                <span>Giỏ hàng</span>
                                            </div>
                                            <div class="total_amount text-end">
                                                <span id="cart-total">0 VND</span>
                                            </div>
                                            <div class="mini_action checkout">
                                                <a class="checkout__btn" style="color: whitesmoke!important;"
                                                   href="javascript:void(0)" onclick="function processBeforeCheckout() {
                                                        if (document.getElementById('cart-total').textContent.replace('$','').trim() === '0'){
                                                            Toast.fire({
                                                                title:'Cart Empty'
                                                            })
                                                        }else {
                                                            window.location.assign(document.querySelector('.checkout__btn').dataset.link)
                                                        }
                                                   }
                                                   processBeforeCheckout()"
                                                   data-link="${pageContext.request.contextPath}/order/<%=Base64.getEncoder().encodeToString(request.getAttribute("email").toString().getBytes())%>">Thanh toán giỏ hàng</a>
                                            </div>
                                            <div class="single__items">
                                                <div class="miniproduct" id="cart-product"
                                                     style="height: 50vh;overflow-y: scroll;">
                                                    <c:forEach var="product" items="${cart.productCarts}">
                                                        <div class="item01 d-flex mt--20">
                                                            <div class="thumb">
                                                                <c:forEach var="image"
                                                                           items="${product.product.thumbnails}"
                                                                           varStatus="loop">
                                                                    <c:if test="${loop.index == 1}">
                                                                        <a href="${pageContext.request.contextPath}">
                                                                            <img src="${pageContext.request.contextPath}${image.path}"
                                                                                 alt="product images"></a>
                                                                    </c:if>
                                                                </c:forEach>

                                                            </div>
                                                            <div class="content d-flex flex-column">
                                                                <h6>
                                                                    <a href="${pageContext.request.contextPath}/products/${product.product.slug}">${product.product.product_name}</a>
                                                                </h6>
                                                                <span class="price" data-quantity="${product.quantity}">${product.product.product_price}00 VND</span>
                                                                <span style="font-size: 14px">Số lượng : ${product.quantity}</span>
                                                            </div>
                                                            <div class="product_price d-flex justify-content-between">
                                                                <ul class="d-flex justify-content-end">
                                                                    <li>
                                                                        <a href="javascript:void(0)"
                                                                           onclick="removeFromCart(this,true)"
                                                                           data-user="${email}"
                                                                           data-product="${product.id}"><i
                                                                                class="fa fa-trash"
                                                                                style="font-size: 20px"></i></a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="mini_action cart">
                                                <a class="cart__btn"
                                                   href="${pageContext.request.contextPath}/cart/client/detail">Xem và sửa giỏ hàng</a>
                                            </div>
                                        </c:if>
                                        <c:if test="${cart==null}">

                                            <h6 style="color: rgba(0,0,0,0.5);font-weight: 500;font-size: 18px;text-align: center">
                                                Chưa có gì trong giỏ hàng >.<
                                            </h6>
                                            <a href="${pageContext.request.contextPath}/store?page=1&limit=18">Vào cửa hàng nào !</a>
                                        </c:if>
                                    </div>
                                </div>
                                <!-- End Shopping Cart -->
                            </li>
                            <li><a class="setting__active">
                                <span class="fa fa-user-o" style="font-size: 20px"></span>
                            </a>
                                <div class="searchbar__content setting__block">
                                    <div class="content-inner">
                                        <div class="switcher-currency">
                                            <strong class="label switcher-label">
                                                <span>Tài khoản</span>
                                            </strong>
                                            <div class="switcher-options">
                                                <div class="switcher-currency-trigger">
                                                    <a href="${pageContext.request.contextPath}/order/my_orders?page=1&limit=8">
                                                         <span
                                                                 class="currency-trigger">Đơn hàng của tôi</span>
                                                    </a>
                                                    <span class="currency-trigger">Lịch sử mua hàng</span>
                                                    <span class="currency-trigger">Đánh giá của tôi</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="switcher-currency">
                                            <strong class="label switcher-label">
                                                <span>Cài đặt</span>
                                            </strong>
                                            <div class="switcher-options">
                                                <div class="switcher-currency-trigger">
                                                    <div class="setting__menu">
                                                        <sec:authorize access="hasAnyAuthority('role_admin')">
                                                            <span><a
                                                                    href="${pageContext.request.contextPath}/admin/dashboard">Trang quản trị viên</a></span>
                                                        </sec:authorize>
                                                        <span><a
                                                                href="${pageContext.request.contextPath}/my_account/detail">Tài khoản của tôi</a></span>
                                                        <span><a
                                                                href="${pageContext.request.contextPath}/logout">Đăng xuất</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </sec:authorize>
                    </ul>
                </div>
            </div>
            <!-- Start Mobile Menu -->
            <div class="row d-none">
                <div class="col-lg-12 d-none">
                    <nav class="mobilemenu__nav">
                        <ul class="meninmenu">
                            <li><a href="${pageContext.request.contextPath}/store?page=1&limit=18">Store</a></li>
                            <c:forEach var="category" items="${navs}">
                                <li class="drop with--one--item">
                                    <a href="${pageContext.request.contextPath}/store?category=${category.children[0].category_slug}&page=1&limit=18">${category.parent.category_name}</a>
                                    <a class="mean-expand" href="#" style="font-size: 18px">+</a>

                                    <ul>
                                        <c:forEach var="child_category" items="${category.children}">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/store?category=${child_category.category_slug}&page=1&limit=18">${child_category.category_name}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>

                                </li>
                            </c:forEach>
                            <li><a href="${pageContext.request.contextPath}/contact">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- End Mobile Menu -->
            <div class="mobile-menu d-block d-lg-none">
            </div>
            <!-- Mobile Menu -->
        </div>
    </header>
    <!-- //Header -->
    <!-- Start Search Popup -->
    <div class="box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="${pageContext.request.contextPath}/store?page=1&limit=9">
            <div class="field__search">
                <input type="text" name="keyword" placeholder="Tìm mọi thứ ở đây...">
                <div class="action">
                    <a type="submit"><i class="zmdi zmdi-search"></i></a>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>Đóng</span>
        </div>
    </div>

    <jsp:include page="../pages/${web_content}.jsp"/>

    <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
        var chatbox = document.getElementById('fb-customer-chat');
        chatbox.setAttribute("page_id", "104602039100411");
        chatbox.setAttribute("attribution", "biz_inbox");
    </script>


    <script>
        window.fbAsyncInit = function() {
            FB.init({
                xfbml            : true,
                version          : 'v15.0'
            });
        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <%@include file="./client_footer.jsp" %>

    <script>

        let listPrice = document.querySelectorAll(".content .price")
        let total = document.getElementById("cart-total")

        let amount = 0;

        listPrice.forEach((val, index) => {
            amount += (parseFloat(val.textContent.replace("$", "").trim()) * parseInt(val.dataset.quantity))
        })
        if (total) {
            total.textContent = '$' + amount.toString();
        }
    </script>