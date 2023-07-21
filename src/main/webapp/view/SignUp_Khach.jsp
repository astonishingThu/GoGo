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
    <div class="hero-wrap p-5 pb-5" style="background-image: url('${resourcePath}images/destination-1.jpg')">
        <div class="col-md-6 mx-auto my-auto mt-5">
            <form class="bg-light p-4 p-md-5 login-form" method="post" action="GoGoSignup" onsubmit="return validateSignUp()">
                <h2 class="text-center">Đăng ký</h2>
                <div class="form-group">
                    <label>Họ và tên: <span>*</span> </label>
                    <input id="hoVaTen" class="col-md-12" type="text" name="fullName"/>
                    <small></small>
                </div>
                <div class="form-group">
                    <label>Email: <span>*</span> </label>
                    <input id="email" class="col-md-12" type="text" name="email"/>
                    <small></small>
                </div>
                <div class="form-group">
                    <label>Mật khẩu: <span>*</span></label>
                    <input id="password" class="col-md-12" type="password" name="password"/>
                    <small></small>
                </div>
                <div class="form-group">
                    <label>Số điện thoại:<span>*</span> </label>
                    <input id="phoneNumber" class="col-md-12" type="number" name="phoneNumber"/>
                    <small></small>
                </div>
                <button type="submit" class="btn btn-secondary py-3 px-5 py-2 px-5 mt-2 col-md-12 mb-4">
                    Đăng ký
                </button>
                <div>
                    Bạn đã có tài khoản?
                    <a href="Login_Khach.jsp">Đăng nhập</a>
                </div>
            </form>
        </div>
</body>
</html>

<%
    if (request.getAttribute("connection") != null) {
        if (request.getAttribute("connection").equals(true)) {
            out.print("true");
        } else {
            out.print("false");
        }
    }
%>
<script src="${resourcePath}myJS/Validate.js"></script>
<script src="${resourcePath}myJS/SignUp_Khach.js"></script>