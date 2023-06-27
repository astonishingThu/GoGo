<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 28 Reasons Is A BOP
  Date: 23/06/2023
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="Head.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <div>
        <div>Danh sách xe chạy *</div>
        <form method="post" action="SelectXe">
            <input type="hidden" name="idNhaXe" value="${nhaXe.idNhaXe}"/>
            <c:forEach var="xe" items="${xeList}">
                <div class="col-md-2 btn btn-secondary m-2"><input type="radio" name="idXe" value="${xe.idXe}"/> <span
                        class="icon-bus">${xe.idXe}</span>
                </div>
            </c:forEach>
            <input type="submit" value="submit">
        </form>
    </div>
</body>
</html>
