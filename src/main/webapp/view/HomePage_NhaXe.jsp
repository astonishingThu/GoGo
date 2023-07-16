<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 07-Jun-23
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
     id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="view/index.html">GoGo</a>
        <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse"
                data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav nav ml-auto">
                <li class="nav-item"><a href="#home-section" class="nav-link"><span>Trang chủ</span></a></li>
                <li class="nav-item"><a href="#tuyenDuong" class="nav-link"><span>Tuyến đường</span></a></li>
                <li class="nav-item"><a href="#uuDai" class="nav-link"><span>Ưu đãi</span></a></li>
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
                <%--                <li class="nav-item has-children">--%>
                <%--                    <a class="nav-link" id="logout">--%>
                <%--                        <icon class="icon-account_circle"></icon>--%>
                <%--                        <span> Bao Ngoc </span></a>--%>
                <%--                    <ul class="dropdown">--%>
                <%--                        <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>--%>
                <%--                    </ul>--%>
                <%--                </li>--%>
                <!-- <li class="nav-item"><a href="#destination-section" class="nav-link"><span>Destination</span></a></li>
                <li class="nav-item"><a href="#restaurant-section" class="nav-link"><span>Restaurant</span></a></li>
                <li class="nav-item"><a href="#blog-section" class="nav-link"><span>Blog</span></a></li>
                <li class="nav-item"><a href="#contact-section" class="nav-link"><span>Contact</span></a></li> -->
            </ul>
        </div>
    </div>
</nav>
<jsp:include page="components/HomePage_Body.jsp"></jsp:include>

