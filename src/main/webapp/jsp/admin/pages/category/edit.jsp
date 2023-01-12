<%@ taglib prefix="spForm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Sửa danh mục sản phẩm</h1>
                <p class="breadcrumbs"><span><a href="${pageContext.request.contextPath}/admin/dashboard">Trang chủ</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span></span>Danh sách danh mục
                    <span><i class="mdi mdi-chevron-right"></i></span>Sửa danh mục</p>
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
                        <h2>Sửa danh mục </h2>
                    </div>
                    <%--@elvariable id="category_edit" type=""--%>
                    <spForm:form enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/categories/update" method="post"
                                 modelAttribute="category_edit">
                        <div class="card-body">
                            <div class="row ec-vendor-uploads">
                                <div class="col-lg-4">
                                    <div class="ec-vendor-img-upload">
                                        <div class="ec-vendor-main-img">
                                            <div class="avatar-upload">
                                                <div class="avatar-edit">
                                                    <spForm:input path="file" type='file' id="imageUpload"
                                                                  class="ec-image-upload"
                                                                  accept=".png, .jpg, .jpeg" />
                                                    <label for="imageUpload"><img
                                                            style="cursor: pointer" src="${pageContext.request.contextPath}/assets/admin/img/icons/edit.svg"
                                                            class="svg_img header_svg" alt="edit"/></label>
                                                </div>
                                                <div class="avatar-preview ec-preview">
                                                    <div class="imagePreview ec-div-preview">
                                                        <img id="img-preview" class="ec-image-preview"
                                                             src="${pageContext.request.contextPath}${category_edit.category_thumbnail}"
                                                             alt="edit"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="ec-vendor-upload-detail">
                                        <div class="row g-3">
                                            <div class="col-md-6">

                                                <spForm:input hidden="hidden" path="id" type="text"
                                                              class="form-control slug-title" value="${category_edit.id}"/>
                                                <spForm:label path="category_name"
                                                              class="form-label">Tên danh mục</spForm:label>
                                                <spForm:input path="category_name" type="text"
                                                              class="form-control slug-title" required="true"/>
                                                <br/>
                                                <spForm:label path="category_slug"
                                                              class="form-label">Tên không dấu</spForm:label>
                                                <spForm:input path="category_slug" type="text"
                                                              class="form-control slug-title" required="true"/>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Chọn danh mục chính</label>
                                                <spForm:select path="parent_id" class="form-select">
                                                    <spForm:option value="parent"><h6>Danh mục chính ( Parent )</h6></spForm:option>
                                                    <c:forEach var="category" items="${parent_categories}">
                                                        <option value="${category.id}" ${category.id == category_edit.id?'selected="selected"' : ''}><h6>${category.category_name}</h6></option>
                                                    </c:forEach>
                                                </spForm:select>
                                            </div>
                                            <div class="col-md-12 my-3">
                                                <button type="submit" class="btn btn-primary">Xác nhận</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </spForm:form>
                </div>
            </div>
        </div>
    </div> <!-- End Content -->
</div>
<!-- End Content Wrapper -->
<script>
    let imageUploadInput = document.getElementById("imageUpload")
    let previewer = document.getElementById("img-preview")

    const handleLoadPreview = (event) => {
        let url = URL.createObjectURL(event.target.files[0])
        previewer.setAttribute("src",url)
    }
    imageUploadInput.addEventListener("change", handleLoadPreview)

</script>