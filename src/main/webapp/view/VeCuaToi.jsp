<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<jsp:useBean id="khachHang" class="com.gogo.swp_gogo.models.KhachHang" scope="request"/>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<jsp:include page="components/Navbar.jsp"></jsp:include>
<section class="hero-wrap hero-wrap-2" style="background-image: url('${resourcePath}images/destination-single.jpg');"
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
                <th scope="col">Status</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="veXe" items="${khachHang.veXeList}">
                <tr style="position: relative;" >
                    <th scope="row"><span> ${veXe.idVeXe} </span></th>
                    <td>
                            ${veXe.ngayKhoiHanh} lúc ${veXe.gioKhoiHanh}
                    </td>
                    <td> ${veXe.diemDi} <span class="icon-arrow-right"></span> ${veXe.diemDen}
                        <button onclick="openDetail('${veXe.idVeXe}')"
                                class="btn btn-primary js-del">
                            <span class="icon-eye" ></span>
                        </button>
                    </td>
                    <td>${veXe.tenNhaXe}</td>
                    <td class="pl-3"> ${veXe.idGhe}</td>
                    <td>${veXe.ngayDatVe}</td>
                    <td id="status${veXe.idVeXe}" style="display: block" onload="setStatus('${veXe.idVeXe}','${veXe.ngayKhoiHanh}','${veXe.gioKhoiHanh}')"></td>
                    <td>
                        <button
                                id="rating${veXe.idVeXe}btn"
                                onclick="openRating('${veXe.idVeXe}')"
                                class="btn btn-primary rate-btn">
                            <span class="icon-rate_review"></span>
                        </button>
                        <button onclick="openCancel('${veXe.idVeXe}')" class="btn btn-primary js-del">
                            <span class="icon-cancel"></span>
                        </button>
                        <div class="cancel-cf d-none" id="cancel${veXe.idVeXe}">
                            <p class="mr-3">Bạn muốn hủy vé xe này?</p>
                            <button onclick="window.location.href='CancelVe?idVe=${veXe.idVeXe}&idKH=${veXe.idKhachHang}'"
                                    class="btn btn-primary js-del mr-3"> Hủy vé
                            </button>
                            <button onclick="closeCancel()" class="btn btn-secondary js-cancel">Không</button>
                        </div>
                    </td>
                </tr>


                <form action="RatingVe?idVe=${veXe.idVeXe}">
                    <img style="width: 0; height: 0" onload="setStatus('${veXe.idVeXe}', '${veXe.ngayKhoiHanh}', '${veXe.gioKhoiHanh}' )" src="${resourcePath}images/about.jpg">
                    <input id="idVe${veXe.idVeXe}" name="idVe" value="${veXe.idVeXe}" type="hidden">
                    <input id="ratingStar${veXe.idVeXe}" name="ratingStar" type="hidden">
                    <input id="ratingComment${veXe.idVeXe}" name="ratingComment" type="hidden">
                    <div class="rating-modal modal" id="rating-form${veXe.idVeXe}">
                    <div class="rating-modal-inner">
                        <div class="icon-close js-close btn" onclick="closeRating('${veXe.idVeXe}')"></div>
                        <div class="form-group my-auto" id="rating-ability-wrapper">
                            <h2 class="bold rating-header" style="">
                                <span class="selected-rating" id="selected-rating${veXe.idVeXe}" >0</span><small> / 5</small>
                            </h2>
                            <button type="button" class="btnrating btn btn-default btn-lg" data-attr="1" id="rating-star-1">
                                <i class="icon-star" aria-hidden="true"></i>
                            </button>
                            <button type="button" class="btnrating btn btn-default btn-lg" data-attr="2" id="rating-star-2">
                                <i class="icon-star" aria-hidden="true"></i>
                            </button>
                            <button type="button" class="btnrating btn btn-default btn-lg" data-attr="3" id="rating-star-3">
                                <i class="icon-star" aria-hidden="true"></i>
                            </button>
                            <button type="button" class="btnrating btn btn-default btn-lg" data-attr="4" id="rating-star-4">
                                <i class="icon-star" aria-hidden="true"></i>
                            </button>
                            <button type="button" class="btnrating btn btn-default btn-lg" data-attr="5" id="rating-star-5">
                                <i class="icon-star" aria-hidden="true"></i>
                            </button>
                        </div>
                        <div class="form-group">
                            <textarea class="comment" id="comment${veXe.idVeXe}" placeholder="Nhập bình luận" rows="10" cols="50"></textarea>
                        </div>
                        <button onclick="handleRating('${veXe.idVeXe}')" type="submit" class="btn btn-black">Gửi đánh giá</button>
                    </div>
                    </div>
                </form>
                    <div class="detail-modal modal" id="detail${veXe.idVeXe}">
                        <div class="detail-modal-inner">
                            <div class="icon-close js-close btn" onclick="closeDetail('${veXe.idVeXe}')"></div>
                            <div class="form-group">
                                <div class="form-control">Mã lộ trình: ${veXe.idLoTrinh}</div>
                                <div class="form-control">Tên nhà xe: ${veXe.tenNhaXe}</div>
                                <div class="form-control">Mã vé: ${veXe.idVeXe}</div>
                                <div class="form-control">Điểm đón: ${veXe.diemDi}</div>
                                <div class="form-control">Điểm trả: ${veXe.diemDen}</div>
                                <div class="form-control">Ngày khởi hành: ${veXe.ngayKhoiHanh}</div>
                                <div class="form-control">Giờ khởi hành: ${veXe.gioKhoiHanh}</div>
                                <div class="form-control">Ngày đặt vé: ${veXe.ngayDatVe}</div>
                            </div>
                        </div>
                    </div>
            </c:forEach>
            </tbody>
        </table>
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
<script src="${resourcePath}myJS/Rating.js"></script>
<script src="${resourcePath}myJS/VeCuaToi.js"></script>
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
