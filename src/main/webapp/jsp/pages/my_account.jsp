<%@ taglib prefix="spForm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section style="background-color: #eee;">
    <div class="container py-5">
        <br><br><br><br>
        <div class="row">
            <div class="col-lg-4">
                <div class="card mb-4">
                    <div class="card-body text-center">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1.webp"
                             alt="avatar"
                             class="rounded-circle mx-auto img-fluid" style="width: 150px;">
                        <h5 class="my-3">${user.username}</h5>
                        <p class="text-muted mb-1">Website Full Stack Developer</p>
                        <div class="d-flex justify-content-center mb-2">
                            <button type="button" class="btn btn-primary">Change Avatar</button>
                            <button type="button" class="btn btn-outline-primary ms-1">Edit</button>
                        </div>
                    </div>
                </div>
                <div class="card mb-4 mb-lg-0">
                    <div class="card-body p-0">
                        <ul class="list-group list-group-flush rounded-3">
                            <c:if test="${user.phone_number != null}">
                                <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                    <i class="fa fa-phone text-success"></i>
                                    <p class="mb-0">${user.phone_number}</p>
                                </li>
                            </c:if>
                            <c:if test="${user.email != null}">
                                <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                    <i class="fa fa-envelope-o text-warning"></i>
                                    <p class="mb-0">${user.email}</p>
                                </li>
                            </c:if>
                            <c:if test="${user.address != null}">
                                <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                    <i class="fa fa-address-card text-secondary"></i>
                                    <p class="mb-0">${user.address}</p>
                                </li>
                            </c:if>
                            <c:if test="${user.role != null}">
                                <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                    <i class="fa fa-user text-secondary"></i>
                                    <p class="mb-0">${user.role.role_name}</p>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <%--@elvariable id="my_account" type="com.syld.store.dto.ClientUserDto"--%>
                        <spForm:form action="${pageContext.request.contextPath}/my_account/update"
                                     modelAttribute="my_account">
                            <spForm:input path="id" cssStyle="visibility: hidden" value="${user.id}"/>
                            <div class="row py-1">
                                <div class="col-sm-3">
                                    <p class="mb-0">Full Name</p>
                                </div>
                                <div class="col-sm-9">
                                    <spForm:input path="username" cssClass="form-control" value="${user.username}"/>
                                    <spForm:errors path="username" cssStyle="color: red;font-size: 12px;"/>
                                </div>
                            </div>
                            <div class="row py-1">
                                <div class="col-sm-3">
                                    <p class="mb-0">Email</p>
                                </div>
                                <div class="col-sm-9">
                                    <spForm:input path="email" cssClass="form-control" value="${user.email}"/>
                                    <spForm:errors path="email" cssStyle="color: red;font-size: 12px;"/>
                                </div>
                            </div>
                            <div class="row py-1">
                                <div class="col-sm-3">
                                    <p class="mb-0">Phone</p>
                                </div>
                                <div class="col-sm-9">
                                    <spForm:input path="phone_number" placeholder="Phone" cssClass="form-control"
                                                  value="${user.phone_number}"/>
                                    <spForm:errors path="phone_number" cssStyle="color: red;font-size: 12px;"/>
                                </div>
                            </div>
                            <div class="row py-1">
                                <div class="col-sm-3">
                                    <p class="mb-0">Address</p>
                                </div>
                                <div class="col-sm-9">
                                    <spForm:input path="address" placeholder="Address" cssClass="form-control"
                                                  value="${user.address}"/>
                                    <spForm:errors path="address" cssStyle="color: red;font-size: 12px;"/>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12 col-md-6"></div>
                                <div class="col-12 col-md-3">
                                    <button type="button" class="btn btn-success w-100 text-white"
                                            data-bs-toggle="collapse" data-bs-target="#password_change_form">Change
                                        Password
                                    </button>
                                </div>
                                <div class="col-12 col-md-3">
                                    <button class="btn btn-warning w-100 text-white">Update</button>
                                </div>

                            </div>
                        </spForm:form>
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-body collapse" id="password_change_form">
                        <%--@elvariable id="password_changer" type=""--%>
                        <spForm:form action="${pageContext.request.contextPath}/my_account/change_password"
                                     modelAttribute="password_changer">
                            <div class="row py-1">
                                <div class="col-sm-3">
                                    <p class="mb-0">Old Password</p>
                                </div>
                                <div class="col-sm-9">
                                    <spForm:input path="old_pass" cssClass="form-control" type="password"
                                                  required="required"/>
                                    <spForm:errors path="old_pass" cssStyle="color: red;font-size: 12px;"/>
                                </div>
                            </div>
                            <div class="row py-1">
                                <div class="col-sm-3">
                                    <p class="mb-0">New Password</p>
                                </div>
                                <div class="col-sm-9">
                                    <spForm:input path="new_pass" cssClass="form-control" type="password"
                                                  required="required"/>
                                    <spForm:errors path="new_pass" cssStyle="color: red;font-size: 12px;"/>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12 col-md-9"></div>
                                <div class="col-12 col-md-3">
                                    <button class="btn btn-success w-100 text-white">Confirm</button>
                                </div>

                            </div>
                        </spForm:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>