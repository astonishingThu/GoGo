<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 07-Jun-23
  Time: 10:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
     id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">GoGo</a>
        <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse"
                data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav nav ml-auto">
                <li class="nav-item"><a href="<%=request.getContextPath()%>/index.jsp" class="nav-link"><span>Trang chủ</span></a></li>
                <li class="nav-item"><a href="index.html#uuDai" class="nav-link"><span>Ưu đãi</span></a></li>
                <li class="nav-item"><a href="<%=request.getContextPath()%>/index.jsp#tuyenDuong" class="nav-link"><span>Tuyến đường</span></a></li>
                <li class="nav-item has-children">
                    <a class="nav-link"><span>Đăng nhập</span></a>
                    <ul class="dropdown">
                        <li><a href="GoGoLogin">Hành khách</a></li>
                        <li><a href="NhaXeGoGoLogin">Nhà xe</a></li>
                    </ul>
                </li>
                <li class="nav-item has-children">
                    <a href="SignUp_Khach.jsp" class="nav-link"><span>Đăng ký</span></a>
                    <ul class="dropdown">
                        <li><a href="GoGoSignup">Hành khách</a></li>
                        <li><a href="GoGoNhaXeSignup">Nhà xe</a></li>
                    </ul>
                </li>
                <!-- <li class="nav-item"><a href="#destination-section" class="nav-link"><span>Destination</span></a></li>
                <li class="nav-item"><a href="#hotel-section" class="nav-link"><span>Hotel</span></a></li>
                <li class="nav-item"><a href="#restaurant-section" class="nav-link"><span>Restaurant</span></a></li>
                <li class="nav-item"><a href="#blog-section" class="nav-link"><span>Blog</span></a></li>
                <li class="nav-item"><a href="#contact-section" class="nav-link"><span>Contact</span></a></li> -->
            </ul>
        </div>
    </div>
</nav>

<section class="ftco-section contact-section ftco-no-pb" id="contact-section">
    <div class="container">
        <div class="row justify-content-center pb-3">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Liên hệ</span>
                <h2 class="">GoGo Admin</h2>
                <p>Vui lòng liên hệ hoặc để lại thông tin sử dụng dịch vụ nhà xe.</p>
            </div>
        </div>

        <div class="row block-9">
            <div class="col-md-7 order-md-last d-flex">
                <form action="#" class="bg-light p-4 p-md-5 contact-form">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Họ và tên">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Số điện thoại">
                    </div>
                    <div class="form-group">
                        <textarea name="" id="" cols="30" rows="3" class="form-control"
                                  placeholder="Lời nhắn"></textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Nhận tư vấn" class="btn btn-primary py-3 px-5">
                    </div>
                </form>

            </div>

            <div class="col-md-5 d-flex">
                <div class="row d-flex contact-info mb-5">
                    <div class="col-md-12 ftco-animate">
                        <div class="box p-2 px-3 bg-light d-flex">
                            <div class="icon mr-3">
                                <span class="icon-map-signs"></span>
                            </div>
                            <div>
                                <h3 class="mb-3">Địa chỉ</h3>
                                <p>Đại học FPT Đà Nẵng</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 ftco-animate">
                        <div class="box p-2 px-3 bg-light d-flex">
                            <div class="icon mr-3">
                                <span class="icon-phone2"></span>
                            </div>
                            <div>
                                <h3 class="mb-3">Số điện thoại:</h3>
                                <p><a href="tel://1234567920">0947730012</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 ftco-animate">
                        <div class="box p-2 px-3 bg-light d-flex">
                            <div class="icon mr-3">
                                <span class="icon-paper-plane"></span>
                            </div>
                            <div>
                                <h3 class="mb-3">Email Address</h3>
                                <p><a href="mailto:info@yoursite.com">gogo@fpt.edu.vn</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 ftco-animate">
                        <div class="box p-2 px-3 bg-light d-flex">
                            <div class="icon mr-3">
                                <span class="icon-globe"></span>
                            </div>
                            <div>
                                <h3 class="mb-3">Website</h3>
                                <p><a href="#">www.facebook.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>


<script src="${resourcePath}js/jquery.min.js"></script>
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
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="${resourcePath}js/google-map.js"></script>

<script src="${resourcePath}js/main.js"></script>

</body>
</html>
