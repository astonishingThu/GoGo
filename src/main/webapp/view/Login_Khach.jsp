 <%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 07-Jun-23
  Time: 10:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<body>
<div class="hero-wrap pt-5 pb-5" style="background-image: url('${resourcePath}images/destination-1.jpg')">
    <div class="col-md-7 mx-auto my-auto mt-5">
        <form
                class="bg-light p-4 p-md-5 login-form"
                action="GoGoLogin"
                method="post"
        >
            <h2 class="text-center">Đăng nhập</h2>
            <div class="form-group">
                <label>Email:<span class="star">*</span> </label>

                <input class="col-md-12" type="email" name="email" required/>
            </div>
            <div class="form-group">
                <label>Mật khẩu: <span class="star">*</span></label>
                <input class="col-md-12" type="password" id="password" name="password" required/>
                <small></small>
            </div>
            <button type="submit" class="btn btn-primary py-3 px-5 py-2 px-5 mt-2 col-md-12 mb-4">
                Đăng nhập
            </button>
            <div>
                Bạn chưa có tài khoản?
                <a href="GoGoSignup">Đăng ký</a>
            </div>
        </form>
    </div>
</div>
</body>
 <script>
     const password = document.getElementById("password");
     if ('${connection}' === "false") {
         password.parentNode.querySelector("small").innerText = "Tài khoản hoặc mật khẩu không đúng"
     }
 </script>
</html>
