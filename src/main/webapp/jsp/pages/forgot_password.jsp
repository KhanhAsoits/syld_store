<%@ taglib prefix="spForm" uri="http://www.springframework.org/tags/form" %>
<style>
    .disabled {
        background-color: rgba(0, 0, 0, 0.1) !important;
        border-color: rgba(0, 0, 0, 0.1) !important;
        color: rgba(0, 0, 0, 0.1) !important;
    }

</style>
<section class="my_account_area pt--80 pb--55 bg-white my-5">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-3 col-lg-4"></div>
            <div class="col-12 col-md-6  col-lg-4">
                <div class="my__account__wrapper">
                    <br>

                    <h4 class="account__title">Cập nhật lại mật khẩu</h4>
                    <p style="color: red" class="lead fw-normal mb-0 me-3">${message}</p> <br>
                    <%--@elvariable id="user" type="com.syld.store.dto.UserForgotPassword"--%>
                    <spForm:form action="${pageContext.request.contextPath}/auth/forgot_password" id="loginForm"
                                 method="post" modelAttribute="user">
                        <div class="account__form">
                            <div class="input__box">
                                <label>Email hoặc số điện thoại<span>*</span></label>
                                <spForm:input path="emailOrPhone" id="email" type="email" required="required"/>
                                <spForm:errors path="emailOrPhone" cssStyle="font-size: 12px;color: red;"/>
                            </div>
                            <div class="form__btn">
                                <button id="sendBtn">Xác nhận</button>
                            </div>
                            <p class="small fw-bold mt-2 pt-1 mb-0">Đã nhớ lại mật khẩu ? </p><a
                                class="${pageContext.request.contextPath}/auth/login" href="">Đăng nhập</a>

                        </div>
                    </spForm:form>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-3 col-lg-4"></div>
    </div>
</section>
