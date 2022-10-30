<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .best-sale{
        width: 80%;
        overflow: hidden;
        margin: auto;
    }
    .add_to_links {
        font-family: "add", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", Helvetica, Arial, sans-serif;
    }


</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetaler2@11.1.5/dist/sweetalert2.min.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetaler2@11.1.5/dist/sweetalert2.min.css"></script>

<div class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
    <!-- Start Single Slide -->
    <div class="slide animation__style10 bg-image--1 fullscreen align__center--left">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="slider__content">
                        <div class="contentbox">
                            <h2 >Buy <span style="color: floralwhite">your </span></h2>
                            <h2>favourite <span style="color: floralwhite">fashion </span></h2>
                            <h2>from <span style="color: floralwhite">Here </span></h2>
                            <a class="shopbtn" href="${pageContext.request.contextPath}/store?page=1&limit=9">shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Single Slide -->
    <!-- Start Single Slide -->
    <div class="slide animation__style10 bg-image--7 fullscreen align__center--left">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="slider__content">
                        <div class="contentbox">
                            <h2>Buy <span style="color: lightpink">your </span></h2>
                            <h2>favourite <span style="color: lightpink">fashion </span></h2>
                            <h2>from <span style="color: lightpink">Here </span></h2>
                            <a class="shopbtn" href="${pageContext.request.contextPath}/store?page=1&limit=9">shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Single Slide -->
</div>

<section class="wn__product__area brown--color pt--80  pb--30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section__title text-center">
                    <h2 class="title__be--2">New <span class="color--theme" style="color: lightslategray">Products</span></h2>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                        suffered lebmid alteration in some ledmid form</p>
                </div>
            </div>
        </div>
        <!-- Start Single Tab Content -->
        <div class="furniture--4 border--round arrows_style owl-carousel owl-theme mt--50">
