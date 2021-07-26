<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="com.induk.cinema.domain.Movie" %><%--
  Created by IntelliJ IDEA.
  User: 201712035@office.induk.ac.kr
  Date: 2021-06-30
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <c:import url="../main/header.jsp"/>

    <title>Boleto  - Online Ticket Booking Website HTML Template</title>


</head>

<body>

<c:import url="../main/nav.jsp"/>

<!-- ==========Banner-Section========== -->
<section class="banner-section">
    <div class="banner-bg bg_img bg-fixed" data-background="/csmovie/assets/images/banner/banner01.jpg"></div>
    <div class="container">
        <div class="banner-content">
            <h1 class="title  cd-headline clip"><span class="d-block">예매가 성공적으로 </br> 완료되었습니다.</span></h1>
        </div>
    </div>
</section>
<!-- ==========Banner-Section========== -->

<c:import url="../main/footer.jsp"/>

</body>

</html>