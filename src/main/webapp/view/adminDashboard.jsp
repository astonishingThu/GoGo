<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<jsp:useBean id="admin" class="com.gogo.swp_gogo.models.Admin" scope="request"/>
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
        <li class="nav-item has-children">
          <a class="nav-link" id="logout"><icon class="icon-account_circle"> </icon><span> ${admin.username}</span></a>
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
        <h1 class="mb-3 bread">Welcome back ${admin.username}</h1>
<%--        <p>--%>
<%--          <a href="ViewXe?idNhaXe=${nhaXe.idNhaXe}#xe" class="btn btn-primary py-2 px-4">Xe chạy</a>--%>
<%--          <a href="#tuyenDuong" class="btn btn-black py-2 px-4">Tuyến xe</a>--%>
<%--        </p>--%>
      </div>
    </div>
  </div>
</section>

<section class="ftco-section ftco-services-2 ftco-no-pt">
  <div class="container">
    <div class="modal js-modal">
      <div class="addTuyenDuong col-md-9 ">
        <div class="icon-close js-close" onclick="closeModal()"></div>
        <form action="addNhaXe" class="p-5 bg-light" method="post" >
          <input type="text" value="${admin.username}" name="adminUsername" hidden="hidden">
          <h4 class="mb-2">Thêm tài khoản nhà xe</h4>
          <div class="row">
            <div class="form-group col-md-12">
              <label>Tên Nhà Xe *</label>
              <input type="text" class="form-control"  name="tenNhaXe" required="">
              <small></small>
            </div>
          </div>
          <div class="row">
            <div class="form-group col-md-12">
              <label>Username *</label>
              <input type="text" class="form-control"  name="username" required="">
              <small></small>
            </div>
          </div>
          <div class="row">
            <div class="form-group col-md-6">
              <label>Password *</label>
              <input type="password" class="form-control"  name="password" required="">
              <small></small>
            </div>
          </div>
          <div class="form-group them-btn">
            <input
                    type="submit"
                    value="Thêm tài khoản nhà xe"
                    class="btn py-3 px-5 btn-primary"
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
        <th scope="col">Id Nhà Xe</th>
        <th scope="col">Tên Nhà Xe</th>
        <th scope="col">Username</th>
        <th scope="col">Password</th>
        <th></th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="nhaXe" items="${admin.nhaXeList}">
        <tr>
          <th scope="row"></span> ${nhaXe.idNhaXe} </span></th>
          <td>${nhaXe.tenNhaXe}</td>
          <td>${nhaXe.username}</td>
          <td>${nhaXe.password}</td>
          <td>
            <button onclick="window.location.href='removeNhaXe?adminUsername=${admin.username}&idNhaXe=${nhaXe.idNhaXe}'" class="btn btn-primary js-del">
              <span class="icon-trash"> </span>
            </button>
            <button class="btn btn-primary js-del">
              <span class="icon-edit"> </span>
            </button>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <div class="col-md-12 ">
      <p>
        <button class="btn btn-primary py-3 px-4" onclick="openModal()">Thêm tài khoản nhà xe</button>
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
</html>

