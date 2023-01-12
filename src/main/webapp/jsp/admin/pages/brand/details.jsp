<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Chi tiết thương hiệu</h1>
                <p class="breadcrumbs"><span><a href="index.html">Trang chủ</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>Thương hiệu
                </p>
            </div>
            <div>
                <a href="product-list.html" class="btn btn-primary"> Danh sách thương hiệu
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-header card-header-border-bottom">
                        <h2>Mô tả về thương hiệu</h2>
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
                                                         src="${pageContext.request.contextPath}${brand_detail.brand_lo}"
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
                                        <label class="form-label">Tên thương hiệu</label>
                                        <input class="form-control slug-title"
                                               value=" ${brand_detail.brand_name}" readonly>

                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label">Tên thương hiệu ( Không dấu )</label>
                                        <input class="form-control slug-title"
                                               value=" ${brand_detail.category_slug}" readonly>

                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label">Mô tả về thương hiệu</label>
                                        <textarea class="form-control slug-title"
                                               value=" ${brand_detail.category_slug}" readonly>
                                        </textarea>
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
