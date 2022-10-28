<%@ page import="java.util.List" %>
<%@ page import="com.syld.store.dto.ProductViewDto" %>
<%@ page import="com.syld.store.dto.ShopViewDto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- End Search Popup -->
<!-- Start breadcrumb area -->
<div class="ht__breadcrumb__area bg-image--5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__inner text-center">
                    <c:if test="${category!=null}">
                        <h2 style="color: black" class="breadcrumb-title">${category.category_name}</h2>
                    </c:if>
                    <c:if test="${category==null}">
                        <h2 style="color:black;" class="breadcrumb-title">Store</h2>
                    </c:if>
                    <nav class="breadcrumb-content">
                        <a class="breadcrumb_item" style="color: black" href="${pageContext.request.contextPath}/">Home</a>
                        <span class="brd-separator" style="color: black">/</span>
                        <c:if test="${category!=null}">
                            <span   style="color: black" class="breadcrumb_item active">${category.category_name}</span>
                        </c:if>
                        <c:if test="${category==null}">
                            <span style="color:black;" class="breadcrumb_item active">Store</span>
                        </c:if>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End breadcrumb area -->
<!-- Start Shop Page -->
<div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
<div class="container">
<div class="row">
<div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
    <div class="shop__sidebar">
        <aside class="widget__categories products--cat">
            <h3 class="widget__title">Product Categories</h3>
            <ul>
                <c:forEach var="category" items="${data.categories}">
                    <li>
                        <a href="${pageContext.request.contextPath}/store?category=${category.categoryDto.category_slug}&page=1&limit=18">${category.categoryDto.category_name}
                            <span>(${category.product_count})</span></a></li>
                </c:forEach>
            </ul>
        </aside>
        <aside class="widget__categories pro--range">
            <h3 class="widget__title">Filter by price</h3>
            <div class="content-shopby">
                <div class="price_filter s-filter clear">
                    <form action="#" method="GET">
                        <div id="slider-range"></div>
                        <div class="slider__range--output">
                            <div class="price__output--wrap">
                                <div class="price--output">
                                    <span>Price :</span><input type="text" id="amount" readonly="">
                                </div>
                                <div class="price--filter">
                                    <a href="#">Filter</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </aside>
        <aside class="widget__categories products--tag">
            <h3 class="widget__title">Product Tags</h3>
            <ul>
                <c:forEach var="tag" items="${data.tags}">
                    <li>
                        <a href="${pageContext.request.contextPath}/store?tag=${tag.tag_name}&page=1&limit=9">${tag.tag_name}</a>
                    </li>
                </c:forEach>
            </ul>
        </aside>
    </div>
</div>
<div class="col-lg-9 col-12 order-1 order-lg-2">
<div class="row">
    <div class="col-lg-12">
        <div
                class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
            <div class="shop__list nav justify-content-center" role="tablist">
                <a class="nav-item nav-link active d-flex justify-content-center align-items-center"
                   data-bs-toggle="tab" href="#nav-grid" role="tab"><i
                        class="fa fa-th"></i></a>
                <a class="nav-item nav-link  d-flex justify-content-center align-items-center" data-bs-toggle="tab"
                   href="#nav-list"
                   role="tab"><i class="fa fa-list"></i></a>
            </div>
            <p>Showing ${data.productViewDtoList.getContent().size()} of ${data.productViewDtoList.getTotalElements()}
                results</p>
            <div class="orderby__wrapper">
                <span>Sort By</span>
                <select class="shot__byselect">
                    <option>Default sorting</option>
                    <option>HeadPhone</option>
                    <option>Furniture</option>
                    <option>Jewellery</option>
                    <option>Handmade</option>
                    <option>Kids</option>
                </select>
            </div>
        </div>
    </div>
