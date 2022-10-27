<%@ taglib prefix="spForm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .form-control {
        border: 2px solid #ced4da !important;
    }

    .colors input {
        width: 43px;
        height: 46px;
        border: none !important;
    }

    .sizes {
        height: 46px;
    }

    .sizes div {
        height: 0 !important;
    }

    .ec-vendor-uploads .thumb-upload {
        border-radius: 8px !important;
        padding: 0 !important;
        box-shadow: 0 0 8px rgba(0, 0, 0, 0.6) !important;
        overflow: hidden;
    }
    #tags-preview{
        display: flex;
        align-items: flex-start;
        flex-wrap: wrap;
        min-height: 100px;
    }

    .avatar-preview {
        padding: 0 !important;
        transition: .2s ease;
        transform: scale(1.1);
    }

    .thumb-preview {
        padding: 0 !important;
        transform: scale(1.1);
    }

    .image-thumb-preview {
        object-fit: cover;
    }

    .avatar-upload {
        padding: 0 !important;
        overflow: hidden;
        transition: .2s ease;
        border-radius: 8px !important;
        box-shadow: 0 0 8px rgba(0, 0, 0, 0.6) !important;
    }

    .tag{
        background-color: rgba(0,0,0,0.1);
        border-radius: 6px!important;
        cursor: pointer;
        margin:3px;
        display: inline-block;
    }
    .avatar-upload:hover .avatar-preview {
        transform: scale(1.2);
        transition: .2s ease;

    }
</style>
<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Add Cards</h1>
                <p class="breadcrumbs"><span><a href="${pageContext.request.contextPath}/admin">Home</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>Cards</p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/cards" class="btn btn-primary"> View All
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-header card-header-border-bottom">
                        <h2>Add Card</h2>
                    </div>
                    <div class="card-body">
                        <%--@elvariable id="cards" type=""--%>
                        <spForm:form class="row ec-vendor-uploads" action="${pageContext.request.contextPath}/admin/cards/create" modelAttribute="cards" enctype="multipart/form-data">
                            <div class="col-lg-4">
                                <div class="ec-vendor-img-upload">
                                    <div class="ec-vendor-main-img">
                                        <div class="avatar-upload">
                                            <div class="avatar-edit">
                                                <spForm:input path="file" type='file'
                                                              cssStyle="border: 2px solid #ced4da!important;"
                                                              id="imageUpload" cssClass="ec-image-upload"
                                                              accept=".png, .jpg, .jpeg" required="true"/>
                                                <spForm:label path="file" for="imageUpload"><img
                                                        src="${pageContext.request.contextPath}/assets/admin/img/icons/edit.svg"
                                                        class="svg_img header_svg" alt="edit"/></spForm:label>
                                            </div>
                                            <div class="avatar-preview ec-preview">
                                                <div class="imagePreview ec-div-preview">
                                                    <img class="ec-image-preview"
                                                         src="${pageContext.request.contextPath}/assets/admin/img/products/vender-upload-preview.jpg"
                                                         alt="edit"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="ec-vendor-upload-detail row">
                                    <div class="col-md-6">
                                        <spForm:label path="card_brand"
                                                      class="form-label">Name Card</spForm:label>
                                        <spForm:input path="card_brand" cssClass="form-control slug-title"
                                                      cssStyle="border: 2px solid #ced4da!important"
                                                      required="true"/>
                                        <spForm:errors path="card_brand" cssStyle="color: red;font-size: 12px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <spForm:label path="card_number"
                                                      class="form-label">Number Card</spForm:label>
                                        <spForm:input path="card_number" cssClass="form-control slug-title" type="email"
                                                      cssStyle="border: 2px solid #ced4da!important"
                                                      required="true"/>
                                        <spForm:errors path="card_number" cssStyle="color: red;font-size: 12px;"/>
                                    </div>
                                    <div class="py-2 col-12"></div>
                                    <div class="col-md-6">
                                    <div class="py-2 col-12"></div>

                                    <div class="col-md-6">
                                        <spForm:label path="user_id"
                                                      class="form-label">User Name</spForm:label>
                                        <spForm:select path="user_id" cssClass="form-control">
                                            <c:forEach var="user_id" items="${users}">
                                                <option value="${user.user_name}">${user.user_name}</option>
                                            </c:forEach>
                                        </spForm:select>
                                    </div>
                                    <div class="py-2 col-12"></div>
                                    <div class="my-2 col-12"></div>

                                    <div class="col-md-12">
                                        <spForm:button type="submit" class="btn btn-primary">Submit</spForm:button>
                                    </div>
                                </div>
                            </div>
                        </spForm:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

