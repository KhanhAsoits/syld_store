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
                <h1>Danh mục sản phẩm</h1>
                <p class="breadcrumbs"><span><a href="${pageContext.request.contextPath}/admin/dashboard">Trang chủ</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>Danh sách danh mục</p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/categories/create" class="btn btn-primary">Thêm danh mục sản phẩm</a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-body">
                        <div class="table-responsive" style="overflow-x: hidden">
                            <table id="responsive-data-table" class="table"
                                   style="width:100%">
                                <thead>
                                <tr>
                                    <th>Ảnh danh mục</th>
                                    <th>Tên danh mục</th>
                                    <th>tênn không dấu</th>
                                    <th>Danh mục chính</th>
                                    <th>Trạng thái</th>
                                    <th>Thao tác</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="category" items="${categories}">
                                    <tr>
                                        <td><img style="box-shadow: 1px 1px 6px rgba(0,0,0,0.2)" class="tbl-thumb"
                                                 src="${pageContext.request.contextPath}${category.category_thumbnail}"
                                                 alt="Product Image"/></td>
                                        <td>${category.category_name}</td>
                                        <td>${category.category_slug}</td>
                                        <c:if test="${category.parent==null}">
                                            <td>Danh mục chính</td>
                                        </c:if>
                                        <c:if test="${category.parent!=null}">
                                            <td>${category.parent.category_name}</td>
                                        </c:if>
                                        <td style="color: ${category.state?'blue':'red'}">${category.state?"Active":"Deleted"}</td>
                                        <td>
                                            <div class="btn-group mb-1">
                                                <button type="button"
                                                        class="btn btn-outline-success"><a
                                                        href="${pageContext.request.contextPath}/admin/categories/${category.category_slug}">Chi tiết</a>
                                                </button>
                                                <button type="button"
                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false" data-display="static">
                                                    <span class="sr-only">Chi tiết</span>
                                                </button>

                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/categories/update/${category.category_slug}">Sửa</a>
                                                    <c:if test="${category.state}">
                                                        <a class="dropdown-item"
                                                           href="${pageContext.request.contextPath}/admin/categories/remove/${category.id}">Xóa</a>
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

