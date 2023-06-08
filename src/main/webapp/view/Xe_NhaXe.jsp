<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: BaoNgoc.
  Date: 07-Jun-23
  Time: 8:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<%--set bien nha xe--%>
<c:set var = "nhaXe" scope="request" value="${nhaXe}"/>
<c:out value="${nhaXe.username}"/>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<div class="modal js-modal">
    <div class="addXe">
        <div class="icon-close js-close"></div>
        <div class="col-md-6">
            <form action="#" class="p-5 bg-light">
                <h3 class="mb-5">Thêm xe</h3>
                <div class="form-group">
                    <label for="name">Biển số xe *</label>
                    <input type="text" class="form-control" id="name" />
                </div>
                <div class="form-group">
                    <label for="loaiXe">Loại xe *</label>

                    <select class="loaiGhe form-control">
                        <option>Ghế ngồi</option>
                        <option>Giường nằm</option>
                        <option>Limousine</option>
                        <!-- <input type="text" class="form-control" id="loaiXe" /> -->
                    </select>
                </div>
                <div class="ghe">
                    <div class="form-group">
                        <label for="soGhe">Số ghế ngồi *</label>
                        <input type="number" class="form-control" id="soGhe" />
                    </div>
                    <div class="form-group ml-3">
                        <label for="#">Sơ đồ ghế *</label>
                        <button class="xemSoDo btn btn-secondary mt-2 " onclick="openSoDo()">
                            Xem sơ đồ
                        </button>
                    </div>
                </div>

                <div class="form-group">
                    <label for="message">Mô tả</label>
                    <textarea name="" id="message" cols="30" rows="2" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <input type="submit" value="Thêm xe" class="btn py-3 px-5 btn-primary" onclick="closeModal()"/>
                </div>
            </form>
        </div>
        <div id="soDoGhe" class="col-md-6 soDoGhe pt-5 js-soDoGhe">
            <form type="hidden" action>
                <h4 id="titleGhe">32 ghế</h4>
                <div class="row p-5">
                    <div class="col-md-6" id="hang-1"></div>
                    <div class="col-md-6" id="hang-2"></div>
                    <div class="mt-5">
                        <label>*Chú thích:</label>
                        <div class="icon-bus col-md-8 btn btn-primary ml-3">Ghế VIP</div>
                    </div>
                    <div class="mt-5">
                        <label>*Phụ thu ghế VIP:</label>
                        <input type="number" class="form-control" id="soGhe" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
     id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.html">GoGo</a>
        <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse"
                data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav nav ml-auto">
                <li class="nav-item">
                    <a href="index.html#home-section" class="nav-link"><span>Trang chủ</span></a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link"><span>Xe</span></a>
                </li>
                <li class="nav-item">
                    <a href="view/TuyenDuong_NhaXe.jsp#tuyenDuong" class="nav-link"><span>Tuyến xe</span></a>
                </li>
                <li class="nav-item">
                    <a href="view/HanhKhach_NhaXe.jsp" class="nav-link"><span>Hành khách</span></a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/index.jsp" class="nav-link"><span>Logout</span></a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section class="hero-wrap" style="background-image: url('${resourcePath}images/destination-single.jpg')"
         data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-start">
            <div class="col-md-9 ftco-animate pb-4">
                <h1 class="mb-3 bread">GoGo xin chào</h1>
                <p>
                    <a href="#xe" class="btn btn-primary py-2 px-4">Xe chạy</a>
                    <a href="TuyenDuong_NhaXe.jsp#tuyenDuong" class="btn btn-black py-2 px-4">Tuyến xe</a>
                </p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-services-2 ftco-no-pt">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-5">
                <div class="row xe" id="xe">
                    <div class="col-md-3 ftco-animate">
                        <img src="${resourcePath}images/about.jpg" class="img-fluid" />
                    </div>
                    <div class="col-md-5 ftco-animate">
                        <div class="text py-5">
                            <h3>74MĐ-000000</h3>
                            <p class="pos">
                                Giường nằm - <span class="price">300000đ </span> - 42 chỗ
                            </p>
                            <p>Khăn ướt, điều hòa</p>
                            <p>
                                <button class="btn btn-secondary" onclick="openModal()">Chỉnh sửa</button>
                                <button class="btn btn-primary js-del-cf-btn">Xóa</button>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 ftco-animate dsLoTrinh">
                        <h3>Tuyến chạy</h3>
                        <div class="loTrinh">
                            <div class="noiXuatPhat">Hà Nội</div>
                            <div>
                                <div class="icon-exchange"></div>
                            </div>
                            <div class="dichDen">Đà Nẵng</div>
                        </div>
                        <div class="loTrinh">
                            <div class="noiXuatPhat">Hà Nội</div>
                            <div>
                                <div class="icon-exchange"></div>
                            </div>
                            <div class="dichDen">Đà Nẵng</div>
                        </div>
                    </div>
                    <div class="del-cf js-del-cf">
                        Bạn muốn xóa xe này? <br /><button class="btn btn-primary js-del">
                        Xóa
                    </button>
                        <button class="btn btn-black js-cancel">Hủy</button>
                    </div>
                    <div class="xe-overlay"></div>
                </div>
            </div>
            <div class="col-md-12">
                <button class="btn btn-primary py-3 px-4 js-addXe">Thêm xe</button>
            </div>
        </div>
    </div>
