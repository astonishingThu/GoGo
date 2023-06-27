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
<jsp:useBean id="loTrinhInput" class="com.gogo.swp_gogo.models.LoTrinh" scope="request"/>
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
                                                       value="${loTrinhInput.tuyenDuong.noiBatDau}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg align-items-end">
                                        <div class="form-group">
                                            <label><span class="ion-ios-pin"></span> Nơi đến </label>
                                            <div class="form-field" style="background-color: #ffffff">
                                                <input type="text" class="form-control checkin_date"
                                                       placeholder="Nhập điểm trả" value="${loTrinhInput.tuyenDuong.dichDen}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg align-items-end">
                                        <div class="form-group">
                                            <label><span class="ion-ios-calendar"></span> Ngày đi</label>
                                            <div class="form-field" style="background-color: #ffffff">
                                                <input type="text" class="form-control checkout_date"
                                                       placeholder="Ngày đi" value="${loTrinhInput.thoiGianKhoiHanh.ngayKhoiHanh}">
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
                <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp#search">Vé xe khách <i
                        class="ion-ios-arrow-forward"></i></a></span> <span>${loTrinhInput.tuyenDuong.noiBatDau} → ${loTrinhInput.tuyenDuong.dichDen}</span></p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-services-2 ftco-no-pt">
    <div class="container">
        <c:forEach var="loTrinh" items="${loTrinhList}">
            <div class="row">
                <div class="col-md-10 mb-5">
                    <div class="row veXe">
                        <div class="col-md-3 ftco-animate">
                            <img src="${resourcePath}images/about.jpg" class="img-fluid ill"/>
                        </div>
                        <div class="col-md-6 ftco-animate">
                            <div class="text text-center">
                                <h3 class="tenNhaXe">${loTrinh.nhaXe.tenNhaXe}<span class="rating">4.0<span
                                        class="icon-star"></span></span>
                                </h3>
                                <p class="mota-xe">
                                        ${loTrinh.xe.loaiXe} - <span class="price"> <span id="soGhe">${loTrinh.xe.soLuongGhe}</span> chỗ</span> - <span>${loTrinh.xe.moTa}</span>
                                </p>
                            </div>
                            <div class="loTrinh-xe">
                                <div class="xuatPhat">
                                    <icon class="icon-circle-o xp-icon"></icon>
                                    <p class="time">${loTrinh.thoiGianKhoiHanh.gioKhoiHanh} </p>
                                    <icon class="icon-circle"></icon>
                                    <span class="diemdon">${loTrinh.donKhach.noiDonKhach}</span>
                                </div>
                                <p class="dash-line"> . . . . .</p>
                                <div class="tgdc">${loTrinh.khoangThoiGianDiChuyen} phút</div>
                                <div class="diemDen">
                                    <icon class="ion-ios-pin dd-icon"></icon>
                                    <p class="time">${loTrinh.thoiGianKetThuc}</p>
                                    <icon class="icon-circle"></icon>
                                    <span class="diemtra">${loTrinh.traKhach.noiTraKhach}</span>
                                </div>
                            </div>
                            <div class="ttct-btn" onclick="openTTCT()"> Thông tin chi tiết <span
                                    class="ion-ios-arrow-dropdown"></span></div>
                        </div>
                        <div class="col-md-3 ftco-animate dsLoTrinh">
                            <div class="giaVe text-center">${loTrinh.giaLoTrinh} VNĐ</div>
                            <p class="choTrong  text-center m-0">02 chỗ trống</p>
                            <a class="btn btn-black btn-chonCho" onclick="openSoDo()" href="#soDoGhe">CHỌN CHỖ</a>
                        </div>
                    </div>
                    <div class="ttct">
                        <icon class="icon-close" onClick=closeTTCT()></icon>
                        <div>
                            <nav aria-label="...">
                                <ul class="pagination  justify-content-center pagination-sm ">
                                    <li class="page-item">
                                        <a class="page-link" href="#hinhanh" tabindex="-1" onclick="hienthi('hinhanh')">Hình
                                            ảnh</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#tienich" onclick="hienthi('tienich')">Tiện
                                            ích</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#diemdontra" onclick="hienthi('diemdontra')">Điểm
                                            đón trả</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#chinhsach" onclick="hienthi('chinhsach')">Chính
                                            sách</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#danhgia" onclick="hienthi('danhgia')">Đánh
                                            giá</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div id="hinhanh" class="field">
                            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner col-md-5 mx-auto my-auto">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="images/1575533534253.jpeg" alt="First slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="images/1575533508673.jpeg" alt="Second slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="images/1575533508897.jpeg" alt="Third slide">
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                                   data-slide="prev">
                                    <span class="carousel-control-prev-icon carousel-control"
                                          aria-hidden="false"></span>
                                        <%--                                <span class="sr-only">Previous</span>--%>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                                   data-slide="next">
                                    <span class="carousel-control-next-icon carousel-control"
                                          aria-hidden="false"></span>
                                        <%--                                <span class="sr-only">Next</span>--%>
                                </a>
                            </div>
                        </div>
                        <div id="tienich" class="field">
                            <p>${loTrinh.xe.moTa}</p>
                        </div>
                        <div class="row justify-content-center field" id="diemdontra">
                            <div class="diemDon col-md-5">
                                <h3>Điểm đón</h3>
                                <div><span>17:00 </span>
                                    <icon class="icon-circle"></icon>
                                    <span> Bến xe A</span></div>
                                <div><span>17:30 </span>
                                    <icon class="icon-circle"></icon>
                                    <span> Bến xe B</span></div>
                                <div><span>18:30 </span>
                                    <icon class="icon-circle"></icon>
                                    <span> QL1A</span></div>
                            </div>
                            <div class="diemTra col-md-5">
                                <h3>Điểm trả</h3>
                                <div><span>20:00 </span>
                                    <icon class="icon-circle"></icon>
                                    <span> Bến xe A</span></div>
                                <div><span>20:30 </span>
                                    <icon class="icon-circle"></icon>
                                    <span> Bến xe B</span></div>
                            </div>

                        </div>
                        <div id="chinhsach" class="field"></div>
                        <div id="danhgia" class="field"></div>
                    </div>
                    <form action="ThanhToan" method="post" class="datVe">
                        <div id="soDoGhe" class="col-md-12 soDoGhe js-soDoGhe row flex-row justify-content-center">
                            <icon class="icon-close" onClick=closeSoDoGhe()></icon>
                            <div class="p-2 col-md-8 row">
                                <h4 id="titleGhe" class="col-md-12">32 ghế</h4>
                                <div class="col-md-6" id="hang-1"></div>
                                <div class="col-md-6" id="hang-2"></div>
                            </div>
                            <div class="col-md-4 row">
                                <div class="col-md-4">
                                    <div class="icon-bus  btn empty p-2 col-md-12"></div>
                                    <span class="text-center">Trống</span></div>
                                <div class="col-md-4">
                                    <div class="icon-bus btn choosing p-2 col-md-12"></div>
                                    <span class="text-center">Đang chọn</span></div>
                                <div class="col-md-4">
                                    <div class="icon-bus btn choosed p-2 col-md-12"></div>
                                    <span class="text-center">Đã đặt</span>
                                </div>
                                <div class="col-md-12 pt-5">
                                    <div><span class="soVe">01 </span>vé: <span class="listVe"> A16, A17</span></div>
                                    <div><span>Tổng tiền: </span><span class="soTien"> 400.000đ</span></div>
                                </div>
                                <div class="col-md-12">
                                    <button type="button" class="btn btn-primary w-100" onclick="chonLoTrinh()">Tiếp
                                        theo
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div id="ttLoTrinh" class="flex-column">
                            <div class="row col-md-12">
                                <div class="col-md-6">
                                    <h3 class="text-center">Điểm đón</h3>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="radio1" name="optradio"
                                               value="hello" checked>
                                        <div>
                                            <span>17:00 </span>
                                            <icon class="icon-circle"></icon>
                                            <span> Bến xe A</span>
                                        </div>
                                        <label class="form-check-label" for="radio1"></label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="radio2" name="optradio"
                                               value="hello" checked>
                                        <div>
                                            <span>17:00 </span>
                                            <icon class="icon-circle"></icon>
                                            <span> Bến xe A</span>
                                        </div>
                                        <label class="form-check-label" for="radio2"></label>
                                    </div>
                                </div>
                                <div div class="col-md-6">
                                    <h3 class="text-center">Điểm trả</h3>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="radio3" name="optradio"
                                               value="hello"
                                               checked>
                                        <div>
                                            <span>17:00 </span>
                                            <icon class="icon-circle"></icon>
                                            <span> Bến xe A</span>
                                        </div>
                                        <label class="form-check-label" for="radio1"></label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="radio4" name="optradio"
                                               value="hello"
                                               checked>
                                        <div>
                                            <span>17:00 </span>
                                            <icon class="icon-circle"></icon>
                                            <span> Bến xe A</span>
                                        </div>
                                        <label class="form-check-label" for="radio2"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row col-md-12 justify-content-between">
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-secondary w-100" onclick="openSoDo()">Quay
                                        lại
                                    </button>
                                </div>
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-primary w-100" onclick="nhapThongTin()">Tiếp
                                        theo
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div id="nhapThongTin" class="flex-column">
                            <div class="col-md-8 flex-column">
                                <div class="form-group">
                                    <label>Họ tên<span class="star"> *</span></label>
                                    <input type="text" placeholder="Tên người đi" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại<span class="star"> *</span></label>
                                    <input type="number" placeholder="Nhập số điện thoại" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Email để nhận thông tin vé<span class="star"> *</span></label>
                                    <input placeholder="Email nhận thông tin vé" class="form-control">
                                </div>
                            </div>
                            <div class="row col-md-12 justify-content-between">
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-secondary w-100" onclick="openTtLoTrinh()">Quay
                                        lại
                                    </button>
                                </div>
                                <div class="col-md-3">
                                    <input type="submit" class="btn btn-primary w-100" value="Thanh toán">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
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