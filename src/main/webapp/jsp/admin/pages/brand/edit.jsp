<%@ taglib prefix="spForm" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Chỉnh sửa thương hiệu</h1>
                <p class="breadcrumbs"><span><a href="${pageContext.request.contextPath}/home">Trang chủ</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>Brand</p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/brands" class="btn btn-primary"> Danh sách thương hiệu
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-header card-header-border-bottom">
                        <h2>Chỉnh sửa thương hiệu</h2>
                    </div>
                    <%--@elvariable id="brand_edit" type=""--%>
                    <spForm:form enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/brands/update" method="post"
                                 modelAttribute="brand_edit">
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
                                                             src="${pageContext.request.contextPath}${brand_edit.brand_logo}"
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
                                                              class="form-control slug-title" value="${brand_edit.id}"/>

                                                <spForm:label path="brand_name"
                                                              class="form-label">Tên thương hiệu</spForm:label>
                                                <spForm:input path="brand_name" type="text"
                                                              class="form-control slug-title" required="true"/>
                                                <spForm:errors path="brand_name" cssStyle="color: red;font-size: 12px"/>
                                                <br/>

                                                <spForm:label path="brand_slug"
                                                              class="form-label">Tên thương hiệu ( Không dấu )</spForm:label>
                                                <spForm:input path="brand_slug" type="text"
                                                              class="form-control slug-title" required="true"/>
                                                <spForm:errors path="brand_slug" cssStyle="color: red;font-size: 12px"/>
                                                <br/>
                                                <spForm:label path="brand_desc"
                                                              class="form-label">Mô tả về thương hiệu</spForm:label>
                                                <spForm:input path="brand_desc" type="text"
                                                              class="form-control slug-title" required="true"/>
                                                <spForm:errors path="brand_name" cssStyle="color: red;font-size: 12px"/>

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