<%--            new productssss--%>
            <c:forEach var="new_product" items="${data.new_products}">
                <!-- Start Single Product -->
                <div class="product product__style--3">
                    <div class="product__thumb mb-2">
                        <a class="first__img" href="">
                            <img style="height: 300px;object-fit: cover" src="${pageContext.request.contextPath}${new_product.images_con.get(0).path}" alt="product image">
                        </a>
                        <a class="second__img animation1" href="${pageContext.request.contextPath}/products/${new_product.slug}">
                            <img style="height: 300px;object-fit: cover"  src="${pageContext.request.contextPath}${new_product.images_con.get(1).path}" alt="product image"></a>
                        <div class="hot__box">
                            <span class="hot-label">NEW</span>
                        </div>
                    </div>
                    <div class="product__content content--center">
                        <h4><a href="${pageContext.request.contextPath}/products/${new_product.slug}">${new_product.product_name}</a></h4>
                        <ul class="price d-flex">
                            <li>$${new_product.product_price - (new_product.product_price * (new_product.sale_off + 1 / 100))}</li>
                            <li class="old_price">$${new_product.product_price}</li>
                        </ul>
                        <div class="action">
                            <div class="actions_inner">
                                <ul class="add_to_links">
                                    <c:if test="${cart!=null}">
                                        <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${new_product.product_quantity}" onclick="addProductToCart(this)" href="javascript:void(0)" data-cart="${cart.id}" data-email="${email}" data-product="${new_product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                                    </c:if>
                                    <c:if test="${email!=null && cart == null}">
                                        <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${new_product.product_quantity}" onclick="addProductToCart(this)" data-email="${email}" href="javascript:void(0)" data-product="${new_product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                                    </c:if>
                                    <c:if test="${email==null && cart == null}">
                                        <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${new_product.product_quantity}" href="${pageContext.request.contextPath}/auth/login" data-product="${new_product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                                        </c:if>
                                        <li><a class="wishlist d-flex justify-content-center align-items-center" href="wishlist.html"><i
                                            class="bi bi-shopping-cart-full"></i></a></li>
                                    <li><a class="compare d-flex justify-content-center align-items-center" href="#"><i class="bi bi-heart-beat"></i></a></li>
                                    <li><a data-bs-toggle="modal" title="Quick View"
                                           class="quickview d-flex justify-content-center align-items-center modal-view detail-link" href="#productmodal"><i
                                            class="bi bi-search"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product__hover--content">
                            <ul class="rating d-flex">
                                <li class="on"><i class="fa fa-star-o"></i></li>
                                <li class="on"><i class="fa fa-star-o"></i></li>
                                <li class="on"><i class="fa fa-star-o"></i></li>
                                <li><i class="fa fa-star-o"></i></li>
                                <li><i class="fa fa-star-o"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Start Single Product -->
            </c:forEach>

        </div>
        <!-- End Single Tab Content -->
    </div>
</section>

<section class="wn__newsletter__area bg-image--2">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 offset-lg-5 col-md-12 col-12 ptb--150">
                <div class="section__title text-center">
                    <h2 style="color: whitesmoke">Stay With Us</h2>
                </div>
                <div class="newsletter__block text-center">
                    <p style="color: whitesmoke">Subscribe to our newsletters now and stay up-to-date with new collections, the latest
                        lookbooks and exclusive offers.</p>
                    <form action="#">
                        <div class="newsletter__box">
                            <input type="email" style="color: whitesmoke"   placeholder="Enter your e-mail">
                            <button style="color: whitesmoke">Subscribe</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End NEwsletter Area -->
<!-- Start Best Seller Area -->
<section class="wn__bestseller__area bg--white pt--80  pb--30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section__title text-center">
                    <h2 class="title__be--2">Hot Sale <span class="color--theme" style="color: lightpink">Products</span></h2>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                        suffered lebmid alteration in some ledmid form</p>
                </div>
            </div>
        </div>
        <div class="row mt--50">
            <div class="col-md-12 col-lg-12 col-sm-12">
                <div class="product__nav nav justify-content-center" role="tablist">
                    <a class="nav-item nav-link active" data-bs-toggle="tab" href="#nav-all" role="tab">ALL</a>
                    <c:forEach var="categoryP" items="${data.productByCategoryDtos}">
                        <a class="nav-item nav-link" data-bs-toggle="tab" href="#nav-${categoryP.toSlug()}"
                           role="tab">${categoryP.categoryDto.category_name}</a>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="tab__container tab-content mt--60">
            <!-- Start Single Tab Content -->
            <div class=" single__tab tab-pane fade show active" id="nav-all" role="tabpanel">
                <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                    <c:forEach var="productView" items="${data.productByCategoryDtos}">
                        <c:forEach var="single_product" items="${productView.productViewDtoList}">
                            <div class="single__product">
                                <!-- Start Single Product -->
                                <div class="single__product__inner">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="${pageContext.request.contextPath}/products/${single_product.slug}"><img
                                                    style="height: 300px;object-fit: cover;" src="${pageContext.request.contextPath}${single_product.images_con.get(0).path}" alt="product image"></a>
                                            <a class="second__img animation1" href="${pageContext.request.contextPath}/products/${single_product.slug}"><img
                                                    style="height: 300px;object-fit: cover;" src="${pageContext.request.contextPath}${single_product.images_con.get(1).path}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">BEST SALER</span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="${pageContext.request.contextPath}/products/${single_product.slug}">${single_product.product_name}</a></h4>
                                            <ul class="price d-flex">
                                                <li>$${single_product.product_price - (single_product.product_price * (single_product.sale_off/100))}</li>
                                                <li class="old_price">$${single_product.product_price}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <c:if test="${cart!=null}">
                                                            <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${single_product.product_quantity}" onclick="addProductToCart(this)" href="javascript:void(0)" data-cart="${cart.id}" data-email="${email}" data-product="${single_product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                                                        </c:if>
                                                        <c:if test="${email!=null && cart == null}">
                                                            <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${single_product.product_quantity}" onclick="addProductToCart(this)" data-email="${email}" href="javascript:void(0)" data-product="${single_product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                                                        </c:if>
                                                        <c:if test="${email==null && cart == null}">
                                                            <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${single_product.product_quantity}" href="${pageContext.request.contextPath}/auth/login" data-product="${single_product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                                                        </c:if>
                                                        <li><a class="wishlist d-flex justify-content-center align-items-center" href="wishlist.html"><i
                                                                class="bi bi-shopping-cart-full"></i></a></li>
                                                        <li><a class="compare d-flex justify-content-center align-items-center" href="#"><i
                                                                class="bi bi-heart-beat"></i></a></li>
                                                        <li><a data-bs-toggle="modal" title="Quick View"
                                                               class="quickview d-flex justify-content-center align-items-center modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="fa fa-star-o"></i></li>
                                                    <li class="on"><i class="fa fa-star-o"></i></li>
                                                    <li class="on"><i class="fa fa-star-o"></i></li>
                                                    <li><i class="fa fa-star-o"></i></li>
                                                    <li><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Start Single Product -->
                            </div>
                        </c:forEach>
                    </c:forEach>
                </div>
            </div>
            <c:forEach var="categoryP" items="${data.productByCategoryDtos}">
                <div class=" single__tab tab-pane" id="nav-${categoryP.toSlug()}" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach var="single_product" items="${categoryP.productViewDtoList}">
                            <div class="single__product">
                                <!-- Start Single Product -->
                                <div class="single__product__inner">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="${pageContext.request.contextPath}/products/${single_product.slug}"><img
                                                    style="height: 300px;object-fit: cover;" src="${pageContext.request.contextPath}${single_product.images_con.get(0).path}" alt="product image"></a>
                                            <a class="second__img animation1" href="${pageContext.request.contextPath}/products/${single_product.slug}"><img
                                                    style="height: 300px;object-fit: cover;" src="${pageContext.request.contextPath}${single_product.images_con.get(1).path}" alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">BEST SALER</span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="${pageContext.request.contextPath}/products/${single_product.slug}">${single_product.product_name}</a></h4>
                                            <ul class="price d-flex">
                                                <li>$${single_product.product_price - (single_product.product_price * (single_product.sale_off/100))}</li>
                                                <li class="old_price">$${single_product.product_price}</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <c:if test="${cart!=null}">
                                                            <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${single_product.product_quantity}" onclick="addProductToCart(this)" href="javascript:void(0)" data-cart="${cart.id}" data-email="${email}" data-product="${single_product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                                                        </c:if>
                                                        <c:if test="${email!=null && cart == null}">
                                                            <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${single_product.product_quantity}" onclick="addProductToCart(this)" data-email="${email}" href="javascript:void(0)" data-product="${single_product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                                                        </c:if>
                                                        <c:if test="${email==null && cart == null}">
                                                            <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${single_product.product_quantity}" href="${pageContext.request.contextPath}/auth/login" data-product="${single_product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                                                        </c:if>tems-center" href="cart.html"><i
                                                                class="bi bi-shopping-bag4"></i></a></li>
                                                        <li><a class="wishlist d-flex justify-content-center align-items-center" href="wishlist.html"><i
                                                                class="bi bi-shopping-cart-full"></i></a></li>
                                                        <li><a class="compare d-flex justify-content-center align-items-center" href="#"><i
                                                                class="bi bi-heart-beat"></i></a></li>
                                                        <li><a data-bs-toggle="modal" title="Quick View"
                                                               class="quickview d-flex justify-content-center align-items-center modal-view detail-link"
                                                               href="#productmodal"><i class="bi bi-search"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="fa fa-star-o"></i></li>
                                                    <li class="on"><i class="fa fa-star-o"></i></li>
                                                    <li class="on"><i class="fa fa-star-o"></i></li>
                                                    <li><i class="fa fa-star-o"></i></li>
                                                    <li><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Start Single Product -->
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </c:forEach>
            <!-- End Single Tab Content -->
        </div>
    </div>
</section>
<!-- Footer Area -->
<div id="quickview-wrapper">
    <!-- Modal -->
    <div class="modal fade" id="productmodal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal__container" role="document">
            <div class="modal-content">
                <div class="modal-header modal__header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="modal-product">
                        <!-- Start product images -->
                        <div class="product-images">
                            <div class="main-image images">
                                <img alt="big images" src="images/product/big-img/1.jpg">
                            </div>
                        </div>
                        <!-- end product images -->
                        <div class="product-info">
                            <h1>Simple Fabric Bags</h1>
                            <div class="rating__and__review">
                                <ul class="rating">
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                </ul>
                                <div class="review">
                                    <a href="#">4 customer reviews</a>
                                </div>
                            </div>
                            <div class="price-box-3">
                                <div class="s-price-box">
                                    <span class="new-price">$17.20</span>
                                    <span class="old-price">$45.00</span>
                                </div>
                            </div>
                            <div class="quick-desc">
                                Designed for simplicity and made from high quality materials. Its sleek geometry
                                and material combinations creates a modern look.
                            </div>
                            <div class="select__color">
                                <h2>Select color</h2>
                                <ul class="color__list">
                                    <li class="red"><a title="Red" href="#">Red</a></li>
                                    <li class="gold"><a title="Gold" href="#">Gold</a></li>
                                    <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                    <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                </ul>
                            </div>
                            <div class="select__size">
                                <h2>Select size</h2>
                                <ul class="color__list">
                                    <li class="l__size"><a title="L" href="#">L</a></li>
                                    <li class="m__size"><a title="M" href="#">M</a></li>
                                    <li class="s__size"><a title="S" href="#">S</a></li>
                                    <li class="xl__size"><a title="XL" href="#">XL</a></li>
                                    <li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
                                </ul>
                            </div>
                            <div class="social-sharing">
                                <div class="widget widget_socialsharing_widget">
                                    <h3 class="widget-title-modal">Share this product</h3>
                                    <ul class="social__net social__net--2 d-flex justify-content-start">
                                        <li class="facebook"><a href="#" class="rss social-icon"><i
                                                class="zmdi zmdi-rss"></i></a></li>
                                        <li class="linkedin"><a href="#" class="linkedin social-icon"><i
                                                class="zmdi zmdi-linkedin"></i></a></li>
                                        <li class="pinterest"><a href="#" class="pinterest social-icon"><i
                                                class="zmdi zmdi-pinterest"></i></a></li>
                                        <li class="tumblr"><a href="#" class="tumblr social-icon"><i
                                                class="zmdi zmdi-tumblr"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="addtocart-btn">
                                <a href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--js--%>
