<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
          <form class="login__form" action="GoGoLogin" method="post">
            <label>Email: </label>
            <p class="star">*</p>
            <input
              type="email" name="email"
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
            <Link to="/dangky">Đăng ký</Link>
          </div>
        </div>
        <div class="login__ill">
          <img src="image/Vector2.svg"></img>
        </div>
        <div class="login__right"></div>
      </div>
</body>
</html>

<%
    if (request.getAttribute("connection")!=null) {
        if (request.getAttribute("connection").equals(true)) {
            out.print("true");
        } else {
            out.print("false");
        }
    }

%>