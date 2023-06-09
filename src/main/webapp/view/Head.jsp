<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 07-Jun-23
  Time: 8:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="resourcePath" value="${pageContext.request.contextPath}/view/" scope="application"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>GoGo - Đặt xe thôi nào!</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<%--    <script src="${resourcePath}index.js"></script>--%>
    <script
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/open-iconic-bootstrap.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/animate.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/magnific-popup.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/aos.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/ionicons.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/flaticon.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/icomoon.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/style.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/myCSS/newStyle.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/myCSS/TuyenDuong_NhaXe.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
