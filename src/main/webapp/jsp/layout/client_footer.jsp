<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- Footer Area -->
<footer id="wn__footer" class="footer__area bg__cat--8 brown--color">
    <div class="footer-static-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__widget footer__menu">
                        <div class="ft__logo">
                            <a href="${pageContext.request.contextPath}/">
                                <img src="${pageContext.request.contextPath}/assets/images/logo/logo.svg" alt="logo">
                            </a>

                        </div>
                        <div class="footer__content">

                            <div class="footer__content">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th scope="col">Discover Syld</th>
                                        <th scope="col"> Online Service</th>
                                        <th scope="col">In-store Service</th>
                                        <th scope="col">About Syld</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><c:forEach var="category" items="${navs}" >
                                            <li class="drop with--one--item" style="list-style: none">
                                                <a href="${pageContext.request.contextPath}/store?category=${category.children[0].category_slug}&page=1&limit=18">${category.parent.category_name}</a>

                                            </li>
                                        </c:forEach>
                                        </td>
                                        <td><a href="#">Advise</a><br><a href=""> Make an Appointment</a></td>
                                        <td><a href="#">Search Store</a></td>
                                        <td><a href="#">Contact</a><br><a href=""> Rules</a><br><a href=""> Support</a></td>
                                    </tr>
                                    </tbody>
                                </table>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright__wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <ul class="nav">
                        <li class="nav-item">
                            <h4>Change Area - Language :</h4>
                        </li>
                        <li class="nav-item">
                            <div class="dropdown">
                                <button type="button" class=" dropdown-toggle" data-toggle="dropdown">
                                    Viet Nam
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">America</a>
                                    <a class="dropdown-item" href="#">Korea</a>
                                    <a class="dropdown-item" href="#">Japan</a>
                                </div>
                            </div>
                        </li>
                        <label > - </label>
                        <li class="nav-item">
                            <div class="dropdown">
                                <button type="button" class=" dropdown-toggle" data-toggle="dropdown">
                                    Vietnamese
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">English</a>
                                    <a class="dropdown-item" href="#">Korea</a>
                                    <a class="dropdown-item" href="#">Japanese</a>
                                </div>
                            </div>
                        </li>

                </div>
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="payment text-end">
                        <img src="${pageContext.request.contextPath}/assets/images/icons/payment.png" alt=""/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- //Footer Area -->

</div>
<!-- //Main wrapper -->
<%--area-language--%>
<%--<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>--%>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- JS Files -->
<script src="${pageContext.request.contextPath}/assets/js/cart-process.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/vendor/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/active.js"></script>

</body>