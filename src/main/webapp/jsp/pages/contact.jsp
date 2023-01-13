<!-- Start Contact Area -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<br>
<section class="wn_contact_area bg--white pt--80 pb--80">
    <div class="google__map pb--80">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mapouter">
                        <div class="gmap_canvas">
<%--                            link tu sau https://www.google.com/maps/place/ --%>
                            <iframe id="gmap_canvas" src="https://maps.google.com/maps?q=5+dormitory+units+Dinh/@21.0325481,105.7635536,17zVietNam&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed"></iframe>
                            <a href="https://sites.google.com/view/maps-api-v2/mapv2"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-12">
                <div class="contact-form-wrap">
                    <h2 class="contact__title"><Cha>Liên lạc với chúng tôi</Cha></h2>
                    <p>Địa chỉ cửa hàng chính luôn sẵn sàng phục vụ khách hàng 24/7. </p>
                    <form id="contact-form" action="https://whizthemes.com/nazmul/php/mail.php" method="post">
                        <div class="single-contact-form space-between">
                            <input type="text" name="name" placeholder="Tên *">
                            <input type="email" name="email" placeholder="Email*">
                        </div>
                        <div class="single-contact-form">
                            <input type="text" name="subject" placeholder="Tiêu đề*">
                        </div>
                        <div class="single-contact-form message">
                            <textarea name="message" placeholder="Nhập nội dung ở đây..."></textarea>
                        </div>
                        <div class="contact-btn">
                            <button type="submit">Gửi Email</button>
                        </div>
                    </form>
                </div>
                <div class="form-output">
                    <p class="form-messege">
                </div>
            </div>
            <div class="col-lg-4 col-12 md-mt-40 sm-mt-40">
                <div class="wn__address">
                    <h2 class="contact__title">Thông tin văn phòng chi tiết.</h2>
                    <p>Văn phòng chăm sóc khách hàng luôn sẵn sàng phục vụ quý khách.
                    Tất cả câu hỏi thắc mắc liên hệ đều sẽ được đội tư vấn phục vụ.
                    Đặt lịch hẹn trước dễ dàng 24/7.</p>
                    <div class="wn__addres__wreapper">

                        <div class="single__address">
                            <i class="icon-location-pin icons"></i>
                            <div class="content">
                                <span>Địa chỉ:</span>
                                <p>Nam Tu Liem, Ha Noi</p>
                            </div>
                        </div>

                        <div class="single__address">
                            <i class="icon-phone icons"></i>
                            <div class="content">
                                <span>Đường dây nóng:</span>
                                <p>1888866222</p>
                            </div>
                        </div>

                        <div class="single__address">
                            <i class="icon-envelope icons"></i>
                            <div class="content">
                                <span>Địa chỉ email:</span>
                                <p>Syld.CSKH@gmail.com</p>
                            </div>
                        </div>

                        <div class="single__address">
                            <i class="icon-globe icons"></i>
                            <div class="content">
                                <span>website:</span>
                                <p>XXX-XXX-XXX</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Contact Area -->


</div>
<!-- //Main wrapper -->
