<head>
    <%@include file="./client_header.jsp"%>
    <title>${title}</title>
</head>



<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">

    <!-- Header -->
    <header id="wn__header" class="oth-page header__area header__absolute sticky__header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-7 col-lg-2">
                    <div class="logo">
                        <a href="/home">
                            <img src="${pageContext.request.contextPath}/assets/images/logo/logo.gif" width="96px" height="56px" alt="logo Syld">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 d-none d-lg-block">
                    <nav class="mainmenu__nav">
                        <ul class="meninmenu d-flex justify-content-start">
                            <li class="drop with--one--item"><a href="index">Clothing Fashion</a>
                                <div class="megamenu dropdown">
                                    <ul class="item item01">
                                        <li><a href="#">Men's Fashion</a></li>
                                        <li><a href="#">Women's Fashion</a></li>
                                        <li><a href="#">Child Fashion</a></li>
                                        <li><a href="#">Handmade Fashion</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="drop"><a href="#">Perfume</a>
                                <div class="megamenu mega03">
                                    <ul class="item item03">
                                        <li class="title">Man</li>
                                        <li><a href="shop-grid.html">Shop Grid</a></li>
                                        <li><a href="shop-list.html">Shop List</a></li>
                                        <li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
                                        <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                        <li><a href="shop-no-sidebar.html">Shop No sidebar</a></li>
                                        <li><a href="single-product.html">Single Product</a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">Women</li>
                                        <li><a href="my-account.html">My Account</a></li>
                                        <li><a href="cart.html">Cart Page</a></li>
                                        <li><a href="checkout.html">Checkout Page</a></li>
                                        <li><a href="wishlist.html">Wishlist Page</a></li>
                                        <li><a href="error404.html">404 Page</a></li>
                                        <li><a href="faq.html">Faq Page</a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">health care</li>
                                        <li><a href="shop-grid.html">Bargain Bestsellers</a></li>
                                        <li><a href="shop-grid.html">Activity Kits</a></li>
                                        <li><a href="shop-grid.html">B&N Classics</a></li>
                                        <li><a href="shop-grid.html">Books Under $5</a></li>
                                        <li><a href="shop-grid.html">Bargain Books</a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">service</li>
                                        <li><a href="shop-grid.html">Bargain Bestsellers</a></li>
                                        <li><a href="shop-grid.html">Activity Kits</a></li>
                                        <li><a href="shop-grid.html">B&N Classics</a></li>
                                        <li><a href="shop-grid.html">Books Under $5</a></li>
                                        <li><a href="shop-grid.html">Bargain Books</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="drop"><a href="shop-grid.html">Jewels</a>
                                <div class="megamenu mega03">
                                    <ul class="item item03">
                                        <li class="title">Collections</li>
                                        <li><a href="shop-grid.html">Biography </a></li>
                                        <li><a href="shop-grid.html">Business </a></li>
                                        <li><a href="shop-grid.html">Cookbooks </a></li>
                                        <li><a href="shop-grid.html">Health & Fitness </a></li>
                                        <li><a href="shop-grid.html">History </a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">Events</li>
                                        <li><a href="shop-grid.html">Mystery</a></li>
                                        <li><a href="shop-grid.html">Religion & Inspiration</a></li>
                                        <li><a href="shop-grid.html">Romance</a></li>
                                        <li><a href="shop-grid.html">Fiction/Fantasy</a></li>
                                        <li><a href="shop-grid.html">Sleeveless</a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">Service</li>
                                        <li><a href="shop-grid.html">Science </a></li>
                                        <li><a href="shop-grid.html">Fiction/Fantasy</a></li>
                                        <li><a href="shop-grid.html">Self-Improvemen</a></li>
                                        <li><a href="shop-grid.html">Home & Garden</a></li>
                                        <li><a href="shop-grid.html">Humor Books</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="drop"><a href="shop-grid.html">Eyeglass</a>
                                <div class="megamenu mega02">
                                    <ul class="item item02">
                                        <li class="title">Collections</li>
                                        <li><a href="shop-grid.html">American Girl</a></li>
                                        <li><a href="shop-grid.html">Diary Wimpy Kid</a></li>
                                        <li><a href="shop-grid.html">Finding Dory</a></li>
                                        <li><a href="shop-grid.html">Harry Potter</a></li>
                                        <li><a href="shop-grid.html">Land of Stories</a></li>
                                    </ul>
                                    <ul class="item item02">
                                        <li class="title">Fashion Glass</li>
                                        <li><a href="shop-grid.html">B&N Educators</a></li>
                                        <li><a href="shop-grid.html">B&N Kids' Club</a></li>
                                        <li><a href="shop-grid.html">Kids' Music</a></li>
                                        <li><a href="shop-grid.html">Toys & Games</a></li>
                                        <li><a href="shop-grid.html">hoodies</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="drop"><a href="#">Shoes</a>
                                <div class="megamenu dropdown">
                                    <ul class="item item01">
                                        <li><a href="about.html"></a></li>
                                        <li class="label2"><a href="portfolio.html">Portfolio</a>
                                            <ul>
                                                <li><a href="portfolio.html">Portfolio</a></li>
                                                <li><a href="portfolio-three-column.html">Portfolio 3 Column</a>
                                                </li>
                                                <li><a href="portfolio-details.html">Portfolio Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="my-account.html">My Account</a></li>
                                        <li><a href="cart.html">Cart Page</a></li>
                                        <li><a href="checkout.html">Checkout Page</a></li>
                                        <li><a href="wishlist.html">Wishlist Page</a></li>
                                        <li><a href="error404.html">404 Page</a></li>
                                        <li><a href="faq.html">Faq Page</a></li>
                                        <li><a href="team.html">Team Page</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="drop"><a href="/blog">Fashion Accessories</a>
                                <div class="megamenu dropdown">
                                    <ul class="item item01">
                                        <li><a href="blog.html">Blog Page</a></li>
                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-no-sidebar.html">Blog No Sidebar</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="ravenueRating">Revenue Rating </a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-8 col-sm-8 col-5 col-lg-2">
                    <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                        <li class="shop_search"><a class="search__active" href="#"></a></li>
                        <li class="wishlist"><a href="#"></a></li>
                        <li class="shopcart"><a class="cartbox_active" href="#"><span
                                class="product_qun">3</span></a>
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
                        <li class="setting__bar__icon"><a class="setting__active" href="login"></a>
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
                                                <ul class="switcher-dropdown">
                                                    <li>GBP - British Pound Sterling</li>
                                                    <li>EUR - Euro</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="switcher-currency">
                                        <strong class="label switcher-label">
                                            <span>Language</span>
                                        </strong>
                                        <div class="switcher-options">
                                            <div class="switcher-currency-trigger">
                                                <span class="currency-trigger">English</span>
                                                <ul class="switcher-dropdown">
                                                    <li>Viet Nam</li>
                                                    <li>China</li>
                                                    <li>Japan</li>
                                                    <li>Korea</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="switcher-currency">
                                        <strong class="label switcher-label">
                                            <span>Select Store</span>
                                        </strong>
                                        <div class="switcher-options">
                                            <div class="switcher-currency-trigger">
                                                <span class="currency-trigger">Fashion Store</span>
                                                <ul class="switcher-dropdown">
                                                    <li>Perfume</li>
                                                    <li>Shoes</li>
                                                    <li>Jewels</li>
                                                    <li>Eyeglass</li>
                                                </ul>
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
                                                    <span><a href="#">support & report</a></span>
                                                    <span><a href="#">My Account</a></span>
                                                    <span><a href="#">Change Password</a></span>
                                                    <span><a href="#">Change Theme</a></span>
                                                    <span><a href="login">Logout</a></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
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
    <!-- End Search Popup -->
    <!-- Start breadcrumb area -->
    <div class="ht__breadcrumb__area bg-image--6">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__inner text-center">
                        <h2 class="breadcrumb-title">STORE SYLD</h2>
                        <nav class="breadcrumb-content">
                            <a class="breadcrumb_item" href="index.html">Home</a>
                            <span class="brd-separator">/</span>
                            <span class="breadcrumb_item active">STORE SYLD</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End breadcrumb area -->
        <jsp:include page="../pages/${web_content}.jsp"/>

    <%@include file="./client_footer.jsp"%>