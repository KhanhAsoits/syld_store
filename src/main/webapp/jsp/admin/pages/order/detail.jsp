<%@ taglib prefix="spForm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Edit Order</h1>
                <p class="breadcrumbs"><span><a href="${pageContext.request.contextPath}/home">Home</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>Order</p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/orders" class="btn btn-primary"> View All
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-header card-header-border-bottom">
                        <h2>Detail Order</h2>
                    </div>
                    <%--@elvariable id="order_detail" type=""--%>
                    <spForm:form action="${pageContext.request.contextPath}/admin/orders/update" method="post"
                                 modelAttribute="order_detail">
                        <div class="card-body">
                            <div class="row ec-vendor-uploads">
                                <div class="col-lg-4">
                                </div>
                                <div class="col-lg-8">
                                    <div class="ec-vendor-upload-detail">
                                        <div class="row g-3">
                                            <div class="col-md-6">

                                                <spForm:input hidden="hidden" path="id" type="text"
                                                              class="form-control slug-title" value="${order_detail.id}"/>

                                                <spForm:label path="order_name"
                                                              class="form-label">Order name</spForm:label>
                                                <spForm:input path="order_name" type="text"
                                                              class="form-control slug-title" value="${orders.order_name}" required="true"/>
                                                <spForm:errors path="order_name" cssStyle="color: red;font-size: 12px"/>
                                                <br/>

                                                <spForm:label path="order_amount"
                                                              class="form-label">Amount</spForm:label>
                                                <spForm:input path="order_amount" type="text"
                                                              class="form-control slug-title" value="${orders.order_name}" required="true"/>
                                                <spForm:errors path="order_amount" cssStyle="color: red;font-size: 12px"/>

                                                <br/>

                                                <spForm:label path="order_state"
                                                              class="form-label">Amount</spForm:label>
                                                <spForm:input path="order_state" type="text"
                                                              class="form-control slug-title" value="${order.order_state}" required="true"/>
                                                <spForm:errors path="order_state" cssStyle="color: red;font-size: 12px"/>

                                            </div>

                                            <div class="col-md-12 my-3">
                                                <button type="submit" class="btn btn-primary">Submit</button>
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