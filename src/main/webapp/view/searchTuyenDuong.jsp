<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 08-Jun-23
  Time: 10:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="loTrinhInput" class="com.gogo.swp_gogo.models.LoTrinh" scope="request"/>
<jsp:useBean id="khachHang" class="com.gogo.swp_gogo.models.KhachHang" scope="request"/>
<jsp:include page="Head.jsp"></jsp:include>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
     id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">GoGo</a>
        <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse"
                data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav nav ml-auto">
                <li class="nav-item"><a href="index.jsp" class="nav-link"><span>Trang chủ</span></a></li>
                <li class="nav-item"><a href="index.jsp#tuyenDuong" class="nav-link"><span>Tuyến đường</span></a></li>
                <li class="nav-item"><a href="#uuDai" class="nav-link"><span>Ưu đãi</span></a></li>
                <c:choose>
                    <c:when test="${khachHang.ten == null}">
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
                    </c:when>
                    <c:when test="${khachHang.ten != null}">
                        <li class="nav-item has-children">
                            <a class="nav-link" id="logout">
                                <icon class="icon-account_circle"></icon>
                                <span> ${khachHang.ten}</span></a>
                            <ul class="dropdown">
                                <li><a href="${pageContext.request.contextPath}/view/UserInfo.jsp">Thông tin khách hàng</a></li>
                                <li><a href="VeCuaToi?idKH=${khachHang.idKhachHang}">Vé của tôi</a></li>
                                <li><a href="${pageContext.request.contextPath}/index.jsp">Đăng xuất</a></li>
                            </ul>
                        </li>
                    </c:when>
                </c:choose>
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
                            <form action="SearchTuyenDuong" method="post" class="search-property-1">
                                <input type="hidden" name="idKhachHang" value="${khachHang.idKhachHang}"/>
                                <div class="row">
                                    <div class="col-lg align-items-end">
                                        <div class="form-group">
                                            <label><span class="ion-ios-pin"></span> Nơi xuất phát </label>
                                            <div class="form-field" style="background-color: #ffffff">
                                                <input list="places1" class="form-control" name="noiBatDau"
                                                       placeholder="Nhập điểm đi"
                                                       value="${loTrinhInput.tuyenDuong.noiBatDau}">
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
                                                    <option value="Tp.Cần Thơ">Tp.Cần Thơ
                                                    <option value="Tp.Đà Nẵng">Tp.Đà Nẵng
                                                    <option value="Tp.Hải Phòng">Tp.Hải Phòng
                                                    <option value="Tp.Hà Nội">Tp.Hà Nội
                                                    <option value="TP  HCM">TP HCM
                                                </datalist>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg align-items-end">
                                        <div class="form-group">
                                            <label><span class="ion-ios-pin"></span> Nơi đến </label>
                                            <div class="form-field" style="background-color: #ffffff">
                                                <input list="places1" class="form-control checkin_date" name="dichDen"
                                                       placeholder="Nhập điểm đến"
                                                       value="${loTrinhInput.tuyenDuong.dichDen}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg align-items-end">
                                        <div class="form-group">
                                            <label><span class="ion-ios-calendar"></span> Ngày đi</label>
                                            <div class="form-field" style="background-color: #ffffff">
                                                <input type="date" class="form-control checkout_date" id="ngayDi"
                                                       placeholder="Ngày đi" name="ngayKhoiHanh"
                                                       value="${loTrinhInput.thoiGianKhoiHanh.ngayKhoiHanh}">
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
                        class="ion-ios-arrow-forward"></i></a></span>
                    <span>${loTrinhInput.tuyenDuong.noiBatDau} → ${loTrinhInput.tuyenDuong.dichDen}</span></p>
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
                                <h3 class="tenNhaXe">${loTrinh.nhaXe.tenNhaXe}<span class="rating" id="rating${loTrinh.nhaXe.idNhaXe}"><span class="icon-star"> </span> ${loTrinh.nhaXe.star}</span>
                                </h3>
                                <p class="mota-xe"> ${loTrinh.xe.loaiXe} - <span class="price" id= "soGhe${loTrinh.idLoTrinh}">${loTrinh.xe.soLuongGhe}</span> chỗ - <span>${loTrinh.xe.moTa}</span></p>
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
                            <div class="ttct-btn" onclick="openTTCT('${loTrinh.idLoTrinh}')">
                                Thông tin chi tiết <span class="ion-ios-arrow-dropdown"></span>
                            </div>
                        </div>
                        <div class="col-md-3 ftco-animate dsLoTrinh">
                            <div class="giaVe text-center">${loTrinh.giaLoTrinh} VNĐ</div>
                            <p class="choTrong  text-center m-0">${loTrinh.gheConTrongList.size()} chỗ trống</p>
                            <a class="btn btn-black btn-chonCho"
                               onclick="openSoDo('${loTrinh.idLoTrinh}','${loTrinh.gheConTrongListStr}','${loTrinh.giaLoTrinh}')" href="#soDoGhe">CHỌN CHỖ
                            </a>
                        </div>
                    </div>
                    <div id="ttct${loTrinh.idLoTrinh}" class="ttct">
                        <icon class="icon-close" onClick=closeTTCT()></icon>
                        <div>
                            <nav aria-label="...">
                                <ul class="pagination  justify-content-center pagination-sm ">
                                    <li class="page-item">
                                        <a class="page-link" href="#hinhanh${loTrinh.idLoTrinh}" tabindex="-1"
                                           onclick="hienthi('hinhanh','${loTrinh.idLoTrinh}')">Hình ảnh</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#tienich${loTrinh.idLoTrinh}" onclick="hienthi('tienich','${loTrinh.idLoTrinh}')">Tiện ích</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#diemdontra${loTrinh.idLoTrinh}" onclick="hienthi('diemdontra','${loTrinh.idLoTrinh}')">Điểm đón trả</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#sodoghe${loTrinh.idLoTrinh}" onclick="hienthi('sodoghe')">Sơ đồ ghế</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#danhgia${loTrinh.idLoTrinh}" onclick="hienthi('danhgia','${loTrinh.idLoTrinh}')">Đánh giá</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div id="hinhanh${loTrinh.idLoTrinh}" class="field hinhanh">
                            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner col-md-5 mx-auto my-auto">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="${resourcePath}images/1575533508897.jpeg"
                                             alt="First slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="${resourcePath}images/1575533508673.jpeg"
                                             alt="Second slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="${resourcePath}images/1575533495742.jpeg"
                                             alt="Third slide">
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                                   data-slide="prev">
                                        <span class="carousel-control-prev-icon carousel-control"
                                              aria-hidden="false"></span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                                   data-slide="next">
                                        <span class="carousel-control-next-icon carousel-control"
                                              aria-hidden="false"></span>
                                </a>
                            </div>
                        </div>
                        <div id="tienich${loTrinh.idLoTrinh}" class="field">
                            <p>${loTrinh.xe.moTa}</p>
                        </div>
                        <div class="row justify-content-center field" id="diemdontra${loTrinh.idLoTrinh}">
                            <div class="diemDon col-md-5">
                                <h3>Điểm đón</h3>
                                <div>
                                        <%--                                    <span>17:00 </span>--%>
                                    <icon class="icon-circle"></icon>
                                    <span>${loTrinh.donKhach}</span>
                                </div>
                            </div>
                            <div class="diemTra col-md-5">
                                <h3>Điểm trả</h3>
                                <div>
                                    <icon class="icon-circle"></icon>
                                    <span>${loTrinh.traKhach}</span>
                                </div>
                            </div>
                        </div>


                        <div id="sodoghe${loTrinh.idLoTrinh}" class="js-soDoGhe field">
