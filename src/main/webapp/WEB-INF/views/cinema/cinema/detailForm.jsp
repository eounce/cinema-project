<%--
  Created by IntelliJ IDEA.
  User: 201712035@office.induk.ac.kr
  Date: 2021-07-06
  Time: 오후 1:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <c:import url="../main/header.jsp"/>

    <title>Boleto  - Online Ticket Booking Website HTML Template</title>


</head>

<c:import url="../main/nav.jsp"/>

<style>
    .seat-plan-wrapper li .movie-schedule {
        width: calc(100% - 45%);
        padding: 30px;
        -webkit-box-pack: justify;
        -ms-flex-pack: justify;
        justify-content: start;
        margin: -5px;
    }

    .seat-plan-wrapper li .movie-schedule .item {
        color: #ffffff;
        padding: 5px;
        width: 70px;
        background: #162f5f;
        position: relative;
        mask-position: center center;
        -webkit-mask-position: center center;
        text-align: center;
        mask-image: url(/cinema/assets/css/img/movie-seat.png);
        -webkit-mask-image: url(/cinema/assets/css/img/movie-seat.png);
        -webkit-mask-repeat: no-repeat;
        mask-repeat: no-repeat;
        -webkit-mask-size: 100% 100%;
        mask-size: 100% 100%;
        cursor: pointer;
        -webkit-transition: all ease 0.3s;
        transition: all ease 0.3s;
        margin: 5px;

        display: flex;
        align-items: center;
        justify-content: center;
    }

</style>

<!-- ==========Banner-Section========== -->
<section class="details-banner bg_img" data-background="/cinema/assets/images/banner/banner03.jpg">
    <div class="container">
        <div class="details-banner-wrapper">
            <div class="details-banner-content offset-lg-2">
                <h3 class="title">${cinema.name}</h3>
                <div class="tags">
                    <!--
                    <a href="#0">English</a>
                    <a href="#0">Hindi</a>
                    <a href="#0">Telegu</a>
                    <a href="#0">Tamil</a>
                    -->
                </div>
                <div class="social-and-duration">
                    <div class="duration-area">
                        <div class="item">
                            <span><c:if test="${cinema.subtitle != null}">${cinema.subtitle}</c:if></span>
                        </div>
                        <!--
                        <div class="item">
                            <i class="far fa-clock"></i><span>2 hrs 50 mins</span>
                        </div>
                        -->
                    </div>
                    <ul class="social-share">
                        <li><a href="https://www.facebook.com/megaboxon"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="https://twitter.com/megaboxon"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="http://instagram.com/megaboxon"><i class="fab fa-linkedin-in"></i></a></li>
                        <li><a href="https://play.google.com/store/apps/details?id=com.megabox.mop"><i class="fab fa-google-play"></i></a></li>
                        <li><a href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&ls=1&mt=8"><i class="fab fa-apple"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- ==========Banner-Section========== -->

