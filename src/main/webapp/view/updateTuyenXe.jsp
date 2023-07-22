<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<jsp:useBean id="loTrinh" class="com.gogo.swp_gogo.models.LoTrinh" scope="request"/>
<body>
<div class="container">
  <form action="AddTuyenXe" class="p-5 bg-light" method="post" >
    <input type="hidden" name="idNhaXe" value="${nhaXe.idNhaXe}"/>
    <h4 class="mb-2">Thêm tuyến</h4>
    <div class="row">
      <div class="form-group col-md-6">
        <label for="name">Nơi đi *</label>
        <%--                            <input type="text" class="form-control" id="name" name="noiBatDau"/>--%>
        <select name= "noiBatDau" class="form-control">
          <option value="${loTrinh.tuyenDuong.noiBatDau}" selected="selected">${loTrinh.tuyenDuong.noiBatDau}</option>
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
          <option value="Cần Thơ">Tp.Cần Thơ
          <option value="Đà Nẵng">Tp.Đà Nẵng
          <option value="Hải Phòng">Tp.Hải Phòng
          <option value="Hà Nội">Tp.Hà Nội
          <option value=HCM">TP HCM
        </select>

      </div>

      <div class="form-group col-md-6">
        <label>Nơi đến *</label>
        <select name= "dichDen" class="form-control">
          <option value="${loTrinh.tuyenDuong.dichDen}" selected="selected">${loTrinh.tuyenDuong.dichDen}</option>
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
          <option value="Cần Thơ">Tp.Cần Thơ
          <option value="Đà Nẵng">Tp.Đà Nẵng
          <option value="Hải Phòng">Tp.Hải Phòng
          <option value="Hà Nội">Tp.Hà Nội
          <option value="HCM">TP HCM
        </select>
      </div>
    </div>
    <div class="row">
      <div class="form-group col-md-6">
        <label>Điểm đón *</label>
        <input type="text" class="form-control" id="#diemDon" name="noiDonKhach" required/>
        <small></small>
      </div>
      <div class="form-group col-md-6">
        <label>Điểm trả *</label>
        <input type="text" class="form-control" id="#diemTra" name="noiTraKhach" required/>
        <small></small>
      </div>
    </div>
    <div class="row">
      <div class="form-group col-md-6">
        <label>Giờ khởi hành *</label>
        <input type="time" class="form-control" id="#gioKhoiHanh" name="gioKhoiHanh" required/>
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
<script>
  document.getElementById("diemDon").defaultValue = "<%=loTrinh.getDonKhach().getNoiDonKhach()%>"
</script>
<script src="${resourcePath}myJS/TuyenDuong_NhaXe.js"></script>
<script src="${resourcePath}myJS/Validate.js"></script>
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