<%--                            new changes--%>
                            <h4 id="soLuongGhe">${loTrinh.xe.soLuongGhe}</h4><h4>Ghế</h4>
                            <div class="row p-5">
                                <div class="col-md-6" id="hang-3"></div>
                                <div class="col-md-6" id="hang-4"></div>
                            </div>
                        </div>

                        <div id="danhgia${loTrinh.idLoTrinh}" class="field">
                            <c:forEach var="ratingInfo" items="${loTrinh.nhaXe.ratingList}">
                                <div>${ratingInfo.tenKhachHang}</div>
                                <div>${ratingInfo.ngayDatVe}</div>
                                <div>${ratingInfo.rating}</div>
                                <div>${ratingInfo.comment}</div>
                            </c:forEach>
                        </div>
                    </div>
                    <form action="ThanhToan" method="post" class="datVe">
                        <input type="hidden" name="idKhachHang" value="${khachHang.idKhachHang}"/>
                        <input type="hidden" name="idLoTrinh" value="${loTrinh.idLoTrinh}"/>
                        <input type="hidden" name="listVe" id="listVeXe${loTrinh.idLoTrinh}"/>
                        <div id="soDoGhe${loTrinh.idLoTrinh}"
                             class="col-md-12 soDoGhe row flex-row justify-content-center">
                            <icon class="icon-close" onClick="closeSoDoGhe('${loTrinh.idLoTrinh}')"></icon>
                            <div class="p-2 col-md-8 row">
                                <h4 id="titleGhe${loTrinh.idLoTrinh}" class="col-md-12">32 ghế</h4>
                                <div class="col-md-6" id="hang-1${loTrinh.idLoTrinh}"></div>
                                <div class="col-md-6" id="hang-2${loTrinh.idLoTrinh}"></div>
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
                                <div class="col-md-12 pt-2">
                                    <div><span id="soVe${loTrinh.idLoTrinh}">0</span> vé:
                                        <span id="listVe${loTrinh.idLoTrinh}"></span></div>
                                    <div><span>Tổng tiền: </span><span id="soTien${loTrinh.idLoTrinh}"
                                                                       class="soTien"> 0</span> VND
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button type="button" class="btn btn-primary w-100" id="tiepTheo"
                                            onclick="chonLoTrinh('${loTrinh.idLoTrinh}')">Tiếp theo
                                    </button>
                                    <small></small>
                                </div>
                            </div>
                        </div>
                        <div id="ttLoTrinh${loTrinh.idLoTrinh}" class="flex-column ttLoTrinh">
                            <div class="row col-md-12">
                                <div class="col-md-6">
                                    <h3 class="text-center">Điểm đón</h3>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="radio2" name="optradio2"
                                               checked>
                                        <div>
                                            <icon class="icon-circle"></icon>
                                            <span>${loTrinh.donKhach}</span>
                                        </div>
                                        <label class="form-check-label" for="radio2"></label>
                                    </div>
                                </div>
                                <div div class="col-md-6">
                                    <h3 class="text-center">Điểm trả</h3>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="radio3" name="optradio3"
                                               checked>
                                        <div>
                                            <icon class="icon-circle"></icon>
                                            <span>${loTrinh.traKhach}</span>
                                        </div>
                                        <label class="form-check-label" for="radio3"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row col-md-12 justify-content-between">
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-secondary w-100"
                                            onclick="openSoDo('${loTrinh.idLoTrinh}','${loTrinh.gheConTrongListStr}','${loTrinh.giaLoTrinh}')">
                                        Quay
                                        lại
                                    </button>
                                </div>
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-primary w-100"
                                            onclick="nhapThongTin('${loTrinh.idLoTrinh}')">Tiếp
                                        theo
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div id="nhapThongTin${loTrinh.idLoTrinh}" class="flex-column nhapThongTin">
                            <div class="col-md-8 flex-column">
                                <div class="form-group">
                                    <label>Họ tên<span class="star"> *</span></label>
                                    <input type="text" placeholder="Tên người đi" id="tenNguoiDi" class="form-control" required >
                                    <small></small>
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại <span class="star"> *</span></label>
                                    <input type="telNo" placeholder="Nhập số điện thoại" id="soDienThoai" class="form-control" required>
                                    <small></small>
                                </div>
                                <div class="form-group">
                                    <label>Email để nhận thông tin vé <span class="star"> *</span></label>
                                    <input placeholder="Email nhận thông tin vé" id="email" class="form-control" required>
                                    <small></small>
                                </div>
                            </div>
                            <div class="row col-md-12 justify-content-between">
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-secondary w-100"
                                            onclick="openTtLoTrinh('${loTrinh.idLoTrinh}')">Quay lại
                                    </button>
                                </div>
                                <div class="col-md-3">
                                    <button type="submit" class="btn btn-primary w-100" id="thanhToan-Btn" onclick="handleThanhToan(${khachHang.idKhachHang})">Thanh Toán</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </c:forEach>
    </div>
</section>

<%--Phân trang dựa vào số lượng tuyến đường tìm được--%>
<c:choose >
    <c:when test="${loTrinhList.size() == 0}"><div class="thongbao">Không tìm thấy tuyến xe phù hợp!</div></c:when>
    <c:when test="${loTrinhList.size() != 0}">
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">Trước</a>
                </li>
                <li class="page-item"><a class="page-link" href="#page1">1</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">Sau</a>
                </li>
            </ul>
        </nav>
    </c:when>
</c:choose>

<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>
<%--<script> var lotrinhL = '${loTrinhL}'</script>--%>
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
<script src="${resourcePath}myJS/Validate.js"></script>
<script>
    const chonCho = document.getElementById("chonCho");
    if ('${khachHang.idKhachHang}' === '') {
        chonCho.style.display = "none";
    }
</script>
</body>
</html>