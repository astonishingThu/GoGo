<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 07-Jun-23
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="view/Head.jsp"></jsp:include>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<jsp:include page="view/components/Navbar.jsp"></jsp:include>
<section id="home-section" class="hero">
    <img src="<%=request.getContextPath()%>/view/images/blob-shape-3.svg" class="svg-blob" alt="Colorlib Free Template">
    <div class="home-slider owl-carousel">
        <div class="slider-item">
            <div class="overlay"></div>
            <div class="container-fluid p-0">
                <div class="row d-md-flex no-gutters slider-text align-items-center justify-content-end"
                     data-scrollax-parent="true">
                    <div class="one-third order-md-last">
                        <div class="img" style="background-image:url(view/images/bg_1.jpg);">
                            <div class="overlay"></div>
                        </div>
                        <div class="bg-primary">
                            <div class="vr"><span class="pl-3 py-4"
                                                  style="background-image: url(view/images/bg_1-1.jpg);">GoGo</span>
                            </div>
                        </div>
                    </div>
                    <div class="one-forth d-flex align-items-center ftco-animate"
                         data-scrollax=" properties: { translateY: '70%' }">
                        <div class="text">
                            <span class="subheading pl-5">GoGo xin chào</span>
                            <h1 class="mb-4 mt-3">GoGo, hỗ trợ đặt vé xe khách!</h1>
                            <p></p>

                            <p><a href="#search" class="btn btn-primary px-5 py-3 mt-3">ĐẶT VÉ <span
                                    class="ion-ios-arrow-forward"> </span></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-no-pb ftco-no-pt" id="search">
    <div class="container">
        <div class="row justify-content-center pb-0 pb-mb-5 pt-5 pt-md-0">
            <div class="col-md-12 heading-section ftco-animate">
                <h2 class="mb-4">Bạn muốn đi đâu?</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="search-wrap-1 ftco-animate p-4">
                    <form action="SearchTuyenDuong" class="search-property-1" method="post">
                        <div class="row">
                            <div class="col-lg align-items-end">
                                <div class="form-group">
                                    <label><span class="ion-ios-pin"></span> Nơi xuất phát </label>
                                    <div class="form-field">
                                        <input list="places1" class="form-control" name="noiBatDau" placeholder="Nhập điểm đi">
                                        <datalist id="places1">
                                            <option value="An Giang">An Giang
                                            <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu
                                            <option value="Bắc Giang">Bắc Giang
                                            <option value="Bắc Kạn">Bắc Kạn
                                            <option value="Bạc Liêu">Bạc Liêu
                                            <option value="Bắc Ninh">Bắc Ninh
                                            <option value="Bến Tre">Bến Tre
                                            <option value="Bình Định">Bình Định
                                            <option value="Bình Dương">Bình Dương
                                            <option value="Bình Phước">Bình Phước
                                            <option value="Bình Thuận">Bình Thuận
                                            <option value="Bình Thuận">Bình Thuận
                                            <option value="Cà Mau">Cà Mau
                                            <option value="Cao Bằng">Cao Bằng
                                            <option value="Đắk Lắk">Đắk Lắk
                                            <option value="Đắk Nông">Đắk Nông
                                            <option value="Điện Biên">Điện Biên
                                            <option value="Đồng Nai">Đồng Nai
                                            <option value="Đồng Tháp">Đồng Tháp
                                            <option value="Đồng Tháp">Đồng Tháp
                                            <option value="Gia Lai">Gia Lai
                                            <option value="Hà Giang">Hà Giang
                                            <option value="Hà Nam">Hà Nam
                                            <option value="Hà Tĩnh">Hà Tĩnh
                                            <option value="Hải Dương">Hải Dương
                                            <option value="Hậu Giang">Hậu Giang
                                            <option value="Hòa Bình">Hòa Bình
                                            <option value="Hưng Yên">Hưng Yên
                                            <option value="Khánh Hòa">Khánh Hòa
                                            <option value="Kiên Giang">Kiên Giang
                                            <option value="Kon Tum">Kon Tum
                                            <option value="Lai Châu">Lai Châu
                                            <option value="Lâm Đồng">Lâm Đồng
                                            <option value="Lạng Sơn">Lạng Sơn
                                            <option value="Lào Cai">Lào Cai
                                            <option value="Long An">Long An
                                            <option value="Nam Định">Nam Định
                                            <option value="Nghệ An">Nghệ An
                                            <option value="Ninh Bình">Ninh Bình
                                            <option value="Ninh Thuận">Ninh Thuận
                                            <option value="Phú Thọ">Phú Thọ
                                            <option value="Quảng Bình">Quảng Bình
                                            <option value="Quảng Bình">Quảng Bình
                                            <option value="Quảng Ngãi">Quảng Ngãi
                                            <option value="Quảng Ninh">Quảng Ninh
                                            <option value="Quảng Trị">Quảng Trị
                                            <option value="Sóc Trăng">Sóc Trăng
                                            <option value="Sơn La">Sơn La
                                            <option value="Tây Ninh">Tây Ninh
                                            <option value="Thái Bình">Thái Bình
                                            <option value="Thái Nguyên">Thái Nguyên
                                            <option value="Thanh Hóa">Thanh Hóa
                                            <option value="Thừa Thiên Huế">Thừa Thiên Huế
                                            <option value="Tiền Giang">Tiền Giang
                                            <option value="Trà Vinh">Trà Vinh
                                            <option value="Tuyên Quang">Tuyên Quang
                                            <option value="Vĩnh Long">Vĩnh Long
                                            <option value="Vĩnh Phúc">Vĩnh Phúc
                                            <option value="Yên Bái">Yên Bái
                                            <option value="Phú Yên">Phú Yên
                                            <option value="Cần Thơ">Tp.Cần Thơ
                                            <option value="Đà Nẵng">Tp.Đà Nẵng
                                            <option value="Hải Phòng">Tp.Hải Phòng
                                            <option value="Hà Nội">Tp.Hà Nội
                                            <option value="HCM">TP HCM
                                        </datalist>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg align-items-end">
                                <div class="form-group">
                                    <label><span class="ion-ios-pin"></span> Nơi đến </label>
                                    <input list="places1" class="form-control" name="dichDen" placeholder="Nhập điểm đến">
                                </div>
                            </div>
                            <div class="col-lg align-items-end">
                                <div class="form-group">
                                    <label><span class="ion-ios-calendar"></span> Ngày đi</label>
                                    <div class="form-field">
                                        <input type="date" class="form-control checkout_date" id="ngayDi" placeholder="Ngày đi" name="ngayKhoiHanh">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg align-self-end">
                                <div class="form-group">
                                    <div class="form-field">
                                        <input type="submit" value="Tìm kiếm" class="form-control btn btn-primary">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="ftco-section testimony-section" id="tuyenDuong">
    <div class="container">
        <div class="row justify-content-center pb-3">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                <h2 class="">Tuyến đường phổ biến</h2>
            </div>
        </div>

        <!-- ----- GIỮ START------------ -->
        <div class="row ftco-animate justify-content-center">
            <div class="col-md-12">
                <div class="carousel-testimony owl-carousel ftco-owl">
                    <div class="item">
                        <div class="testimony-wrap text-center py-4 pb-2">
                            <div class="col-md-12 ftco-animate">
                                <div class="project">
                                    <div class="img">
                                        <div class="vr"><span>Giảm giá</span></div>
                                        <a href="destination-single.jsp"
                                        ><img
                                                src="<%=request.getContextPath()%>/view/images/destination-1.jpg"
                                                class="img-fluid"
                                                alt="Colorlib Template"
                                        /></a>
                                    </div>
                                    <div class="text">
                                        <h4 class="price">
                                            <span class="old-price mr-2">300 000Đ</span>400 000Đ
                                        </h4>
                                        <span>TOP 1: Thời gian?</span>
                                        <h3>
                                            <a href="destination-single.jsp"
                                            >Đà Nẵng - Hà Nội</a
                                            >
                                        </h3>
                                    </div>
                                    <a
                                            href="<%=request.getContextPath()%>/view/images/destination-1.jpg"
                                            class="icon image-popup d-flex justify-content-center align-items-center"
                                    >
                                        <span class="icon-expand"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap text-center py-4 pb-2">
                            <div class="col-md-12 ftco-animate">
                                <div class="project">
                                    <div class="img">
                                        <a href="#search"><img
                                                src="<%=request.getContextPath()%>/view/images/destination-2.jpg"
                                                class="img-fluid" alt="Colorlib Template"></a>
                                    </div>
                                    <div class="text">
                                        <h4 class="price">300 000Đ</h4>
                                        <span>200 phút</span>
                                        <h3><a href="#search">Đà Nẵng
                                            - Quảng Bình</a></h3>
                                    </div>
                                    <a href="#search"
                                       class="icon image-popup d-flex justify-content-center align-items-center">
                                        <span class="icon-expand"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap text-center py-4 pb-2">
                            <div class="col-md-12 ftco-animate">
                                <div class="project">
                                    <div class="img">
                                        <a href="#search"><img
                                                src="<%=request.getContextPath()%>/view/images/destination-2.jpg"
                                                class="img-fluid" alt="Colorlib Template"></a>
                                    </div>
                                    <div class="text">
                                        <h4 class="price">250000Đ</h4>
                                        <span>200 phút</span>
                                        <h3><a href="#search">Đà Nẵng
                                            - Quảng Bình</a></h3>
                                    </div>
                                    <a href="#search"
                                       class="icon image-popup d-flex justify-content-center align-items-center">
                                        <span class="icon-expand"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap text-center py-4 pb-2">
                            <div class="col-md-12 ftco-animate">
                                <div class="project">
                                    <div class="img">
                                        <a href="#search"><img
                                                src="<%=request.getContextPath()%>/view/images/destination-2.jpg"
                                                class="img-fluid" alt="Colorlib Template"></a>
                                    </div>
                                    <div class="text">
                                        <h4 class="price">250000Đ</h4>
                                        <span>200 phút</span>
                                        <h3><a href="#search">Đà Nẵng
                                            - Quảng Bình</a></h3>
                                    </div>
                                    <a href="#search"
                                       class="icon image-popup d-flex justify-content-center align-items-center">
                                        <span class="icon-expand"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap text-center py-4 pb-2">
                            <div class="col-md-12 ftco-animate">
                                <div class="project">
                                    <div class="img">
                                        <a href="#search"><img
                                                src="<%=request.getContextPath()%>/view/images/destination-2.jpg"
                                                class="img-fluid" alt="Colorlib Template"></a>
                                    </div>
                                    <div class="text">
                                        <h4 class="price">250000Đ</h4>
                                        <span>200 phút</span>
                                        <h3><a href="#search">Đà Nẵng
                                            - Quảng Bình</a></h3>
                                    </div>
                                    <a href="#search"
                                       class="icon image-popup d-flex justify-content-center align-items-center">
                                        <span class="icon-expand"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap text-center py-4 pb-2">
                            <div class="col-md-12 ftco-animate">
                                <div class="project">
                                    <div class="img">
                                        <a href="#search"><img
                                                src="<%=request.getContextPath()%>/view/images/destination-2.jpg"
                                                class="img-fluid" alt="Colorlib Template"></a>
                                    </div>
                                    <div class="text">
                                        <h4 class="price">250000Đ</h4>
                                        <span>200 phút</span>
                                        <h3><a href="#search">Đà Nẵng
                                            - Quảng Bình</a></h3>
                                    </div>
                                    <a href="#search"
                                       class="icon image-popup d-flex justify-content-center align-items-center">
                                        <span class="icon-expand"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ----- GIỮ END------------ -->
    </div>
