<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<jsp:useBean id="nhaXe" class="com.gogo.swp_gogo.models.NhaXe" scope="request"/>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<nav
        class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
        id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">GoGo</a>
        <button
                class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle"
                type="button"
                data-toggle="collapse"
                data-target="#ftco-nav"
                aria-controls="ftco-nav"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav nav ml-auto">
                <li class="nav-item">
                    <a href="index.jsp" class="nav-link"
                    ><span>Trang chủ</span></a
                    >
                </li>
                <li class="nav-item">
                    <a href="ViewXe?idNhaXe=${nhaXe.idNhaXe}#xe" class="nav-link"
                    ><span>Xe</span></a
                    >
                </li>
                <li class="nav-item">
                    <a href="#tuyenDuong" class="nav-link"><span>Tuyến xe</span></a>
                </li>
                <li class="nav-item">
                    <a href="${resourcePath}HanhKhach_NhaXe.jsp" class="nav-link"><span>Doanh thu</span></a>
                </li>
                <li class="nav-item has-children">
                    <a class="nav-link" id="logout"><icon class="icon-account_circle"> </icon><span> ${nhaXe.tenNhaXe}</span></a>
                    <ul class="dropdown">
                        <li><a href="${pageContext.request.contextPath}/index.jsp">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section
        class="hero-wrap"
        style="background-image: url('${resourcePath}images/destination-single.jpg')"
        data-stellar-background-ratio="0.5"
>
    <div class="overlay"></div>
    <div class="container">
        <div
                class="row no-gutters slider-text align-items-center justify-content-start"
        >
            <div class="col-md-9 ftco-animate pb-4">
                <h1 class="mb-3 bread">GoGo xin chào</h1>
                <p>
                    <a href="ViewXe?idNhaXe=${nhaXe.idNhaXe}#xe" class="btn btn-primary py-2 px-4">Xe chạy</a>
                    <a href="#tuyenDuong" class="btn btn-black py-2 px-4">Tuyến xe</a>
                </p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-services-2 ftco-no-pt">
    <div class="container">
        <div class="modal js-modal">
            <div class="addTuyenDuong col-md-9 ">
                <div class="icon-close js-close" onclick="closeModal()"></div>
                <form action="AddTuyenXe" class="p-5 bg-light" method="post" >
                    <input type="hidden" name="idNhaXe" value="${nhaXe.idNhaXe}"/>
                    <h4 class="mb-2">Thêm tuyến</h4>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="name">Nơi đi *</label>
