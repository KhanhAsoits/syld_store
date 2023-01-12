<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Chi tiết danh mục</h1>
                <p class="breadcrumbs"><span><a href="${pageContext.request.contextPath}/admin/dashboard">trang chủ</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span></span>Danh sách danh mục
                    <span><i class="mdi mdi-chevron-right"></i></span>
                    Chi tiết danh mục
                </p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/categories" class="btn btn-primary"> Danh sách danh mục
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-header card-header-border-bottom">
                        <h2>Chi tiết danh mục</h2>
                    </div>

                    <div class="card-body product-detail">
                        <div class="row">
                            <div class="col-xl-4 col-lg-6">
                                <div class="row">
                                    <div class="single-pro-img">
                                        <div class="single-product-scroll">
                                            <div class="single-product-cover">
                                                <div class="single-slide zoom-image-hover">
                                                    <img class="img-responsive"
                                                         src="${pageContext.request.contextPath}${category_detail.category_thumbnail}"
                                                         alt="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-6">
                                <div class="row product-overview">
                                    <div class="col-12 col-md-6">
                                        <label class="form-label">Tên danh mục</label>
                                        <input class="form-control slug-title"
                                               value=" ${category_detail.category_name}" readonly>

                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label">Tên không dấu</label>
                                        <input class="form-control slug-title"
                                               value=" ${category_detail.category_slug}" readonly>

                                    </div>
                                    <div class="col-12 col-md-6 mt-3">
                                        <label class="form-label">Danh mục chính</label>
                                        <c:if test="${category_detail.parent_id == 'parent'}">
                                            <input class="form-control slug-title"
                                                   value="${category_detail.category_name}" readonly>
                                        </c:if>
                                        <c:if test="${category_detail.parent_id != 'parent'}">
                                            <input class="form-control slug-title"
                                                   value="${parent.category_name}" readonly>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Content -->
</div>
<!-- End Content Wrapper -->
