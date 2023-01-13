<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .bottom-information {
        width: 100% !important;
    }

    div.dataTables_wrapper div.dataTables_info, div.dataTables_wrapper div.dataTables_paginate {
        padding: 0 16px !important;
    }
</style>
<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Danh sách sản phẩm</h1>
                <p class="breadcrumbs"><span><a href="${pageContext.request.contextPath}/admin/dashboard">Trang chủ</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>Danh sách sản phẩm</p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/products/create" class="btn btn-primary"> Thêm mới sản phẩm</a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-body">
                        <div class="table-responsive" style="overflow-x: hidden">
                            <table id="responsive-data-table" class="table"
                                   style="width:100%;vertical-align: middle">
                                <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Tên không dấu</th>
                                    <th>Danh mục</th>
                                    <th>Thương hiệu</th>
                                    <th>Giá tiền</th>
                                    <th>Giảm giá</th>
                                    <th>Số lượng</th>
                                    <th>Trạng thái</th>
                                    <th>Thời gian tạo</th>
                                    <th>Thao tác</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="product" items="${list}">
                                    <tr>
                                        <td>
                                            <c:forEach varStatus="loop" var="image" items="${product.thumbnails}">
                                                <c:if test="${loop.index == 0}">
                                                    <img style="box-shadow: 1px 1px 6px rgba(0,0,0,0.2);height: 60px;object-fit: cover" class="tbl-thumb"
                                                         src="${pageContext.request.contextPath}${image.path}"
                                                         alt="Product Image"/>
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                        <td>${product.product_name}</td>
                                        <td>${product.slug}</td>
                                        <td>${product.category.category_name}</td>
                                        <td>${product.brand.brand_name}</td>
                                        <td>${product.product_price}00 VND</td>
                                        <td>${product.sale_off}</td>
                                        <td>${product.product_quantity}</td>
                                        <td style="color: ${product.state?'blue':'red'}">${product.state?"Active":"Deleted"}</td>
                                        <td>${product.update_at.toString()}</td>
                                        <td>
                                            <div class="btn-group mb-1">
                                                <button type="button"
                                                        class="btn btn-outline-success"><a
                                                        href="${pageContext.request.contextPath}/admin/products/${product.id}">Chi tiết</a>
                                                </button>
                                                <button type="button"
                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false" data-display="static">
                                                    <span class="sr-only">Chi tiết</span>
                                                </button>

                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/products/update/${product.id}">Sửa</a>
                                                    <c:if test="${product.state}">
                                                        <a class="dropdown-item"
                                                           href="${pageContext.request.contextPath}/admin/products/remove/${product.id}">Xóa</a>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Content -->
</div>
<!-- End Content Wrapper -->

