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
                    <h4 class="account__title">Quên mật khẩu</h4>
                    <p style="color: red" class="lead fw-normal mb-0 me-3">${message}</p> <br>
                    <%--@elvariable id="user" type="com.syld.store.dto.ResetPasswordDto"--%>
                    <spForm:form action="${pageContext.request.contextPath}/auth/reset_password" id="loginForm"
                                 method="post" modelAttribute="user">
                        <spForm:input path="email" value="${user_email}" cssStyle="visibility: hidden"/>
                        <div class="account__form">
                            <div class="input__box">
                                <label>Mật khẩu mới<span>*</span></label>
                                <spForm:input path="new_password" id="email" type="password" required="required"/>
                                <spForm:errors path="new_password" cssStyle="font-size: 12px;color: red;"/>
                            </div>
                            <div class="input__box">
                                <label>Nhập lại mật khẩu mới<span>*</span></label>
                                <spForm:input path="re_new_password" id="email" type="password" required="required"/>
                                <spForm:errors path="re_new_password" cssStyle="font-size: 12px;color: red;"/>
                            </div>
                            <div class="form__btn">
                                <button id="sendBtn">Xác nhận</button>
                            </div>
                            <p class="small fw-bold mt-2 pt-1 mb-0">Đã nhớ mật khẩu </p><a
                                class="${pageContext.request.contextPath}/auth/login" href="">Đăng nhập</a>

                        </div>
                    </spForm:form>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-3 col-lg-4"></div>
    </div>
</section>
