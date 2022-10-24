<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<head>
    <%@include file="./client_header.jsp" %>
    <title>${title}</title>
    <style>
        .sticky__header.is-sticky{
            background-color: whitesmoke!important;

        }
        .sticky__header.is-sticky a{
            color: black!important;
        }
        .sticky__header.is-sticky .meanmenu-reveal span{
            color: black!important;
        }
        .logo{
            width: 66px!important;
            height: 60px!important;
        }
        .copyright{
            display: none!important;
        }
        .cart-quan{
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
                <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                    <div class="logo">
                        <a href="${pageContext.request.contextPath}/">
                            <img class="logo" src="${pageContext.request.contextPath}/assets/images/logo/logo.svg" style="width: 100px;height: 100px" alt="logo images">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 d-none d-lg-block">
                    <nav class="mainmenu__nav">
                        <ul class="meninmenu d-flex justify-content-start">
                            <c:forEach var="category" items="${navs}">
                                <li class="drop with--one--item">
                                    <a href="${pageContext.request.contextPath}/store?category=${category.children[0].category_slug}&page=1&limit=9">${category.parent.category_name}</a>
                                    <div class="megamenu dropdown">
                                        <ul class="item item01">
                                            <c:forEach var="child_category" items="${category.children}">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/store?category=${child_category.category_slug}&page=1&limit=9">${child_category.category_name}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </li>
                            </c:forEach>
                            <li><a href="${pageContext.request.contextPath}/store?page=1&limit=9">Shop</a></li>
                            <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
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
                                    <span class="cart-quan">6</span>
                                    <span class="fa fa-shopping-cart" style="font-size: 20px"></span>
                                </a>
                                <!-- Start Shopping Cart -->
                                <div class="block-minicart minicart__active">
                                    <div class="minicart-content-wrapper">
                                        <div class="micart__close">
                                            <span>close</span>
                                        </div>
                                        <div class="items-total d-flex justify-content-between">
                                            <span>3 items</span>
                                            <span>Cart Subtotal</span>
                                        </div>
                                        <div class="total_amount text-end">
                                            <span>$66.00</span>
                                        </div>
                                        <div class="mini_action checkout">
                                            <a class="checkout__btn" href="cart.html">Go to Checkout</a>
                                        </div>
                                        <div class="single__items">
                                            <div class="miniproduct">
                                                <div class="item01 d-flex">
                                                    <div class="thumb">
                                                        <a href="product-details.html"><img
                                                                src="${pageContext.request.contextPath}/assets/images/product/sm-img/1.jpg"
                                                                alt="product images"></a>
                                                    </div>
                                                    <div class="content">
                                                        <h6><a href="product-details.html">Voyage Yoga Bag</a></h6>
                                                        <span class="price">$30.00</span>
                                                        <div class="product_price d-flex justify-content-between">
                                                            <span class="qun">Qty: 01</span>
                                                            <ul class="d-flex justify-content-end">
                                                                <li><a href="#"><i class="zmdi zmdi-settings"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="zmdi zmdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item01 d-flex mt--20">
                                                    <div class="thumb">
                                                        <a href="product-details.html"><img
                                                                src="${pageContext.request.contextPath}/assets/images/product/sm-img/3.jpg"
                                                                alt="product images"></a>
                                                    </div>
                                                    <div class="content">
                                                        <h6><a href="product-details.html">Impulse Duffle</a></h6>
                                                        <span class="price">$40.00</span>
                                                        <div class="product_price d-flex justify-content-between">
                                                            <span class="qun">Qty: 03</span>
                                                            <ul class="d-flex justify-content-end">
                                                                <li><a href="#"><i class="zmdi zmdi-settings"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="zmdi zmdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item01 d-flex mt--20">
                                                    <div class="thumb">
                                                        <a href="product-details.html"><img
                                                                src="${pageContext.request.contextPath}/assets/images/product/sm-img/2.jpg"
                                                                alt="product images"></a>
                                                    </div>
                                                    <div class="content">
                                                        <h6><a href="product-details.html">Compete Track Tote</a></h6>
                                                        <span class="price">$40.00</span>
                                                        <div class="product_price d-flex justify-content-between">
                                                            <span class="qun">Qty: 03</span>
                                                            <ul class="d-flex justify-content-end">
                                                                <li><a href="#"><i class="zmdi zmdi-settings"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="zmdi zmdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mini_action cart">
                                            <a class="cart__btn" href="cart.html">View and edit cart</a>
                                        </div>
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
                                                <span>Account</span>
                                            </strong>
                                            <div class="switcher-options">
                                                <div class="switcher-currency-trigger">
                                                    <span class="currency-trigger">My order</span>
                                                    <span class="currency-trigger">Purchase history</span>
                                                    <span class="currency-trigger">My rating</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="switcher-currency">
                                            <strong class="label switcher-label">
                                                <span>Setting</span>
                                            </strong>
                                            <div class="switcher-options">
                                                <div class="switcher-currency-trigger">
                                                    <div class="setting__menu">
                                                        <sec:authorize access="hasAnyRole('role_admin')">
                                                            <span><a href="#">Admin</a></span>
                                                        </sec:authorize>
                                                        <span><a href="#">My Account</a></span>
                                                        <span><a href="#">Change Password</a></span>
                                                        <span><a href="${pageContext.request.contextPath}/logout">Logout</a></span>
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
                            <li><a href="index">Clothing Fashion</a>
                                <ul>
                                    <li><a href="index.html">Men's Fashion</a></li>
                                    <li><a href="index-2.html">Women's Fashion</a></li>
                                    <li><a href="index-3.html">Child Fashion</a></li>
                                    <li><a href="index-box.html">Handmade Fashion</a></li>
                                </ul>
                            </li>
                            <li><a href="#">New Products</a>
                                <ul>
                                    <li><a href="#">Perfume</a>
                                        <ul>
                                            <li><a href="#">Man</a></li>
                                            <li><a href="#">Women</a></li>
                                            <li><a href="#">Collection</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Jewels</a>
                                        <ul>
                                            <li><a href="#">Man</a></li>
                                            <li><a href="#">Women</a></li>
                                            <li><a href="#">Collection</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Shoes</a>
                                        <ul>
                                            <li><a href="#">Man</a></li>
                                            <li><a href="#">Women</a></li>
                                            <li><a href="#">Collection</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Eyeglass</a>
                                        <ul>
                                            <li><a href="#">Man</a></li>
                                            <li><a href="#">Women</a></li>
                                            <li><a href="#">Collection</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Collecion</a></li>
                                    <li><a href="#">Handmade</a></li>
                                    <li><a href="#">Monopoly</a></li>

                                </ul>
                            </li>
                            <li><a href="#">Syld</a>
                                <ul>
                                    <li><a href="/blog">Blog</a></li>
                                    <li><a href="#">Events</a></li>
                                    <li><a href="#">Service</a>
                                        <ul>
                                            <li><a href="#">Clothes</a></li>
                                            <li><a href="#">Perfume</a></li>
                                            <li><a href="#">Jewels</a></li>
                                            <li><a href="#">Eyeglass</a></li>
                                            <li><a href="#">Shoes</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </li>
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
        <form id="search_mini_form" class="minisearch" action="#">
            <div class="field__search">
                <input type="text" placeholder="Search entire store here...">
                <div class="action">
                    <a href="#"><i class="zmdi zmdi-search"></i></a>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>close</span>
        </div>
    </div>

    <jsp:include page="../pages/${web_content}.jsp"/>

<%@include file="./client_footer.jsp" %>