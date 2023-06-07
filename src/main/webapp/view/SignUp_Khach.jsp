<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 07-Jun-23
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
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
            <a href="Login_NhaXe.jsp">Đăng nhập</a>
        </div>
    </div>
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