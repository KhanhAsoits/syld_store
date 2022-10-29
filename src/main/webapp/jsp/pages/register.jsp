<%@ taglib prefix="spForm" uri="http://www.springframework.org/tags/form" %>
<section class="my_account_area pt--80 pb--55 bg--image--1">
    <div class="container">
        <div class="row">
            <div class="col-4 "></div>
            <div class="col-5 ">
                <div class="my__account__wrapper">
                    <br>
                    <h3 class="account__title">Register</h3>
                    <span style="color: red">${message}</span>
                    <%--@elvariable id="user_reg" type=""--%>
                    <spForm:form method="post" action="${pageContext.request.contextPath}/auth/register" modelAttribute="user_reg">
                        <div class="account__form">
                            <div class="input__box">
                                <label>Email address <span>*</span></label>
                                <spForm:input path="email" type="email"/>
                                <spForm:errors path="email"/>
                            </div>
                            <div class="input__box">
                                <label>Username <span>*</span></label>
                                <spForm:input path="username"/>
                                <spForm:errors path="username"/>
                            </div>
                            <div class="input__box">
                                <label>Password<span>*</span></label>
                                <spForm:input  path="password" type="password"/>
                                <spForm:errors path="password"/>
                            </div>
                            <div class="input__box">
                                <label>RePassword<span>*</span></label>
                                <spForm:input  path="rePassword" type="password"/>
                                <spForm:errors  path="rePassword" />
                            </div>
                            <div class="input__box">
                                <label>Address</label>
                                <spForm:input path="address"/>
                                <spForm:errors path="address"/>
                            </div>
                            <div class="input__box">
                                <label>Number Phone</label>
                                <spForm:input path="phone_number"/>
                                <spForm:errors path="phone_number"/>
                            </div>
                            <div class="form__btn">
                                <button>Register</button>
                            </div>
                            <p class="small fw-bold mt-2 pt-1 mb-0">I have an account. </p><a class="Register" href="login">Login.</a>
                        </div>
                    </spForm:form>
                </div>
            </div>
            <div class="col-4 "></div>
        </div>
    </div>
</section>
