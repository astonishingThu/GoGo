<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<nav
        class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
        id="ftco-navbar"
>
    <div class="container">
        <a class="navbar-brand" href="index.html">GoGo</a>
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
                    <a href="index.html#home-section" class="nav-link"
                    ><span>Trang chủ</span></a
                    >
                </li>
                <li class="nav-item">
                    <a href="Xe_NhaXe.jsp#xe" class="nav-link"
                    ><span>Xe</span></a
                    >
                </li>
                <li class="nav-item has-children">
                    <a class="nav-link"><span>Đăng nhập</span></a>
                    <ul class="dropdown">
                        <li><a href="Login_Khach.jsp">Hành khách</a></li>
                        <li><a href="Login_NhaXe.jsp">Nhà xe</a></li>
                    </ul>
                </li>
                <li class="nav-item has-children">
                    <a href="SignUp_Khach.jsp" class="nav-link"><span>Đăng ký</span></a>
                    <ul class="dropdown">
                        <li><a href="SignUp_Khach.jsp">Hành khách</a></li>
                        <li><a href="SignUp_NhaXe.jsp">Nhà xe</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="index.html#home-section" class="nav-link"
                    ><span>Logout</span></a
                    >
                </li>
            </ul>
        </div>
    </div>
</nav>

<section
        class="hero-wrap"
        style="background-image: url('images/destination-single.jpg')"
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
                    <a href="Xe_NhaXe.jsp#xe" class="btn btn-primary py-2 px-4">Xe chạy</a>
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
                <form action="#" class="p-5 bg-light" >
                    <h4 class="mb-2">Thêm tuyến</h4>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="name">Nơi đi *</label>
                            <input type="text" class="form-control" id="name"/>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Nơi đến *</label>
                            <input type="text" class="form-control" id="name"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="name">Điểm đón *</label>
                            <input type="text" class="form-control" id="name"/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="loaiXe">Điểm trả *</label>
                            <input type="text" class="form-control" id="name"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="name">Giờ khởi hành *</label>
                            <input type="time" class="form-control" id="name"/>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="">Ngày khởi hành *</label>
                            <input type="date" class="form-control" id="name"/>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="">Lặp lại *</label>
                            <div class="col-md-12">
                                <div class="row check-mark-group">
                                    <label class="check-mark"><input type="checkbox" class="choice" placeholder="T2"/>T2</label>
                                    <label class="check-mark"><input type="checkbox" class="choice"/>T3</label>
                                    <label class="check-mark"><input type="checkbox" class="choice"/>T4</label>
                                    <label class="check-mark"><input type="checkbox" class="choice"/>T5</label>
                                    <label class="check-mark"><input type="checkbox" class="choice"/>T6</label>
                                    <label class="check-mark"><input type="checkbox" class="choice"/>T7</label>
                                    <label class="check-mark"><input type="checkbox" class="choice"/>CN</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="loaiXe">Thời gian di chuyển *</label>
                            <input type="text" class="form-control"/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="loaiXe">Giá vé *</label>
                            <input type="text" class="form-control"/>
                        </div>
                    </div>
                    <div>
                        <div>Danh sách xe chạy *</div>
                        <div class="col-md-2 btn btn-secondary m-2"><input type="checkbox"/> <span
                                class="icon-bus"> Xe01
                        </div>
                        <div class="col-md-2 btn btn-secondary m-2"><input type="checkbox"/> <span
                                class="icon-bus"> Xe02
                        </div>
                        <div class="col-md-2 btn btn-secondary m-2"><input type="checkbox"/> <span
                                class="icon-bus"> Xe03
                        </div>
                    </div>
                    <div class="form-group them-btn">
                        <input
                                type="submit"
                                value="Thêm tuyến"
                                class="btn py-3 px-5 btn-primary"
                                onclick="closeModal()"
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
                <th scope="col">MS Tuyến</th>
                <th scope="col">Điểm đi</th>
                <th scope="col">Điểm đến</th>
                <th scope="col">Thời điểm xuất phát</th>
                <th scope="col">Thời gian di chuyển</th>
                <th scope="col">Danh sách xe chạy</th>
                <th scope="col">Thêm</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row"></span> TU0011 </span></th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td><span class="icon-edit"> | </span><span class="icon-trash"> </span></td>
            </tr>
            <tr>
                <th scope="row"></span> TU0011 </span></th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td><span class="icon-edit"> | </span><span class="icon-trash"> </span></td>
            </tr>
            <tr>
                <th scope="row"></span> TU0011 </span></th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td><span class="icon-edit"> | </span><span class="icon-trash"> </span></td>
            </tr>

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
<script src="myJS/TuyenDuong_NhaXe.js"></script>
<script src="js/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>