<%--                            <input type="text" class="form-control" id="name" name="noiBatDau"/>--%>
                            <select name= "noiBatDau" class="form-control">
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
                            </select>

                        </div>

                        <div class="form-group col-md-6">
                            <label>Nơi đến *</label>
                            <select name= "dichDen" class="form-control">
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
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Điểm đón *</label>
                            <input type="text" class="form-control" id="diemDon" name="noiDonKhach" required/>
                            <small></small>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Điểm trả *</label>
                            <input type="text" class="form-control" id="diemTra" name="noiTraKhach" required/>
                            <small></small>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Giờ khởi hành *</label>
                            <input type="time" class="form-control" id="gioKhoiHanh" name="gioKhoiHanh" required/>
                            <small></small>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Lặp lại *</label>
                            <div class="col-md-12">
                                <div class="row check-mark-group">
                                    <label class="check-mark"><input type="checkbox" class="choice" name="lapLaiList" value="T2" onchange="getThu()"/>T2</label>
                                    <label class="check-mark"><input type="checkbox" class="choice" name="lapLaiList" value="T3" onchange="getThu()"/>T3</label>
                                    <label class="check-mark"><input type="checkbox" class="choice" name="lapLaiList" value="T4" onchange="getThu()"/>T4</label>
                                    <label class="check-mark"><input type="checkbox" class="choice" name="lapLaiList" value="T5" onchange="getThu()"/>T5</label>
                                    <label class="check-mark"><input type="checkbox" class="choice" name="lapLaiList" value="T6" onchange="getThu()"/>T6</label>
                                    <label class="check-mark"><input type="checkbox" class="choice" name="lapLaiList" value="T7" onchange="getThu()"/>T7</label>
                                    <label class="check-mark"><input type="checkbox" class="choice" name="lapLaiList" value="CN" onchange="getThu()"/>CN</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ngày bắt đầu *</label>
                            <input type="date" class="form-control" name="ngayBatDau" id="ngayBatDau" required />
                            <small></small>
                        </div><div class="form-group col-md-6">
                        <label>Ngày kết thúc *</label>
                        <input type="date" class="form-control" name="ngayKetThuc" id="ngayKetThuc" required />
                        <small></small>
                    </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Thời gian di chuyển *</label>
                            <input type="text" class="form-control" id="thoiGianDiChuyen" name="khoangThoiGianDiChuyen" onchange="getNgay()" required />
                            <input type="hidden" id="ngayList" name="ngayList"/>
                            <small></small>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Giá vé *</label>
                            <input type="number" class="form-control" id="giaVe" name="giaLoTrinh" required/>
                            <small></small>
                        </div>
                    </div>
                    <div class="form-group them-btn">
                        <input
                                type="submit"
                                value="Thêm tuyến"
                                class="btn py-3 px-5 btn-primary"
                                id="themTuyenSubmit"
                        />
                    </div>
                </form>
            </div>
        </div>
    </div>
    </div>
    <div class="col-md-12" id="tuyenDuong">
        <table class="table container">
            <thead>
            <tr>
                <th scope="col">Id Lộ Trình</th>
                <th scope="col">Điểm đi </th>
                <th scope="col"> Điểm đến</th>
                <th scope="col">Thời điểm xuất phát</th>
                <th scope="col">Ngày khởi hành</th>
                <th scope="col">Thời gian di chuyển(phút)</th>
                <th scope="col">Giá Lộ Trình</th>
                <th scope="col">Xe chạy</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="loTrinh" items="${nhaXe.loTrinhList}">
                <tr>
                    <th scope="row"></span> ${loTrinh.idLoTrinh} </span></th>
                    <td>${loTrinh.tuyenDuong.noiBatDau}</td>
                    <td>${loTrinh.tuyenDuong.dichDen}</td>
                    <td>${loTrinh.thoiGianKhoiHanh.gioKhoiHanh}</td>
                    <td>${loTrinh.thoiGianKhoiHanh.ngayKhoiHanh}</td>
                    <td>${loTrinh.khoangThoiGianDiChuyen}</td>
                    <td>${loTrinh.giaLoTrinh}</td>
                    <td>${loTrinh.xe.idXe}</td>
                    <td>
                        <button onclick="window.location.href='RemoveLoTrinh?idLoTrinh=${loTrinh.idLoTrinh}&idNhaXe=${nhaXe.idNhaXe}'" class="btn btn-primary js-del">
                        <span class="icon-trash"> </span>
                        </button>
                        <button class="btn btn-primary js-del">
                        <span class="icon-edit"> </span>
                        </button>
                        <button onclick="window.location.href='RemoveLoTrinh?idLoTrinh=${loTrinh.idLoTrinh}&idNhaXe=${nhaXe.idNhaXe}'" class="btn btn-primary js-del">
                        <span class="icon-people"> </span>
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="col-md-12 ">
            <p>
                <button class="btn btn-primary py-3 px-4" onclick="openModal()">Thêm tuyến</button>
            </p>
        </div>
    </div>
        <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
        <svg class="circular" width="48px" height="48px">
            <circle
                    class="path-bg"
                    cx="24"
                    cy="24"
                    r="22"
                    fill="none"
                    stroke-width="4"
                    stroke="#eeeeee"
            />
            <circle
                    class="path"
                    cx="24"
                    cy="24"
                    r="22"
                    fill="none"
                    stroke-width="4"
                    stroke-miterlimit="10"
                    stroke="#F96D00"
            />
        </svg>
    </div>
</section>
<script src="${resourcePath}myJS/TuyenDuong_NhaXe.js"></script>
<script src="${resourcePath}myJS/Xe_NhaXe.js"></script>
<script src="${resourcePath}js/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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

