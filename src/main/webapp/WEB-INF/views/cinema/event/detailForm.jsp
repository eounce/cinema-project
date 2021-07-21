<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <c:import url="../main/header.jsp"/>
    <title>Boleto  - Online Ticket Booking Website HTML Template</title>
</head>

<body>
<c:import url="../main/nav.jsp"/>

<!-- ==========Event-Section========== -->
<section class="event-details padding-bottom padding-top">
    <div class="container">
        <div class="section-header-3" style="border-bottom: 0.5mm solid; border-color: #2d4186; margin-bottom: 0px" >
            <br>
            <br>
            <br>
            <h2 class="title" align="left">${event.title}</h2>
            <c:set var="startDate" value="${event.startDate}"/>
            <c:set var="endDate" value="${event.endDate}"/>
            <span class="cate" align="left"><font color="#FFFFFF">기간 : </font>${fn:substring(startDate,0, 4)}년 ${fn:substring(startDate,6, 7)}월 ${fn:substring(startDate,8,10)}일 ~
                ${fn:substring(endDate,0, 4)}년 ${fn:substring(endDate,6, 7)}월 ${fn:substring(endDate,8,10)}일
            </span>
        </div>
        <div id="eventImage" align="center" style="border-bottom: 0.5mm solid; border-color: #2d4186;  padding-bottom: 40px; padding-top: 40px">
            <img src="/csmovie/events/images/${event.storeFilename}" alt="eventImage" width="1140">
        </div>
        <div id="content" style="padding-top: 32px; " align="left">
            <% pageContext.setAttribute("enter", "\n"); %>
            <c:set var="content" value="${event.content}"/>
            <span style="font-size: 23px" >${fn:replace(content, enter, '<br>')}</span>
        </div>
    </div>
</section>
<!-- ==========Event-Section========== -->
<br>
<c:import url="../main/footer.jsp"/>
</body>
</html>
