<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 08-Jun-23
  Time: 10:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<jsp:useBean id="loTrinhList" class="com.gogo.swp_gogo.models.LoTrinhList" scope="request"/>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
     id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="view/index.html">GoGo</a>
        <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse"
                data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav nav ml-auto">
                <li class="nav-item"><a href="#home-section" class="nav-link"><span>Trang chủ</span></a></li>
                <li class="nav-item"><a href="#tuyenDuong" class="nav-link"><span>Tuyến đường</span></a></li>
                <li class="nav-item"><a href="#uuDai" class="nav-link"><span>Ưu đãi</span></a></li>
                <li class="nav-item has-children">
                    <a class="nav-link"><span>Đăng nhập</span></a>
                    <ul class="dropdown">
                        <li><a href="GoGoLogin">Hành khách</a></li>
                        <li><a href="NhaXeGoGoLogin">Nhà xe</a></li>
                    </ul>
                </li>
                <li class="nav-item has-children">
                    <a href="view/SignUp_Khach.jsp" class="nav-link"><span>Đăng ký</span></a>
                    <ul class="dropdown">
                        <li><a href="view/SignUp_Khach.jsp">Hành khách</a></li>
                        <li><a href="view/SignUp_NhaXe.jsp">Nhà xe</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section class="hero-wrap hero-wrap-2" style="background-image: url('images/destination-single.jpg');"
         data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-between pt-5">
            <div class="container pt-5">
                <div class="row">
                    <div class="col-md-12">
                        <div class="search-wrap-2 ftco-animate">
                            <form action="#" class="search-property-1">
                                <div class="row">
                                    <div class="col-lg align-items-end">
                                        <div class="form-group">
                                            <label><span class="ion-ios-pin"></span> Nơi xuất phát </label>
                                            <div class="form-field" style="background-color: #ffffff">
                                                <input type="text" class="form-control" placeholder=" Nhập điểm đón"
                                                       value="Đà Lạt">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg align-items-end">
                                        <div class="form-group">
                                            <label><span class="ion-ios-pin"></span> Nơi đến </label>
                                            <div class="form-field" style="background-color: #ffffff">
                                                <input type="text" class="form-control checkin_date"
                                                       placeholder="Nhập điểm trả" value="Sài Gòn">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg align-items-end">
                                        <div class="form-group">
                                            <label><span class="ion-ios-calendar"></span> Ngày đi</label>
                                            <div class="form-field" style="background-color: #ffffff">
                                                <input type="text" class="form-control checkout_date"
                                                       placeholder="Ngày đi" value="15/06/2023">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg align-self-end">
                                        <div class="form-group">
                                            <div class="form-field">
                                                <input type="submit" value="Tìm kiếm"
                                                       class="form-control btn btn-primary">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-9 ftco-animate pb-1">
                <h1 class="mb-3 bread">Vé xe phù hợp</h1>
                <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Vé xe khách <i
                        class="ion-ios-arrow-forward"></i></a></span> <span>Đà Lạt - Sài Gòn</p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-services-2 ftco-no-pt">
    <div class="container">
        <c:forEach var="loTrinh" items="${loTrinhList.loTrinhList}">
           <div>${loTrinh.idLoTrinh}</div>
        </c:forEach>
    </div>
</section>
<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1">Trước</a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
            <a class="page-link" href="#">Sau</a>
        </li>
    </ul>
</nav>
<!-- .section -->

<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>
<script src="${resourcePath}js/jquery.min.js"></script>
<script src="${resourcePath}https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="${resourcePath}js/jquery-migrate-3.0.1.min.js"></script>
<script src="${resourcePath}js/popper.min.js"></script>
<script src="${resourcePath}js/bootstrap.min.js"></script>
<script src="${resourcePath}js/jquery.easing.1.3.js"></script>
<script src="${resourcePath}js/jquery.waypoints.min.js"></script>
<script src="${resourcePath}js/jquery.stellar.min.js"></script>
<script src="${resourcePath}js/owl.carousel.min.js"></script>
<script src="${resourcePath}js/jquery.magnific-popup.min.js"></script>
<script src="${resourcePath}js/aos.js"></script>
<script src="${resourcePath}js/jquery.animateNumber.min.js"></script>
<script src="${resourcePath}js/scrollax.min.js"></script>
<script src="${resourcePath}js/google-map.js"></script>
<script src="${resourcePath}js/main.js"></script>
<script src="${resourcePath}myJS/SearchResult.js"></script>
</body>
</html>