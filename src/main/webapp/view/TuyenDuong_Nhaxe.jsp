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
                    <a href="Xe_NhaXe.html#xe" class="nav-link"
                    ><span>Xe</span></a
                    >
                </li>
                <li class="nav-item">
                    <a href="TuyenDuong_NhaXe.html" class="nav-link"
                    ><span>Tuyến xe</span></a
                    >
                </li>
                <li class="nav-item">
                    <a href="HanhKhach_NhaXe.html" class="nav-link"
                    ><span>Hành khách</span></a
                    >
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
                    <a href="Xe_NhaXe.html#xe" class="btn btn-primary py-2 px-4">Xe chạy</a>
                    <a href="#tuyenDuong" class="btn btn-black py-2 px-4">Tuyến xe</a>
                </p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-services-2 ftco-no-pt">
    <div class="container">
        <div class="modal">
            <div class="addTuyenDuong row">
                <div class="col-md-8">
                    <form action="#" class="p-5 bg-light">
                        <h3 class="mb-5">Thêm tuyến</h3>
                        <div class="ghe">
                            <div class="form-group">
                                <label for="name">Nơi đi *</label>
                                <input type="text" class="form-control" id="name"/>
                            </div>
                            <div class="form-group">
                                <label for="loaiXe">Nơi đến *</label>
                                <input type="text" class="form-control" id="name"/>
                            </div>
                        </div>
                        <div class="ghe">
                            <div class="form-group">
                                <label for="name">Điểm đón *</label>
                                <input type="text" class="form-control" id="name"/>
                            </div>
                            <div class="form-group">
                                <label for="loaiXe">Điểm trả *</label>
                                <input type="text" class="form-control" id="name"/>
                            </div>
                        </div>
                        <div class="ghe">
                            <div class="form-group">
                                <label for="name">Giờ khởi hành *</label>
                                <input type="text" class="form-control" id="name"/>
                            </div>
                            <div class="form-group">
                                <label for="loaiXe">Ngày khởi hành *</label>
                                <input type="text" class="form-control" id="name"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="loaiXe">Thời gian di chuyển *</label>
                            <input type="text" class="form-control" id="name"/>
                        </div>
                        <div class="form-group">
                            <label for="loaiXe">Giá vé *</label>
                            <input type="text" class="form-control" id="name"/>
                        </div>
                        <div class="ghe">
                            <div class="form-group">
                                <label for="soGhe">Danh sách xe chạy *</label>
                                <input type="text" class="form-control" id="soGhe"/>
                            </div>
                            <div class="mt-5">
                                <button class="btn btn-secondary">Chọn</button>
                            </div>
                        </div>

                        <div class="form-group">
                            <input
                                    type="submit"
                                    value="Thêm tuyến"
                                    class="btn py-3 px-5 btn-primary"
                            />
                        </div>
                    </form>
                </div>
                <div class="col-md-4 pt-5">
                    <h4>Danh sách xe chạy</h4>
                    <div class="row p-5">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-5 btn btn-secondary m-2"><input type="checkbox"/> <span class="icon-bus"> Xe01
                                </div>
                                <div class="col-md-5 btn btn-secondary m-2"><input type="checkbox"/> <span class="icon-bus"> Xe01
                                </div>
                                <div class="col-md-5 btn btn-secondary m-2"><input type="checkbox"/> <span class="icon-bus"> Xe01
                                </div>
                                <div class="col-md-5 btn btn-secondary m-2"><input type="checkbox"/> <span class="icon-bus"> Xe01
                                </div>
                                <div class="col-md-5 btn btn-secondary m-2"><input type="checkbox"/> <span class="icon-bus"> Xe01
                                </div>
                                <div class="col-md-5 btn btn-secondary m-2"><input type="checkbox"/> <span class="icon-bus"> Xe01
                                </div>
                            </div>

                        </div>
                    </div>
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
                <button href="#" class="btn btn-primary py-3 px-4" onclick="openModal()">Thêm tuyến</button>
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

