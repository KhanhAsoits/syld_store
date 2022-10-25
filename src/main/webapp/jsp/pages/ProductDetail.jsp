<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="ht__breadcrumb__area bg-image--4">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__inner text-center">
                    <h2 class="breadcrumb-title">${single_product.product_name}</h2>
                    <nav class="breadcrumb-content">
                        <a class="breadcrumb_item" href="index.html">Home</a>
                        <span class="brd-separator">/</span>
                        <span class="breadcrumb_item active">${single_product.product_name}</span>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="maincontent bg--white pt--80 pb--55">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-12">
                <div class="wn__single__product">
                    <div class="row">
                        <div class="col-lg-6 col-12">
                            <div class="wn__fotorama__wrapper">
                                <div class="fotorama wn__fotorama__action" data-nav="thumbs">
                                    <c:forEach var="thumbnail" items="${single_product.images_con}">
                                        <a href="1.html"><img src="${pageContext.request.contextPath}${thumbnail.path}" alt=""></a>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="product__info__main">
                                <h1>${single_product.product_name}</h1>
                                <div class="product-reviews-summary d-flex">
                                    <ul class="rating-summary d-flex">
                                        <li><i class="zmdi zmdi-star-outline"></i></li>
                                        <li><i class="zmdi zmdi-star-outline"></i></li>
                                        <li><i class="zmdi zmdi-star-outline"></i></li>
                                        <li class="off"><i class="zmdi zmdi-star-outline"></i></li>
                                        <li class="off"><i class="zmdi zmdi-star-outline"></i></li>
                                    </ul>
                                </div>
                                <div class="price-box">
                                    <span>$${single_product.getSalePrice()}</span>
                                </div>
                                <div class="product__overview">
                                   ${single_product.product_desc}
                                </div>
                                <div class="box-tocart d-flex">
                                    <span>Qty</span>
                                    <input id="qty" class="input-text qty" name="qty" min="1" value="${single_product.product_quantity}"
                                           title="Qty" type="number">
                                    <div class="addtocart__actions">
                                        <button class="tocart" type="submit" title="Add to Cart">Add to
                                            Cart
                                        </button>
                                    </div>
                                    <div class="product-addto-links clearfix">
                                        <a class="wishlist" href="#"></a>
                                        <a class="compare" href="#"></a>
                                    </div>
                                </div>
                                <div class="product_meta">
											<span class="posted_in">Category:
												<a href="${pageContext.request.contextPath}/store?category=${single_product.category.category_slug}">${single_product.category.category_name}</a>,
											</span>
                                </div>
                                <div class="product-share">
                                    <ul>
                                        <li class="categories-title">Share :</li>
                                        <li>
                                            <a href="#" class="d-flex justify-content-center align-items-center">
                                                <i class="icon-social-twitter icons"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="d-flex justify-content-center align-items-center">
                                                <i class="icon-social-tumblr icons"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="d-flex justify-content-center align-items-center">
                                                <i class="icon-social-facebook icons"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="d-flex justify-content-center align-items-center">
                                                <i class="icon-social-linkedin icons"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product__info__detailed">
                    <div class="pro_details_nav nav justify-content-start" role="tablist">
                        <a class="nav-item nav-link active" data-bs-toggle="tab" href="#nav-details"
                           role="tab">Details</a>
<%--                        <a class="nav-item nav-link" data-bs-toggle="tab" href="#nav-review" role="tab">Reviews</a>--%>
                    </div>
                    <div class="tab__container tab-content">
                        <!-- Start Single Tab Content -->
                        <div class="pro__tab_label tab-pane fade show active" id="nav-details" role="tabpanel">
                            <div class="description__attribute">
                                ${single_product.product_detail}
                            </div>
                        </div>
                        <!-- End Single Tab Content -->
                        <!-- Start Single Tab Content -->
<%--                        <div class="pro__tab_label tab-pane fade" id="nav-review" role="tabpanel">--%>
<%--                            <div class="review__attribute">--%>
<%--                                <h1>Customer Reviews</h1>--%>
<%--                                <h2>Hastech</h2>--%>
<%--                                <div class="review__ratings__type d-flex">--%>
<%--                                    <div class="review-ratings">--%>
<%--                                        <div class="rating-summary d-flex">--%>
<%--                                            <span>Quality</span>--%>
<%--                                            <ul class="rating d-flex">--%>
<%--                                                <li><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>

