<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="App.css">
    <title>Login</title>
</head>
<body>
    <div class="login login--hanhkhach container">
        <div class="login__left">
          <h2>Đăng nhập</h2>
          <form class="login__form" action="NhaXeGoGoLogin" method="post">
            <label abel>Username: </label>
            <p class="star">*</p>
            <input
              type="text" name="username"
              required
            ></input>
            <label>Mật khẩu: </label>
            <p class="star">*</p>
            <input
              type="password" name="password"
              required
            ></input>
            <p class="alter">Đăng nhập bằng SĐT</p>
            <button type="submit">
              Đăng nhập
            </button>
          </form>
          <div>
            Bạn chưa có tài khoản?
            <a href="SignUp_Khach.jsp">Đăng ký</a>
          </div>
        </div>
        <div class="login__ill">
          <img src="/image/Vector1.svg"></img>
        </div>
        <div class="login__right"></div>
      </div>
    <c:set var = "connection" scope="request" value="${connection}"/>
    <c:if test = "${connection!=null}">
        <c:if test = "${connection==true}">
            <h2><c:out value="${connection}"/></h2>
        </c:if>
    </c:if>
</body>
</html>
