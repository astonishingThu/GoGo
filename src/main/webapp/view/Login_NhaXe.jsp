<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 07-Jun-23
  Time: 10:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<body>
<div class="hero-wrap pt-5 pb-5" style="background-image: url('${resourcePath}images/destination-1.jpg')">
    <div class="col-md-12 order-md-last p-5 " >
        <div class="col-md-5 mx-auto my-auto mt-5">
            <form
                    class="bg-light p-4 p-md-5 login-form"
                    action="NhaXeGoGoLogin"
                    method="post"
            >
            <h2 class="text-center">Đăng nhập</h2>
                <div class="form-group">
                    <label>Tên tài khoản: <span class="star">*</span> </label>

                    <input class="col-md-12" type="text" name="username" required />
                </div>
                <div class="form-group">
                    <label>Mật khẩu: <span class="star">*</span></label>
                    <input class="col-md-12" type="password" name="password" id="password" required /><br>
                    <small></small>
                </div>

                <button type="submit" class="btn btn-primary py-2 px-5 mt-2 col-md-12 mb-4">
                    Đăng nhập
                </button>
            <div>
                Bạn chưa có tài khoản?
                <a href="GoGoNhaXeSignup">Đăng ký</a>
            </div>
            </form>
        </div>
    </div>
</div>
<c:set var = "connection" scope="request" value="${connection}"/>
<div type="hidden" value="${connection.toString()}" id="status"></div>
</body>
<script>
    const password = document.getElementById("password");
    if ('${connection}' === "false") {
        password.parentNode.querySelector("small").innerText = "Tài khoản hoặc mật khẩu không đúng"
    }
</script>
</html>


