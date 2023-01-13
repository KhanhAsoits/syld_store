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
                <h1>Danh sách màu</h1>
                <p class="breadcrumbs"><span><a href="home">Trang chủ</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span> Danh sách màu</p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/colors/create" class="btn btn-primary"> Thêm màu mới</a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-body">
                        <div class="table-responsive" style="overflow-x: hidden">
                            <table id="responsive-data-table" class="table">
                                <thead>
                                <tr>
                                    <th>Mã màu</th>
                                    <th>Tên màu</th>
                                    <th>Trạng thái</th>
                                    <th>Thao tác</th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach var="color" items="${colors}">
                                    <td>${color.color_code}</td>
                                    <td>${color.color_name}</td>
                                    <td>${color.state?"Active":"Deleted"}</td>

                                    <td>
                                        <div class="btn-group">
                                            <button type="button"
                                                    class="btn btn-outline-success"><a href="${pageContext.request.contextPath}/admin/colors/${color.color_name}">Chi tiết</a>
                                            </button>
                                            <button type="button"
                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                    aria-expanded="false" data-display="static">
                                                <span class="sr-only">Chi tiết</span>
                                            </button>

                                            <div class="dropdown-menu">
                                                <a class="dropdown-item"
                                                   href="${pageContext.request.contextPath}/admin/colors/update/${color.color_name}">Sửa</a>
                                                <c:if test="${color.state}">
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/colors/remove/${color.id}">Xóa</a>
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