</section>

<footer class="ftco-footer ftco-section" id="footer">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">About <span><a href="view/index.html">GoGo System</a></span></h2>
                    <p>Far far away, behind the word GoGo, let us "service" you.</p>
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Have a Questions?</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li><span class="icon icon-map-marker"></span><span class="text">FPT Urban area, Ngu Hanh Son District, Da Nang city, VietNam</span>
                            </li>
                            <li><a href="#"><span class="icon icon-phone"></span><span
                                    class="text">+84 94 730 012</span></a></li>
                            <li><a href="#"><span class="icon icon-envelope"></span><span class="text">gogo@gmail.com</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">

                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                    All rights reserved | This website is made with <i class="icon-heart color-danger"
                                                                        aria-hidden="true"></i> by <a
                            href="https://colorlib.com" target="_blank">GoGo Team</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>


<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>


<script src="<%=request.getContextPath()%>/view/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/view/js/jquery-migrate-3.0.1.min.js"></script>
<script src="<%=request.getContextPath()%>/view/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/view/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/view/js/jquery.easing.1.3.js"></script>
<script src="<%=request.getContextPath()%>/view/js/jquery.waypoints.min.js"></script>
<script src="<%=request.getContextPath()%>/view/js/jquery.stellar.min.js"></script>
<script src="<%=request.getContextPath()%>/view/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/view/js/jquery.magnific-popup.min.js"></script>
<script src="<%=request.getContextPath()%>/view/js/aos.js"></script>
<script src="<%=request.getContextPath()%>/view/js/jquery.animateNumber.min.js"></script>
<script src="<%=request.getContextPath()%>/view/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="<%=request.getContextPath()%>/view/js/google-map.js"></script>
<script src="<%=request.getContextPath()%>/view/myJS/newJS.js"></script>
<script src="<%=request.getContextPath()%>/view/js/main.js"></script>

</body>
</html>
