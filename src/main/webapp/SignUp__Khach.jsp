<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="App.css">
    <title>Sign up</title>
  </head>
  <body>
    <div class="signup container">
      <div class="signup__left">
        <div class="recta1"></div>
        <div class="recta2"></div>
        <div class="signup__ill">
          <img src="image/vector2.svg" />
        </div>
      </div>

      <div class="signup__right">
        <h2>Đăng ký</h2>
        <form class="signup__form" method="post" action="GoGoSignup">
          <label>Họ và tên: </label>
          <p class="star">*</p>
          <input type="text" required name="fullName"/>
          <label>Email: </label>
          <p class="star">*</p>
          <input type="email" name="email" required />
          <label>Mật khẩu: </label>
          <p class="star">*</p>
          <input type="password" name="password" required />
          <label>Số điện thoại: </label>
          <p class="star">*</p>
          <input type="number" name="phoneNumber" required />
          <button type="submit">Đăng ký</button>
        </form>
        <div>
          Bạn đã có tài khoản?
          <a href="Login_NhaXe.html">Đăng nhập</a>
        </div>
      </div>
    </div>
  </body>
</html>