<!-- ==========Movie-Section========== -->
<section class="movie-details-section padding-top padding-bottom">
    <div class="container">
        <div class="row justify-content-center flex-wrap-reverse mb--50">
            <div class="col-lg-3 col-sm-10 col-md-6 mb-50">
                <div class="widget-1 widget-offer widget-tags">
                    <h3 class="title">보유 시설</h3>
                    <ul>
                        <c:forEach var="facility" items="${facilitys}">
                        <li>
                            <a href="" style="pointer-events: none; cursor: default;">${facility}</a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="widget-1 widget-offer">
                    <h3 class="title">Applicable offer</h3>
                    <div class="offer-body">
                        <div class="offer-item">
                            <div class="thumb">
                                <img src="/cinema/assets/images/sidebar/offer01.png" alt="sidebar">
                            </div>
                            <div class="content">
                                <h6>
                                    <a href="#0">Amazon Pay Cashback Offer</a>
                                </h6>
                                <p>Win Cashback Upto Rs 300*</p>
                            </div>
                        </div>
                        <div class="offer-item">
                            <div class="thumb">
                                <img src="/cinema/assets/images/sidebar/offer02.png" alt="sidebar">
                            </div>
                            <div class="content">
                                <h6>
                                    <a href="#0">PayPal Offer</a>
                                </h6>
                                <p>Transact first time with Paypal and
                                    get 100% cashback up to Rs. 500</p>
                            </div>
                        </div>
                        <div class="offer-item">
                            <div class="thumb">
                                <img src="/cinema/assets/images/sidebar/offer03.png" alt="sidebar">
                            </div>
                            <div class="content">
                                <h6>
                                    <a href="#0">HDFC Bank Offer</a>
                                </h6>
                                <p>Get 15% discount up to INR 100*
                                    and INR 50* off on F&B T&C apply</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget-1 widget-banner">
                    <div class="widget-1-body">
                        <a href="#0">
                            <img src="/cinema/assets/images/sidebar/banner/banner01.jpg" alt="banner">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 mb-50">
                <div class="movie-details">
                    <div class="tab summery-review">
                        <ul class="tab-menu">
                            <li class="active">
                                극장정보
                            </li>
                            <li>
                                상영시간표
                            </li>
                            <li>
                                관람료
                            </li>
                        </ul>
                        <div class="tab-area">
                            <div class="tab-item active">
                                <div class="item" style="margin-bottom:15px;">
                                    <p style="font-size:20px; margin-top:60px;">${fn:replace(cinema.introduction, replaceChar, "<br>")}</p>
                                </div>
                                <div class="item" style=""><div class="header"></div></div>

                                <div class="item">
                                    <div class="header">
                                        <h5 class="sub-title">주차 안내</h5>
                                    </div>
                                    <div class="blog-author">
                                        <div style="font-size: 100px;">
                                            <i class="fas fa-parking"></i>
                                        </div>
                                        <div class="author-content">
                                            <h5 class="title">
                                            </h5>
                                            <p>
                                                ${fn:replace(cinema.parking, replaceChar, "<br>")}
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="header">
                                        <h5 class="sub-title">영화관 위치
                                            <div class="item">
                                                <span style="font-size:15px; margin-top:5px;">도로명 주소 : ${cinema.address}</span>
                                            </div>
                                        </h5>
                                    </div>
                                    <div>
                                        <iframe src="${cinema.mapAddress}" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-item">
                                <div class="container">
                                    <c:forEach var="movie" items="${movies}">
                                    <div class="details-banner-wrapper">
                                        <div class="details-banner-content" style="margin-bottom:30px;">
                                            <div class="social-and-duration">
                                                <div class="duration-area" >
                                                    <div class="item">
                                                        <span>${movie.scheduleForm.movie_title}/${movie.scheduleForm.movie_rating}</span>
                                                    </div>
                                                    <!--
                                                    <div class="item">
                                                        <i class="far fa-clock"></i><span>2 hrs 50 mins</span>
                                                    </div>
                                                    -->
                                                </div>
                                                <ul class="social-share" style="padding-right: 10px;">
                                                    <span>상영중/상영시간 ${movie.scheduleForm.movie_showtimes}분</span>
                                                </ul>
                                        </div>


                                            <div class="ticket-plan-section">
                                                <div class="row justify-content-center">
                                                    <div class="col-lg-12 mb-5 mb-lg-0">
                                                        <ul class="seat-plan-wrapper bg-five">
                                                            <c:forEach var="theater" items="${theaters}">
                                                            <c:if test="${theater.movie_id == movie.movie_id}">
                                                            <li>
                                                                <div class="movie-name">
                                                                    <div>
                                                                        <h5>${theater.scheduleForm.theater_name}</h5>총${theater.scheduleForm.theater_seat}석
                                                                    </div>
                                                                    <div>
                                                                        ${movie.screening_format}
                                                                    </div>
                                                                </div>
                                                                <div class="movie-schedule">
                                                                <c:forEach var="schedule" items="${schedules}">
                                                                    <c:if test="${schedule.theater_id == theater.theater_id and schedule.movie_id == theater.movie_id}">
                                                                        <div class="item">
                                                                            ${schedule.start_time}
                                                                        </div>
                                                                    </c:if>
                                                                </c:forEach>
                                                                </div>
                                                            </li>
                                                            </c:if>
                                                            </c:forEach>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                </div>
                            </div>

                            <div class="tab-item">
                                <div>
                                    <c:forEach var="facility" items="${facilitys}">
                                        <c:if test="${facility == '일반상영관'}">
                                            <div style="float:left; width:50%;">
                                                <p style="margin-top:20px;">  2D</p>
                                                <div class="table-wrap">
                                                    <table class="data-table a-c" summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다." style="text-align: center;">
                                                        <colgroup>
                                                            <col>
                                                            <col style="width:25%;">
                                                            <col style="width:25%;">
                                                            <col style="width:25%;">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">요일</th>
                                                                <th scope="col">상영시간</th>
                                                                <th scope="col">일반</th>
                                                                <th scope="col">청소년</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <th scope="rowgroup" rowspan="3">월~목</th>
                                                            <td>조조 (06:00~)</td>
                                                            <td>5,000</td>
                                                            <td>2,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>일반 (10:01~)</td>
                                                            <td>10,000</td>
                                                            <td>7,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>심야 (23:00~)</td>
                                                            <td>9,000</td>
                                                            <td>6,000</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="rowgroup" rowspan="3">금~일<br>공휴일</th>
                                                            <td>조조 (06:00~)</td>
                                                            <td>5,000</td>
                                                            <td>2,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>일반 (10:01~)</td>
                                                            <td>11,000</td>
                                                            <td>8,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>심야 (23:00~)</td>
                                                            <td>10,000</td>
                                                            <td>7,000</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                            <div style="float:left; width:50%;">
                                                <p style="margin-top:20px;">  3D</p>
                                                <div class="table-wrap">
                                                    <table class="data-table a-c" summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다." style="text-align: center;">
                                                        <colgroup>
                                                            <col>
                                                            <col style="width:25%;">
                                                            <col style="width:25%;">
                                                            <col style="width:25%;">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">요일</th>
                                                                <th scope="col">상영시간</th>
                                                                <th scope="col">일반</th>
                                                                <th scope="col">청소년</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="rowgroup" rowspan="3">월~목</th>
                                                                <td>조조 (06:00~)</td>
                                                                <td>10,000</td>
                                                                <td>7,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>일반 (10:01~)</td>
                                                                <td>15,000</td>
                                                                <td>12,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>심야 (23:00~)</td>
                                                                <td>14,000</td>
                                                                <td>11,000</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="rowgroup" rowspan="3">금~일<br>공휴일</th>
                                                                <td>조조 (06:00~)</td>
                                                                <td>10,000</td>
                                                                <td>7,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>일반 (10:01~)</td>
                                                                <td>16,000</td>
                                                                <td>13,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>심야 (23:00~)</td>
                                                                <td>15,000</td>
                                                                <td>12,000</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${facility == 'MX'}">
                                            <div style="float:left; width:50%;">
                                                <p style="margin-top:20px;">  MX 2D</p>
                                                <div class="table-wrap">
                                                    <table class="data-table a-c" summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다." style="text-align: center;">
                                                        <colgroup>
                                                            <col>
                                                            <col style="width:25%;">
                                                            <col style="width:25%;">
                                                            <col style="width:25%;">
                                                        </colgroup>
                                                        <thead>
                                                        <tr>
                                                            <th scope="col">요일</th>
                                                            <th scope="col">상영시간</th>
                                                            <th scope="col">일반</th>
                                                            <th scope="col">청소년</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <th scope="rowgroup" rowspan="3">월~목</th>
                                                            <td>조조 (06:00~)</td>
                                                            <td>8,000</td>
                                                            <td>5,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>일반 (10:01~)</td>
                                                            <td>13,000</td>
                                                            <td>10,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>심야 (23:00~)</td>
                                                            <td>12,000</td>
                                                            <td>9,000</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="rowgroup" rowspan="3">금~일<br>공휴일</th>
                                                            <td>조조 (06:00~)</td>
                                                            <td>8,000</td>
                                                            <td>5,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>일반 (10:01~)</td>
                                                            <td>14,000</td>
                                                            <td>11,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>심야 (23:00~)</td>
                                                            <td>13,000</td>
                                                            <td>10,000</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                            <div style="float:left; width:50%;">
                                                <p style="margin-top:20px;">  MX 3D</p>
                                                <div class="table-wrap">
                                                    <table class="data-table a-c" summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다." style="text-align: center;">
                                                        <colgroup>
                                                            <col>
                                                            <col style="width:25%;">
                                                            <col style="width:25%;">
                                                            <col style="width:25%;">
                                                        </colgroup>
                                                        <thead>
                                                        <tr>
                                                            <th scope="col">요일</th>
                                                            <th scope="col">상영시간</th>
                                                            <th scope="col">일반</th>
                                                            <th scope="col">청소년</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <th scope="rowgroup" rowspan="3">월~목</th>
                                                            <td>조조 (06:00~)</td>
                                                            <td>13,000</td>
                                                            <td>10,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>일반 (10:01~)</td>
                                                            <td>15,000</td>
                                                            <td>12,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>심야 (23:00~)</td>
                                                            <td>14,000</td>
                                                            <td>11,000</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="rowgroup" rowspan="3">금~일<br>공휴일</th>
                                                            <td>조조 (06:00~)</td>
                                                            <td>10,000</td>
                                                            <td>7,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>일반 (10:01~)</td>
                                                            <td>16,000</td>
                                                            <td>13,000</td>
                                                        </tr>
                                                        <tr>
                                                            <td>심야 (23:00~)</td>
                                                            <td>15,000</td>
                                                            <td>12,000</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========Movie-Section========== -->

<c:import url="../main/footer.jsp"/>

</body>

</html>