</div>
<div class="tab__container tab-content">
<div class="shop-grid tab-pane fade active" id="nav-grid" role="tabpanel">
<div class="row">
    <c:forEach var="product" items="${data.productViewDtoList.getContent()}">
        <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
            <div class="product__thumb">
                <a class="first__img" href="${pageContext.request.contextPath}/products/${product.slug}"><img
                        style="height: 300px;object-fit:cover;"
                        src="${pageContext.request.contextPath}${product.images_con.get(0).path}"
                        alt="product image"></a>
                <a class="second__img animation1"
                   href="${pageContext.request.contextPath}/products/${product.slug}"><img
                        style="height: 300px;object-fit:cover;"
                        src="${pageContext.request.contextPath}${product.images_con.get(1).path}"
                        alt="product image"></a>
                <div class="hot__box">
                    <span class="hot-label">BEST SALLER</span>
                </div>
            </div>
            <div class="product__content content--center">
                <h4><a href="${pageContext.request.contextPath}/products/${product.slug}">${product.product_name}</a>
                </h4>
                <ul class="price d-flex">
                    <li>$${product.getSalePrice()}</li>
                    <li class="old_price">$${product.product_price}</li>
                </ul>
                <div class="action">
                    <div class="actions_inner">
                        <ul class="add_to_links">
                            <c:if test="${cart!=null}">
                                <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${product.product_quantity}" onclick="addProductToCart(this)" href="javascript:void(0)" data-cart="${cart.id}" data-email="${email}" data-product="${product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                            </c:if>
                            <c:if test="${email!=null && cart == null}">
                                <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${product.product_quantity}" onclick="addProductToCart(this)" data-email="${email}" href="javascript:void(0)" data-product="${product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
                            </c:if>
                            <c:if test="${email==null && cart == null}">
                                <li><a class="cart d-flex justify-content-center align-items-center" data-limit="${product.product_quantity}" href="${pageContext.request.contextPath}/auth/login" data-product="${product.id}"><i class="bi bi-shopping-bag4"></i></a></li>
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
    </c:forEach>
</div>
<ul class="wn__pagination">
<%
    int pages = Integer.parseInt(request.getAttribute("pages").toString());
    int current = Integer.parseInt(request.getAttribute("current_page").toString());
    int limit = Integer.parseInt(request.getAttribute("limit").toString());
    for (int i = 1; i <= pages; i++) {
        %>
        <% if (i == current) {
        %>
        <li class="active"><a><%=i%>
        </a></li>
        <% } else { %>
            <c:if test="${category!=null}">
                <li><a href="${pageContext.request.contextPath}/store?category=${category.category_slug}&page=<%=i%>&limit=<%=limit%>"><%=i%></a></li>
            </c:if>
            <c:if test="${tag!=null}">
                <li><a href="${pageContext.request.contextPath}/store?tag=${tag.tag_name}&page=<%=i%>&limit=<%=limit%>"><%=i%></a></li>
            </c:if>

            <c:if test="${category==null && tag == null}">
                <li><a href="${pageContext.request.contextPath}/store?page=<%=i%>&limit=<%=limit%>"><%=i%></a></li>
            </c:if>
        <% } %>
    <% } %>
    <li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
    </ul>
    </div>
    <div class="shop-grid tab-pane fade show " id="nav-list" role="tabpanel">
    <div class="list__view__wrapper">
        <c:forEach var="product_list" items="${data.productViewDtoList.getContent()}">
        <div class="list__view mt--40">
            <div class="thumb">
                <a class="first__img" href="${pageContext.request.contextPath}/products/${product_list.slug}"><img
                        src="${pageContext.request.contextPath}${product_list.images_con.get(0).path}"
                        alt="product images"></a>
                <a class="second__img animation1"
                   href="${pageContext.request.contextPath}/products/${product_list.slug}"><img
                        src="${pageContext.request.contextPath}${product_list.images_con.get(0).path}"
                        alt="product images"></a>
            </div>
            <div class="content">
                <h2>
                    <a href="${pageContext.request.contextPath}/products/${product_list.slug}">${product_list.product_name}</a>
                </h2>
                <ul class="rating d-flex">
                    <li class="on"><i class="fa fa-star-o"></i></li>
                    <li class="on"><i class="fa fa-star-o"></i></li>
                    <li class="on"><i class="fa fa-star-o"></i></li>
                    <li class="on"><i class="fa fa-star-o"></i></li>
                    <li><i class="fa fa-star-o"></i></li>
                    <li><i class="fa fa-star-o"></i></li>
                </ul>
                <ul class="price__box">
                    <li>$${product_list.getSalePrice()}</li>
                    <li class="old__price">$${product_list.product_price}</li>
                </ul>
                <p>${product_list.product_desc}</p>
                <ul class="cart__action d-flex">
                    <c:if test="${cart!=null}">
                        <li class="cart"><a class="cart d-flex justify-content-center align-items-center" data-limit="${product_list.product_quantity}" onclick="addProductToCart(this)" href="javascript:void(0)" data-cart="${cart.id}" data-email="${email}" data-product="${product_list.id}">Add To Cart</a></li>
                    </c:if>
                    <c:if test="${email!=null && cart == null}">
                        <li class="cart"><a class="cart d-flex justify-content-center align-items-center" data-limit="${product_list.product_quantity}" onclick="addProductToCart(this)" data-email="${email}" href="javascript:void(0)" data-product="${product_list.id}"><i class="bi bi-shopping-bag4">1</i></a></li>
                    </c:if>
                    <c:if test="${email==null && cart == null}">
                        <li class="cart"><a class="cart d-flex justify-content-center align-items-center" data-limit="${product_list.product_quantity}" href="${pageContext.request.contextPath}/auth/login" data-product="${product_list.id}"><i class="bi bi-shopping-bag4"></i>2</a></li>
                    </c:if>
                    <li class="wishlist"><a href="cart.html"></a></li>
                    <li class="compare"><a href="cart.html"></a></li>
                </ul>

            </div>
        </div>
    </c:forEach>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- End Shop Page -->
    <!-- //Footer Area -->
    <!-- QUICKVIEW PRODUCT -->
    <div id="quickview-wrapper">
    <!-- Modal -->
    <div class="modal fade" id="productmodal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal__container" role="document">
    <div class="modal-content">
    <div class="modal-header modal__header">
    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"></button>
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
