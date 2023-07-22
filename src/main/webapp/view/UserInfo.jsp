<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<jsp:useBean id="khachHang" class="com.gogo.swp_gogo.models.KhachHang" scope="request"/>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<jsp:include page="components/Navbar.jsp"></jsp:include>
<section class="hero-wrap hero-wrap-2" style="background-image: url('images/destination-single.jpg');"
         data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-between pt-5">
            <div class="col-md-9 ftco-animate pb-1">
                <h1 class="mb-3 bread">Lịch sử đặt vé</h1>
            </div>
        </div>
    </div>
</section>
<section class="ftco-section ftco-services-2 ftco-no-pt">
    </div>
    <div class="col-md-12" id="lichSuVe">
        <table class="table container">
            <thead>
            <tr>
                <th scope="col">Mã vé</th>
                <th scope="col">Ngày giờ</th>
                <th scope="col">Lộ Trình</th>
                <th scope="col">Tên nhà xe</th>
                <th scope="col">Chỗ ngồi</th>
                <th scope="col">Ngày đặt vé</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="veXe" items="${khachHang.veXeList}">
                <tr>
                    <th scope="row"></span> ${veXe.idVeXe} </span></th>
                    <td>
                         ${veXe.ngayKhoiHanh} lúc ${veXe.gioKhoiHanh}
                    </td>
                    <td> ${veXe.diemDi} <span class="icon-arrow-right"></span> ${veXe.diemDen}
                        <button onclick="window.location.href='ViewDetailVe?idVeXe=${veXe.idVeXe}&idLoTrinh=${veXe.idLoTrinh}'" class="btn btn-primary js-del">
                            <span class="icon-eye"></span>
                        </button>
                    </td>
                    <td>${veXe.tenNhaXe}</td>
                    <td>${veXe.idGhe}</td>
                    <td>${veXe.ngayDatVe}</td>

                    <td>
                        <button onclick="window.location.href='Rating?idVeXe=${veXe.idVeXe}'" class="btn btn-primary js-del">
                            <span class="icon-rate_review">Đánh giá</span>
                        </button>
                        <button onclick="" class="btn btn-primary js-del">
                            <span class="icon-cancel"></span> Hủy vé
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="del-cf js-del-cf" id="">
        Bạn muốn hủy vé xe này? <br/>
        <button onclick="window.location.href='RemoveXe?idXe=${xe.idXe}&idNhaXe=${nhaXe.idNhaXe}#xe'"
                class="btn btn-primary js-del">
            Xóa
        </button>
        <button class="btn btn-black js-cancel">Hủy</button>
    </div>
    <div class="xe-overlay"></div>
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