<%--                                        <div class="rating-summary d-flex">--%>
<%--                                            <span>Price</span>--%>
<%--                                            <ul class="rating d-flex">--%>
<%--                                                <li><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="rating-summary d-flex">--%>
<%--                                            <span>value</span>--%>
<%--                                            <ul class="rating d-flex">--%>
<%--                                                <li><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="review-content">--%>
<%--                                        <p>Hastech</p>--%>
<%--                                        <p>Review by Hastech</p>--%>
<%--                                        <p>Posted on 11/6/2018</p>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="review-fieldset">--%>
<%--                                <h2>You're reviewing:</h2>--%>
<%--                                <h3>Chaz Kangeroo Hoodie</h3>--%>
<%--                                <div class="review-field-ratings">--%>
<%--                                    <div class="product-review-table">--%>
<%--                                        <div class="review-field-rating d-flex">--%>
<%--                                            <span>Quality</span>--%>
<%--                                            <ul class="rating d-flex">--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="review-field-rating d-flex">--%>
<%--                                            <span>Price</span>--%>
<%--                                            <ul class="rating d-flex">--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="review-field-rating d-flex">--%>
<%--                                            <span>Value</span>--%>
<%--                                            <ul class="rating d-flex">--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                                <li class="off"><i class="zmdi zmdi-star"></i></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="review_form_field">--%>
<%--                                    <div class="input__box">--%>
<%--                                        <span>Nickname</span>--%>
<%--                                        <input id="nickname_field" type="text" name="nickname">--%>
<%--                                    </div>--%>
<%--                                    <div class="input__box">--%>
<%--                                        <span>Summary</span>--%>
<%--                                        <input id="summery_field" type="text" name="summery">--%>
<%--                                    </div>--%>
<%--                                    <div class="input__box">--%>
<%--                                        <span>Review</span>--%>
<%--                                        <textarea name="review"></textarea>--%>
<%--                                    </div>--%>
<%--                                    <div class="review-form-actions">--%>
<%--                                        <button>Submit Review</button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <!-- End Single Tab Content -->
                    </div>
                </div>
                <div class="wn__related__product pt--80 pb--50">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">Related Products</h2>
                    </div>
                    <div class="row mt--60">
                        <div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
                            <c:forEach var="product" items="${related_product}">
                                <!-- Start Single Product -->
                                <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
                                    <div class="product__thumb">
                                        <a class="first__img" href="${pageContext.request.contextPath}/products/${product.slug}"><img
                                                src="${pageContext.request.contextPath}${product.images_con.get(0).path}" alt="product image"></a>
                                        <a class="second__img animation1" href="${pageContext.request.contextPath}/products/${product.slug}"><img
                                                src="${pageContext.request.contextPath}${product.images_con.get(0).path}" alt="product image"></a>
                                        <div class="hot__box">
                                            <span class="hot-label">RELATED</span>
                                        </div>
                                    </div>
                                    <div class="product__content content--center">
                                        <h4><a href="single-product.html">${product.product_name}</a></h4>
                                        <ul class="price d-flex">
                                            <li>$${product.getSalePrice()}</li>
                                            <li class="old_price">$${product.product_price}</li>
                                        </ul>
                                        <div class="action">
                                            <div class="actions_inner">
                                                <ul class="add_to_links">
                                                    <li><a class="cart d-flex justify-content-center align-items-center" href="cart.html"><i
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
                                <!-- Start Single Product -->
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
                <div class="shop__sidebar">
                    <aside class="widget__categories products--cat">
                        <h3 class="widget__title">Product Categories</h3>
                        <ul>
                            <c:forEach var="category" items="${category_and_tag.categories}">
                                <li><a href="${pageContext.request.contextPath}/store?category=${category.categoryDto.category_slug}&page=1&limit=9">${category.categoryDto.category_name} <span>(${category.product_count})</span></a></li>
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
                            <c:forEach var="tag" items="${category_and_tag.tags}">
                                <li><a href="${pageContext.request.contextPath}/store?tag=${tag.tag_name}&page=1&limit=9">${tag.tag_name}</a></li>
                            </c:forEach>

                        </ul>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End main Content -->
<!-- Start Search Popup -->
<div class="box-search-content search_active block-bg close__top">
    <form id="search_mini_form--2" class="minisearch" action="#">
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