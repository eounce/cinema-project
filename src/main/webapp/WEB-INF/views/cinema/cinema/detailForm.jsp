<%--
  Created by IntelliJ IDEA.
  User: 201712035@office.induk.ac.kr
  Date: 2021-07-06
  Time: 오후 1:54
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

<c:import url="../main/nav.jsp"/>

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
                        <!--
                        <div class="item">
                            <i class="fas fa-calendar-alt"></i><span>06 Dec, 2020</span>
                        </div>
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
                <div class="widget-1 widget-tags">
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
                                    <h5 class="sub-title">상세정보</h5>
                                    <p style="font-size:20px; margin-top:10px;">${cinema.introduction}</p>
                                </div>
                                <div class="item" style=""><div class="header"></div></div>
                                <div class="item">
                                    <div class="header">
                                        <h5 class="sub-title">영화관 위치
                                            <div class="item">
                                                <span style="font-size:20px">도로명 주소 : ${cinema.address}</span>
                                            </div>
                                        </h5>
                                    </div>
                                    <div>
                                        <iframe src="${cinema.mapAddress}" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="header">
                                        <h5 class="sub-title">crew</h5>
                                        <div class="navigation">
                                            <div class="cast-prev-2"><i class="flaticon-double-right-arrows-angles"></i></div>
                                            <div class="cast-next-2"><i class="flaticon-double-right-arrows-angles"></i></div>
                                        </div>
                                    </div>
                                    <div class="casting-slider-two owl-carousel">
                                        <div class="cast-item">
                                            <div class="cast-thumb">
                                                <a href="#0">
                                                    <img src="/cinema/assets/images/cast/cast05.jpg" alt="cast">
                                                </a>
                                            </div>
                                            <div class="cast-content">
                                                <h6 class="cast-title"><a href="#0">pete warren</a></h6>
                                                <span class="cate">actor</span>
                                            </div>
                                        </div>
                                        <div class="cast-item">
                                            <div class="cast-thumb">
                                                <a href="#0">
                                                    <img src="/cinema/assets/images/cast/cast06.jpg" alt="cast">
                                                </a>
                                            </div>
                                            <div class="cast-content">
                                                <h6 class="cast-title"><a href="#0">howard bass</a></h6>
                                                <span class="cate">executive producer</span>
                                            </div>
                                        </div>
                                        <div class="cast-item">
                                            <div class="cast-thumb">
                                                <a href="#0">
                                                    <img src="/cinema/assets/images/cast/cast07.jpg" alt="cast">
                                                </a>
                                            </div>
                                            <div class="cast-content">
                                                <h6 class="cast-title"><a href="#0">naomi smith</a></h6>
                                                <span class="cate">producer</span>
                                            </div>
                                        </div>
                                        <div class="cast-item">
                                            <div class="cast-thumb">
                                                <a href="#0">
                                                    <img src="/cinema/assets/images/cast/cast08.jpg" alt="cast">
                                                </a>
                                            </div>
                                            <div class="cast-content">
                                                <h6 class="cast-title"><a href="#0">tom martinez</a></h6>
                                                <span class="cate">producer</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-item">
                                <div class="movie-review-item">
                                    <div class="author">
                                        <div class="thumb">
                                            <a href="#0">
                                                <img src="/cinema/assets/images/cast/cast02.jpg" alt="cast">
                                            </a>
                                        </div>
                                        <div class="movie-review-info">
                                            <span class="reply-date">13 Days Ago</span>
                                            <h6 class="subtitle"><a href="#0">minkuk seo</a></h6>
                                            <span><i class="fas fa-check"></i> verified review</span>
                                        </div>
                                    </div>
                                    <div class="movie-review-content">
                                        <div class="review">
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                        </div>
                                        <h6 class="cont-title">Awesome Movie</h6>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer volutpat enim non ante egestas vehicula. Suspendisse potenti. Fusce malesuada fringilla lectus venenatis porttitor. </p>
                                        <div class="review-meta">
                                            <a href="#0">
                                                <i class="flaticon-hand"></i><span>8</span>
                                            </a>
                                            <a href="#0" class="dislike">
                                                <i class="flaticon-dont-like-symbol"></i><span>0</span>
                                            </a>
                                            <a href="#0">
                                                Report Abuse
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="movie-review-item">
                                    <div class="author">
                                        <div class="thumb">
                                            <a href="#0">
                                                <img src="/cinema/assets/images/cast/cast04.jpg" alt="cast">
                                            </a>
                                        </div>
                                        <div class="movie-review-info">
                                            <span class="reply-date">13 Days Ago</span>
                                            <h6 class="subtitle"><a href="#0">rudra rai</a></h6>
                                            <span><i class="fas fa-check"></i> verified review</span>
                                        </div>
                                    </div>
                                    <div class="movie-review-content">
                                        <div class="review">
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                        </div>
                                        <h6 class="cont-title">Awesome Movie</h6>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer volutpat enim non ante egestas vehicula. Suspendisse potenti. Fusce malesuada fringilla lectus venenatis porttitor. </p>
                                        <div class="review-meta">
                                            <a href="#0">
                                                <i class="flaticon-hand"></i><span>8</span>
                                            </a>
                                            <a href="#0" class="dislike">
                                                <i class="flaticon-dont-like-symbol"></i><span>0</span>
                                            </a>
                                            <a href="#0">
                                                Report Abuse
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="movie-review-item">
                                    <div class="author">
                                        <div class="thumb">
                                            <a href="#0">
                                                <img src="/cinema/assets/images/cast/cast01.jpg" alt="cast">
                                            </a>
                                        </div>
                                        <div class="movie-review-info">
                                            <span class="reply-date">13 Days Ago</span>
                                            <h6 class="subtitle"><a href="#0">rafuj</a></h6>
                                            <span><i class="fas fa-check"></i> verified review</span>
                                        </div>
                                    </div>
                                    <div class="movie-review-content">
                                        <div class="review">
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                        </div>
                                        <h6 class="cont-title">Awesome Movie</h6>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer volutpat enim non ante egestas vehicula. Suspendisse potenti. Fusce malesuada fringilla lectus venenatis porttitor. </p>
                                        <div class="review-meta">
                                            <a href="#0">
                                                <i class="flaticon-hand"></i><span>8</span>
                                            </a>
                                            <a href="#0" class="dislike">
                                                <i class="flaticon-dont-like-symbol"></i><span>0</span>
                                            </a>
                                            <a href="#0">
                                                Report Abuse
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="movie-review-item">
                                    <div class="author">
                                        <div class="thumb">
                                            <a href="#0">
                                                <img src="/cinema/assets/images/cast/cast03.jpg" alt="cast">
                                            </a>
                                        </div>
                                        <div class="movie-review-info">
                                            <span class="reply-date">13 Days Ago</span>
                                            <h6 class="subtitle"><a href="#0">bela bose</a></h6>
                                            <span><i class="fas fa-check"></i> verified review</span>
                                        </div>
                                    </div>
                                    <div class="movie-review-content">
                                        <div class="review">
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                            <i class="flaticon-favorite-heart-button"></i>
                                        </div>
                                        <h6 class="cont-title">Awesome Movie</h6>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer volutpat enim non ante egestas vehicula. Suspendisse potenti. Fusce malesuada fringilla lectus venenatis porttitor. </p>
                                        <div class="review-meta">
                                            <a href="#0">
                                                <i class="flaticon-hand"></i><span>8</span>
                                            </a>
                                            <a href="#0" class="dislike">
                                                <i class="flaticon-dont-like-symbol"></i><span>0</span>
                                            </a>
                                            <a href="#0">
                                                Report Abuse
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="load-more text-center">
                                    <a href="#0" class="custom-button transparent">load more</a>
                                </div>
                            </div>

                            <div class="tab-item">
                                <div>
                                    <div style="float:left;">
                                        <p class="fee-table-tit">  2D</p>
                                        <div class="table-wrap">
                                            <table class="data-table a-c" summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
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
                                                    <td>9,000</td>
                                                    <td>7,000</td>
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
                                                    <td>10,000</td>
                                                    <td>7,000</td>
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
                                    <div style="float:left;">
                                        <p class="fee-table-tit">  3D</p>
                                        <div class="table-wrap">
                                            <table class="data-table a-c" summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">			<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>			<colgroup>				<col>				<col style="width:25%;">				<col style="width:25%;">				<col style="width:25%;">			</colgroup>			<thead>				<tr>					<th scope="col">요일</th>					<th scope="col">상영시간</th>					<th scope="col">일반</th>					<th scope="col">청소년</th>				</tr>			</thead>			<tbody><tr><th scope="rowgroup" rowspan="3">월~목</th><td>조조 (06:00~)</td><td>10,000</td><td>8,000</td></tr><tr><td>일반 (10:01~)</td><td>14,000</td><td>11,000</td></tr><tr><td>심야 (23:00~)</td><td>13,000</td><td>10,000</td></tr><tr><th scope="rowgroup" rowspan="3">금~일<br>공휴일</th><td>조조 (06:00~)</td><td>11,000</td><td>9,000</td></tr><tr><td>일반 (10:01~)</td><td>15,000</td><td>12,000</td></tr><tr><td>심야 (23:00~)</td><td>14,000</td><td>11,000</td></tr></tbody>		</table>	</div></div></div>
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