<%--
  TRANG CHỦ NHÀ XE
  User: Khanh Quynh
  Date: 07-Jun-23
  Access: After login
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<jsp:useBean id="nhaXe" class="com.gogo.swp_gogo.models.NhaXe" scope="request"/>
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
                <li class="nav-item">
                    <a href="<%=request.getContextPath()%>/index.jsp" class="nav-link"><span>Trang chủ</span></a>
                </li>
                <li class="nav-item">
                    <a href="#xe" class="nav-link"><span>Xe</span></a>
                </li>
                <li class="nav-item">
                    <a href="AddTuyenXe?idNhaXe=${nhaXe.idNhaXe}" class="nav-link"><span>Tuyến xe</span></a>
                </li>
                <li class="nav-item">
                    <a href="${resourcePath}HanhKhach_NhaXe.jsp" class="nav-link"><span>Hành khách</span></a>
                </li>
                <li class="nav-item has-children">
                    <a class="nav-link" id="logout">
                        <icon class="icon-account_circle"></icon>
                        <span> ${nhaXe.tenNhaXe}</span></a>
                    <ul class="dropdown">
                        <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="modal js-modal">
    <div class="addXe">
        <div class="icon-close js-close"></div>
        <div class="col-md-12">
            <form class="p-5 bg-light row" action="AddGheXe" method="post">
                <div col-md-6>
                    <h3 class="mb-5">Thêm xe</h3>
                    <input type="hidden" id="idNhaXe" name="idNhaXe" value="${nhaXe.idNhaXe}"/>
                    <div class="form-group">
                        <label>Biển số xe *</label>
                        <input type="text" class="form-control" id="bienSoXe" name="bienSoXe" required/>
                        <small></small>
                    </div>
                    <div class="form-group">
                        <label>Loại xe *</label>
                        <select name="loaiXe" class="loaiGhe form-control">
                            <option>Ghế ngồi</option>
                            <option>Giường nằm</option>
                            <option>Limousine</option>
                        </select>
                    </div>
                    <div class="ghe">
                        <div class="form-group">
                            <label>Số ghế ngồi *</label>
                            <input name="soLuongGhe" type="number" class="form-control" id="soGhe"/>
                            <small></small>
                        </div>
                        <div class="form-group ml-3">
                            <label>Sơ đồ ghế *</label>
                            <div class="xemSoDo btn btn-secondary mt-2 " id="xemSoDo">
                                Xem sơ đồ
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="message">Mô tả <span class="star">*</span></label>
                        <textarea name="moTa" id="message" cols="30" rows="2" class="form-control">Mô tả</textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Thêm xe" class="btn py-3 px-5 btn-primary" id="themXe"/>
                    </div>
                </div>
                <div id="soDoGhe" class="col-md-6 soDoGhe pt-5 js-soDoGhe">
                    <h4 id="titleGhe"></h4>
                    <div class="row p-5">
                        <div class="col-md-6" id="hang-1"></div>
                        <div class="col-md-6" id="hang-2"></div>
                        <div class="mt-5">
                            <label>*Chú thích:</label>
                            <div class="icon-bus col-md-8 btn btn-primary ml-3">Ghế VIP</div>
                        </div>
                        <input type="hidden" id="vipList" name="vipList"/>
                        <div class="mt-5">
                            <label>*Phụ thu ghế VIP:</label>
                            <input name="giaGhe" type="number" class="form-control" step="10000" id="phuThu" min="0"
                                   max="1000000" required/>
                            <small></small>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<section class="hero-wrap" style="background-image: url('${resourcePath}images/destination-single.jpg')"
         data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-start">
            <div class="col-md-9 ftco-animate pb-4">
                <div class="col-md-9 ftco-animate pb-4">
                    <h1 class="mb-3 bread">GoGo xin chào</h1>
                    <div class="row">
                        <a href="#xe" class="btn btn-primary py-2 px-4">Xe chạy</a>
                        <form action="AddTuyenXe#tuyenDuong" class="" method="get">
                            <input type="hidden" name="idNhaXe" value="${nhaXe.idNhaXe}"/>
                            <input type="submit" class="btn btn-black py-2 px-4" value="Tuyến xe" style="width: 120px"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- .section -->
<div class="col-md-12">
    <button class="btn btn-primary py-3 px-4 js-addXe" onclick="openModal()">Thêm xe</button>
</div>
<div id="#xe">
    <c:forEach var="xe" items="${nhaXe.xeList}">
        <section class="ftco-section ftco-services-2 ftco-no-pt">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row xe" id="xe">
                            <div class="col-md-3 ftco-animate">
                                <img src="${resourcePath}images/vinbus.png" class="ill img-fluid"/>
                            </div>
                            <div class="col-md-5 ftco-animate">
                                <div class="text">
                                    <h3>${xe.idXe}</h3>
                                    <p class="pos">
                                        Giường nằm - ${xe.soLuongGhe}
                                    </p>
                                    <p>${xe.moTa}</p>
                                    <p>
                                        <button class="btn btn-secondary">Chỉnh sửa</button>
                                        <button class="btn btn-primary" onclick="batOverlayXoa('${xe.idXe}')">Xóa</button>
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
                            <div class="del-cf" id="${xe.idXe}">
                                Bạn muốn xóa xe này? <br/>
                                <button onclick="window.location.href='RemoveXe?idXe=${xe.idXe}&idNhaXe=${nhaXe.idNhaXe}#xe'"
                                        class="btn btn-primary js-del">
                                    Xóa
                                </button>
                                <button class="btn btn-black js-cancel" onclick="tatOverlayXoa('${xe.idXe}')">Hủy</button>
                            </div>
                            <div id="xe-overlay${xe.idXe}" class="xe-overlay"></div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </c:forEach>
</div>

<!-- loader -->
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
<script src="${resourcePath}myJS/Xe_NhaXe.js"></script>
<script src="${resourcePath}myJS/Validate.js"></script>
</body>
</html>
