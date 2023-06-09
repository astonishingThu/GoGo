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
<div>
    <div id="notice">Xin chao</div>
    <div class="col-md-7 order-md-last d-flex">
        <div class="login__left">
            <h2>Đăng nhập</h2>
            <form
                    class="bg-light p-4 p-md-5 login-form"
                    action="NhaXeGoGoLogin"
                    method="post"
            >
                <div class="form-group">
                    <label>Tên tài khoản:<span class="star">*</span> </label>

                    <input type="text" name="username" required />
                </div>
                <div class="form-group">
                    <label>Mật khẩu: <span class="star">*</span></label>
                    <input type="password" name="password" required />
                </div>

                <p class="alter">Đăng nhập bằng SĐT</p>

                <button type="submit" class="btn btn-primary py-3 px-5" onclick="handleNotice()">
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
<c:set var = "connection" scope="request" value="${connection}"/>
<c:if test = "${connection!=null}">
    <h2><c:out value="${connection.toString()}"/></h2>
</c:if>
<div type="hidden" value="${connection.toString()}" id="status"></div>
</body>
<script>
    var result = '${connection.toString()}';
    function handleNotice(){
        console.log("hi");
        // let result = document.getElementById(status);
        // console.log("Vao ham");
        // notice("hi");
        // notice("Tên tài khoản hoặc mật khẩu không đúng!");
        // if (status==="false"){
        //     notice("Tên tài khoản hoặc mật khẩu không đúng!");
        //     console.log("NOT OK");
        // } else {
        //     notice("Đăng nhập thành công!");
        //     console.log("OK");
        // }
    }
</script>
</html>


