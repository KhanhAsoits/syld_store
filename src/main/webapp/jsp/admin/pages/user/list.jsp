<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .bottom-information {
        width: 100% !important;
    }

    div.dataTables_wrapper div.dataTables_info, div.dataTables_wrapper div.dataTables_paginate {
        padding: 0 16px !important;
    }
</style>
<div class="ec-content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
            <div>
                <h1>Users</h1>
                <p class="breadcrumbs"><span><a href="${pageContext.request.contextPath}/">Home</a></span>
                    <span><i class="mdi mdi-chevron-right"></i></span>User</p>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/admin/users/create" class="btn btn-primary"> Add
                    user</a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card card-default">
                    <div class="card-body">
                        <div class="table-responsive" style="overflow-x: hidden">
                            <table id="responsive-data-table" class="table"
                                   style="width:100%;vertical-align: middle">
                                <thead>
                                <tr>
                                    <th>User</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Address</th>
                                    <th>Phone</th>
                                    <th>Role</th>
                                    <th>State</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="user" items="${list}">
                                    <tr>
                                        <td>
                                            <img style="box-shadow: 1px 1px 6px rgba(0,0,0,0.2);height: 60px;object-fit: cover"
                                                 class="tbl-thumb"
                                                 src="${pageContext.request.contextPath}${user.avatar}"
                                                 alt="user Image"/>
                                        </td>
                                        <td>${user.username}</td>
                                        <td>${user.email}</td>
                                        <td>${user.address}</td>
                                        <td>${user.phoneNumber}</td>
                                        <td>${user.role.role_name}</td>
                                        <td style="color: ${user.state?'blue':'red'}">${user.state?"Active":"Deleted"}</td>
                                        <td>
                                            <div class="btn-group mb-1">
                                                <button type="button"
                                                        class="btn btn-outline-success"><a
                                                        href="${pageContext.request.contextPath}/admin/users/${user.id}">Info</a>
                                                </button>
                                                <button type="button"
                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false" data-display="static">
                                                    <span class="sr-only">Info</span>
                                                </button>

                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/admin/users/update/${user.id}">Edit</a>
                                                    <c:if test="${user.state}">
                                                        <a class="dropdown-item"
                                                           href="${pageContext.request.contextPath}/admin/users/remove/${user.id}">Delete</a>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Content -->
</div>
<!-- End Content Wrapper -->

