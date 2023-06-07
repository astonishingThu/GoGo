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
<div>
    <div class="col-md-7 order-md-last d-flex">
        <div class="login__left">
            <h2>Đăng nhập</h2>
            <form
                    class="bg-light p-4 p-md-5 login-form"
                    action="GoGoLogin"
                    method="post"
            >
                <div class="form-group">
                    <label>Tên tài khoản:<span class="star">*</span> </label>

                    <input type="email" name="email" required />
                </div>
                <div class="form-group">
                    <label>Mật khẩu: <span class="star">*</span></label>
                    <input type="password" name="password" required />
                </div>

                <p class="alter">Đăng nhập bằng SĐT</p>

                <button type="submit" class="btn btn-primary py-3 px-5">
                    Đăng nhập
                </button>
            </form>
            <div>
                Bạn chưa có tài khoản?
                <a href="SignUp_NhaXe.jsp">Đăng ký</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
