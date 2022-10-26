<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Product</h1>
                <p class="breadcrumbs"><span><a href="index.html">Home</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>Users
                </p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/users/create" class="btn btn-primary">Add Users</a>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-header card-header-border-bottom d-flex justify-content-between">
                        <div class="card-bar">
                            <div class="col-lg-6 col-md-12">
                                <input type="text" class="form-control" id="searchUser"
                                       placeholder="search with user name..">
                            </div>
                            <div class="col-lg-6 col-md-12 sort">
                                <div class="col-lg-4 col-md-6 p-space">
                                    <select class="form-control" id="dropdownUser">
                                        <option value="ALL">ALL User</option>
                                        <option value="Admin">Role_Admin</option>
                                        <option value="User">Role_User</option>
                                        <option value="Manager">Role_Manager</option>
                                        <option value="Support">Role_Support_Online</option>
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-6 p-space">
                                    <select class="form-control" id="dropdownOrderBy">
                                        <option value="ALL">ORDER BY</option>
                                        <option value="Adress">Adress</option>
                                        <option value="Phone Number">Phone Number</option>
                                        <option value="State">State</option>
                                        <option value="OTHER">OTHER</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="product" items="${list}">
                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="card-wrapper">
                                        <div class="card-container">
                                            <div class="card-top">
                                                <c:forEach varStatus="loop" var="user" items="${list}">

                                                        <img class="card-image" style="height: 250px;object-fit: cover" src="${pageContext.request.contextPath}${user.avatar}"
                                                             alt=""/>

                                                </c:forEach>
                                            </div>
                                            <div class="card-bottom">
                                                <h3>${user.username}</h3>
                                                <p>${user.email}</p>
                                                <p>${user.address}</p>
                                                <p>${user.phoneNumber}</p>
                                                <p>${user.role.role_name}</p>
                                            </div>
                                            <div class="card-action">
                                                <div class="card-edit"><i
                                                        class="mdi mdi-circle-edit-outline" href="${pageContext.request.contextPath}/admin/users/update/${user.id}"></i></div>
                                                <div class="card-preview" href="${pageContext.request.contextPath}/admin/users/${user.id}"><i class="mdi mdi-eye-outline"></i>
                                                </div>
                                                <c:if test="${user.state}">
                                                    <div class="card-remove" href="${pageContext.request.contextPath}/admin/products/remove/${user.id}"><i
                                                            class="mdi mdi mdi-delete-outline"></i></div>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <nav aria-label="Page navigation example p-0">
                        <ul class="pagination pagination-seperated pagination-seperated-rounded">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
														<span aria-hidden="true"
                                                              class="mdi mdi-chevron-left mr-1"></span> Prev
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>

                            <li class="page-item active">
                                <a class="page-link" href="#">1</a>
                            </li>

                            <li class="page-item">
                                <a class="page-link" href="#">2</a>
                            </li>

                            <li class="page-item">
                                <a class="page-link" href="#">3</a>
                            </li>

                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    Next
                                    <span aria-hidden="true"
                                          class="mdi mdi-chevron-right ml-1"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