</section>
<!-- .section -->

<footer class="ftco-footer ftco-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">
                        About <span><a href="index.html">Ecoland</a></span>
                    </h2>
                    <p>
                        Far far away, behind the word mountains, far from the countries
                        Vokalia and Consonantia, there live the blind texts.
                    </p>
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate">
                            <a href="#"><span class="icon-twitter"></span></a>
                        </li>
                        <li class="ftco-animate">
                            <a href="#"><span class="icon-facebook"></span></a>
                        </li>
                        <li class="ftco-animate">
                            <a href="#"><span class="icon-instagram"></span></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4 ml-md-4">
                    <h2 class="ftco-heading-2">Information</h2>
                    <ul class="list-unstyled">
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Online
                                Enquiry</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>General
                                Enquiry</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Booking</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Privacy</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Refund
                                Policy</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Call Us</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Experience</h2>
                    <ul class="list-unstyled">
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Adventure</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Hotel and
                                Restaurant</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Beach</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Nature</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Camping</a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-long-arrow-right mr-2"></span>Party</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Have a Questions?</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li>
                                <span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San
                    Francisco, California,
                    USA</span>
                            </li>
                            <li>
                                <a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a>
                            </li>
                            <li>
                                <a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;
                    <script>
                        document.write(new Date().getFullYear());
                    </script>
                    All rights reserved | This template is made with
                    <i class="icon-heart color-danger" aria-hidden="true"></i> by
                    <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
            </div>
        </div>
    </div>
</footer>

<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00" />
    </svg>
</div>
<script>

    const modal = document.querySelector(".js-modal");
    const soDoGhe = document.querySelector(".js-soDoGhe");
    const confirmDels = document.querySelectorAll(".js-del-cf");
    const modal__closer = document.querySelector(".js-close");
    const modal__opener = document.querySelector(".js-addXe");

    function closeModal() {
        modal.classList.remove("open");
    }
    function openModal() {
        modal.classList.add("open");
    }
    function openSoDo() {
        soDoGhe.classList.add("open");

        let titleGhe = document.getElementById("titleGhe");
        let soGhe = document.getElementById("soGhe");
        var hang1 = document.getElementById("hang-1");
        var hang2 = document.getElementById("hang-2");
        hang1.innerHTML = "";
        hang2.innerHTML = "";
        titleGhe.innerHTML = soGhe.value + " Ghế";
        for (let i = 1; i <= Math.round(soGhe.value/2); i++) {
            let ghe = document.createElement("div");
            hang1.append(ghe);
            ghe.className = "icon-bus col-md-5 btn btn-secondary m-1";
            ghe.id = ""+Math.round(i);
            ghe.innerHTML = ghe.id;
            ghe.setAttribute("onclick","setGheVip("+Math.round(i)+")");
        }
        for (let i = (soGhe.value/2+1); i <= soGhe.value; i++) {
            let ghe = document.createElement("div");
            hang2.append(ghe);
            ghe.className = "icon-bus col-md-5 btn btn-secondary m-1";
            ghe.id = ""+Math.round(i);
            ghe.innerHTML = ghe.id;
            ghe.setAttribute("onclick","setGheVip("+Math.round(i)+")");
        }
    }
    function setGheVip(id) {
        let vip = false;
        let ghe = document.getElementById(id);
        if (ghe.classList.contains("btn-secondary")){
            vip = true;
            ghe.className = "icon-bus col-md-5 btn btn-primary m-1";
        } else {
            vip = false;
            ghe.className = "icon-bus col-md-5 btn btn-secondary m-1";
        }
    }

    modal__closer.addEventListener("click", closeModal);
    modal__opener.addEventListener("click", openModal);
</script>
<script>
    $(document).ready(function () {
        $(".js-del").click(function () {
            $(".js-del-cf").hide();
            $(".xe-overlay").hide();
        });
        $(".js-cancel").click(function () {
            $(".js-del-cf").hide();
            $(".xe-overlay").hide();
        });
        $(".js-del-cf-btn").click(function () {
            $(".js-del-cf").show();
            $(".xe-overlay").show();
        });
    });
</script>
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
</body>
</html>