<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<body>
<section>
    <div class=" container row">
        <div class="thoigian col-md-12">
            <h2 class="text-center">Thời gian giữ vé</h2>
        </div>
        <div class="col-md-8">
            <div>
                <h3>Phương thức thanh toán</h3>
                <div><input type="radio" class="" onclick="thanhToan()">Thanh toán VNPAY - QR</div>
                <div class="desc">
                    Thiết bị cần cài đặt Ứng dụng ngân hàng (Mobile Banking) hoặc ví VNPAY.
                    Nhập mã "VNPAYVXRT6" - Nhận ngay ưu đãi 5% tối đa 20K -
                    <a>Điều kiện sử dụng</a>
                    <h4>Hướng dẫn thanh toán</h4>
                    <div>1. Đăng nhập Ứng dụng ngân hàng hoặc Ví VNPAY</div>
                    <div>2. Quét mã VNPAY-QR để thanh toán</div>
                    <div>3. Nhập số tiền thanh toán & mã giảm giá (nếu có), xác minh giao dịch để đặt vé</div>
                </div>
            </div>
        </div>
        <div class="col-md-4"><h3>Thông tin chuyến đi</h3>
            <div class="ttHanhKhach">
                <div>
                    <span>Hành khách</span>
                    <div>Bảo Ngọc</div>
                </div>
                <div>
                    <span>Số điện thoại</span>
                    <div>0947730012</div>
                </div>
                <div>
                    <span>Email</span>
                    <div>baongoc.bnx@gmail.com</div>
                </div>
            </div>
            <div class="ttVeXe">
                <div>
                    <span>Nhà xe</span>
                    <div>Tân Quang Dũng</div>
                </div>
                <div>
                    <span>Điểm đón</span>
                    <div>BX</div>
                </div>
                <div>
                    <span>Điểm trả</span>
                    <div>BX</div>
                </div>
            </div>
        </div>
        <div class="ttBaoMat">
            <button class="btn btn-primary">Thanh toán bảo mật</button>
        </div>
    </div>
</section>
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
<script src="${resourcePath}myJS/ThanhToan.js"></script>
</body>
</html>
