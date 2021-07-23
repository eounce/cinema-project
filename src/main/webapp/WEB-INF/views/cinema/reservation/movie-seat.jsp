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

<body>

<c:import url="../main/nav.jsp"/>

<!-- ==========Banner-Section========== -->
<section class="details-banner hero-area bg_img seat-plan-banner" data-background="/cinema/assets/images/banner/banner04.jpg">
    <div class="container">
        <div class="details-banner-wrapper">
            <div class="details-banner-content style-two">
                <h3 class="title">Venus${scheduleId}</h3>
                <div class="tags">
                    <a href="#0">City Walk</a>
                    <a href="#0">English - 2D</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========Banner-Section========== -->

<!-- ==========Page-Title========== -->
<section class="page-title bg-one">
    <div class="container">
        <div class="page-title-area">
            <div class="item md-order-1">
                <a href="movie-ticket-plan.html" class="custom-button back-button">
                    <i class="flaticon-double-right-arrows-angles"></i>back
                </a>
            </div>
            <div class="item date-item">
                <span class="date">MON, SEP 09 2020</span>
                <select class="select-bar">
                    <option value="sc1">09:40</option>
                    <option value="sc2">13:45</option>
                    <option value="sc3">15:45</option>
                    <option value="sc4">19:50</option>
                </select>
            </div>
            <div class="item">
                <h5 class="title">05:00</h5>
                <p>Mins Left</p>
            </div>
        </div>
    </div>
</section>
<!-- ==========Page-Title========== -->

<!-- ==========Movie-Section========== -->
<div class="seat-plan-section padding-bottom padding-top">
    <div class="container">
        <div class="screen-area">
            <h4 class="screen">screen</h4>
            <div class="screen-thumb">
                <img src="/cinema/assets/images/movie/screen-thumb.png" alt="movie">
            </div>
            <h5 class="subtitle">silver plus</h5>
            <div class="screen-wrapper">
                <ul class="seat-area">
                    <li class="seat-line">
                        <span>G</span>
                        <ul class="seat--area">
                            <li class="front-seat">
                                <ul>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                </ul>
                            </li>
                            <li class="front-seat">
                                <ul>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                </ul>
                            </li>
                            <li class="front-seat">
                                <ul>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <span>G</span>
                    </li>
                    <li class="seat-line">
                        <span>f</span>
                        <ul class="seat--area">
                            <li class="front-seat">
                                <ul>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                </ul>
                            </li>
                            <li class="front-seat">
                                <ul>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat seat-free">
                                        <img src="/cinema/assets/images/movie/seat01-free.png" alt="seat">
                                        <span class="sit-num">f7</span>
                                    </li>
                                    <li class="single-seat seat-free">
                                        <img src="/cinema/assets/images/movie/seat01-free.png" alt="seat">
                                        <span class="sit-num">f8</span>
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                </ul>
                            </li>
                            <li class="front-seat">
                                <ul>
                                    <li class="single-seat seat-free">
                                        <img src="/cinema/assets/images/movie/seat01-free.png" alt="seat">
                                        <span class="sit-num">f9</span>
                                    </li>
                                    <li class="single-seat seat-free">
                                        <img src="/cinema/assets/images/movie/seat01-free.png" alt="seat">
                                        <span class="sit-num">f10</span>
                                    </li>
                                    <li class="single-seat seat-free">
                                        <img src="/cinema/assets/images/movie/seat01-free.png" alt="seat">
                                        <span class="sit-num">f11</span>
                                    </li>
                                    <li class="single-seat">
                                        <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <span>f</span>
                    </li>
                </ul>
            </div>

        </div>
        <div class="proceed-book bg_img" data-background="/cinema/assets/images/movie/movie-bg-proceed.jpg">
            <div class="proceed-to-book">
                <div class="book-item">
                    <span>You have Choosed Seat</span>
                    <h3 class="title">d9, d10</h3>
                </div>
                <div class="book-item">
                    <span>total price</span>
                    <h3 class="title">$150</h3>
                </div>
                <div class="book-item">
                    <a href="movie-checkout.html" class="custom-button">proceed</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ==========Movie-Section========== -->

<c:import url="../main/footer.jsp"/>

</body>

<script>
    var book = 0;
    var count = 1;
    $(".seat-free img").on('click', function(e) {
        console.log();

        if($(this).attr("src")=="/cinema/assets/images/movie/seat01-booked.png"  && count <= 3) {
            $(this).attr("src","/cinema/assets/images/movie/seat01-free.png");
            book = 0;
            count -= 1;
        }
        else if($(this).attr("src")=="/cinema/assets/images/movie/seat01-free.png" && count < 3) {
            $(this).attr("src","/cinema/assets/images/movie/seat01-booked.png");
            book = 1;
            count += 1;
        }
        else if(count == 3) {
            alert("인원수");
        }
        console.log("book" + book);
        console.log("count" + count);
    });
</script>

</html>