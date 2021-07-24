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
                <h3 class="title">${schedule.scheduleForm.movie_title}</h3>
                <div class="tags">
                    <a href="#0">${schedule.scheduleForm.cinema_name} / ${schedule.scheduleForm.theater_name} </a>
                    <a href="#0"> ${schedule.screening_format}</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========Banner-Section========== -->

<!-- FontAwesome core CSS -->
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
      crossorigin="anonymous">
<!-- Custom styles for this template -->
<!-- ==========Page-Title========== -->
<section class="page-title bg-one">
    <div class="container">
        <div class="page-title-area">
            <div class="item col-lg-2">
                <a href="movie-ticket-plan.html" class="custom-button back-button">
                    <i class="flaticon-double-right-arrows-angles"></i>뒤로가기
                </a>
            </div>
            <div class="item col-lg-3 text-center" style="display: flex; justify-content: center;">
                <div class="col-lg-4" style="display: flex;
    align-items: center;
    justify-content: center;"> 어른 </div>
                <div class="input-counter input-group col-lg-8">
                    <div class="input-group-prepend">
                        <button type="button" class="btn-add btn btn-primary">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                    <input type="text" class="form-control counter text-center" data-min="0" data-max="6" data-default="0" style="height:50px;">
                    <div class="input-group-append">
                        <button type="button" class="btn-subtract btn btn-primary">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="item col-lg-3 text-center" style="display: flex; justify-content: center;">
                <div class="col-lg-4" style="display: flex;
    align-items: center;
    justify-content: center;"> 청소년 </div>
                <div class="input-counter input-group col-lg-8">
                    <div class="input-group-prepend">
                        <button type="button" class="btn-add btn btn-primary">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                    <input type="text" class="form-control counter text-center" data-min="0" data-max="6" data-default="0" style="height:50px;">
                    <div class="input-group-append">
                        <button type="button" class="btn-subtract btn btn-primary">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="item col-lg-2 text-right">
                <span class="date">${schedule.screening_date}</span> / <span class="date" id="start_time">${schedule.start_time}</span>
            </div>
        </div>
    </div>
</section>
<!-- ==========Page-Title========== -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
<script>
    window.jQuery || document.write('<script src="/cinema/assets/js/jquery-slim.min.js"><\/script>')
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script src="/cinema/assets/js/jquery.input-counter.js"></script>

<script>
    var options = {
        selectors: {
            addButtonSelector: '.btn-add',
            subtractButtonSelector: '.btn-subtract',
            inputSelector: '.counter',
        },
        settings: {
            checkValue: true,
            isReadOnly: false,
        },
    };

    $(".input-counter").inputCounter(options);
</script>
<script>

</script>
<!-- ==========Movie-Section========== -->
<div class="seat-plan-section padding-bottom padding-top">
    <div class="container">
        <div class="screen-area">
            <h4 class="screen">screen</h4>
            <div class="screen-thumb">
                <img src="/cinema/assets/images/movie/screen-thumb.png" alt="movie">
            </div>

            <h5 class="subtitle">
            </h5>

            <c:forEach var="i" begin="${schedule.scheduleForm.theater_seat/14}" end="${schedule.scheduleForm.theater_seat/14}">
                <%
                int term = (int)pageContext.getAttribute("i") / 2;
                pageContext.setAttribute("term", term) ;
                %>
            </c:forEach>

            <div class="screen-wrapper">
                <ul class="seat-area">
                    <c:forEach var="i" begin="1" end="${schedule.scheduleForm.theater_seat/14}">
                        <%
                            char x = 'A';
                            String reservation = "";
                            char seatChar = (char)((int)x+(int)pageContext.getAttribute("i")-1);
                            pageContext.setAttribute("seatChar", seatChar) ;
                        %>

                        <li class="seat-line">
                            <span>${seatChar}</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <c:forEach var="a" begin="1" end="4">
                                            <%
                                                reservation = String.valueOf(seatChar) + pageContext.getAttribute("a");
                                                pageContext.setAttribute("reservation", reservation) ;
                                            %>
                                            <c:set var="check" value="0"/>
                                            <c:forEach var="seat" items="${seats}">
                                                <c:if test="${seat.number == reservation}">
                                                    <c:set var="check" value="1"/>
                                                </c:if>
                                            </c:forEach>
                                            <c:if test="${check == 1}">
                                                <li class="single-seat seat-free">
                                                    <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                                </li>
                                            </c:if>
                                            <c:if test="${check != 1}">
                                                <li class="single-seat seat-free">
                                                    <img src="/cinema/assets/images/movie/seat01-free.png" alt="seat" id="${seatChar}${a}">
                                                    <span class="sit-num" id="${seatChar}${a}">${seatChar}${a}</span>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <c:forEach var="b" begin="5" end="10">
                                            <%
                                                reservation = String.valueOf(seatChar) + pageContext.getAttribute("b");
                                                pageContext.setAttribute("reservation", reservation) ;
                                            %>
                                            <c:set var="check" value="0"/>
                                            <c:forEach var="seat" items="${seats}">
                                                <c:if test="${seat.number == reservation}">
                                                    <c:set var="check" value="1"/>
                                                </c:if>
                                            </c:forEach>
                                            <c:if test="${check == 1}">
                                                <li class="single-seat seat-free">
                                                    <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                                </li>
                                            </c:if>
                                            <c:if test="${check != 1}">
                                                <li class="single-seat seat-free">
                                                    <img src="/cinema/assets/images/movie/seat01-free.png" alt="seat" id="${seatChar}${b}">
                                                    <span class="sit-num" id="${seatChar}${b}">${seatChar}${b}</span>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <c:forEach var="c" begin="11" end="14">
                                            <%
                                                reservation = String.valueOf(seatChar) + pageContext.getAttribute("c");
                                                pageContext.setAttribute("reservation", reservation) ;
                                            %>
                                            <c:set var="check" value="0"/>
                                            <c:forEach var="seat" items="${seats}">
                                                <c:if test="${seat.number == reservation}">
                                                    <c:set var="check" value="1"/>
                                                </c:if>
                                            </c:forEach>
                                            <c:if test="${check == 1}">
                                                <li class="single-seat seat-free">
                                                    <img src="/cinema/assets/images/movie/seat01.png" alt="seat">
                                                </li>
                                            </c:if>
                                            <c:if test="${check != 1}">
                                                <li class="single-seat seat-free">
                                                    <img src="/cinema/assets/images/movie/seat01-free.png" alt="seat" id="${seatChar}${c}">
                                                    <span class="sit-num">${seatChar}${c}</span>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                            <span>${seatChar}</span>
                        </li>
                    <c:if test="${term == i}">
                        <div style="margin-bottom:20px;"></div>
                    </c:if>
                    </c:forEach>
                </ul>
            </div>

        </div>
        <div class="proceed-book bg_img" data-background="/cinema/assets/images/movie/movie-bg-proceed.jpg">
            <div class="proceed-to-book">
                <div class="book-item">
                    <span>You have Choosed Seat</span>
                    <h3 class="title" id="totalSeat">좌석을 선택해주세요.</h3>
                </div>
                <div class="book-item">
                    <span>total price</span>
                    <h3 class="title" id="totalPrice">0 원</h3>
                </div>
                <div class="book-item">
                    <a href="#" class="custom-button" onclick="javascript:document.reservationForm.submit();">다음</a>
                </div>
            </div>
        </div>
        <form name="reservationForm" action="/csmovie/reservations/payment/" method="GET">
            <input type="hidden" name="seat" id="seat" value=" " >
            <input type="hidden" name="price" id="price" value=" ">
            <input type="hidden" name="baseprice" id="baseprice" value="${schedule.price}">
        </form>
    </div>
</div>
<!-- ==========Movie-Section========== -->

<c:import url="../main/footer.jsp"/>

</body>

<script>
    var book = 0;
    var count = 1;

    var save = [];

    $(".seat-free img").on('click', function(e) {
        console.log();

        if($(this).attr("src")=="/cinema/assets/images/movie/seat01-booked.png"  && count <= 3) {
            $(this).attr("src","/cinema/assets/images/movie/seat01-free.png");
            book = 0;
            count -= 1;
            for(let i = 0; i < save.length; i++) {
                if(save[i] === $(this).attr("id"))  {
                    save.splice(i, 1);
                    i--;
                }
            }
        }
        else if($(this).attr("src")=="/cinema/assets/images/movie/seat01-free.png" && count < 3) {
            $(this).attr("src","/cinema/assets/images/movie/seat01-booked.png");
            book = 1;
            count += 1;
            save.push($(this).attr("id"));
        }
        else if(count == 3) {
            alert("인원수를 조절해 주세요");
        }

        var temp = "";

        for(var i=0;i<save.length;i++){
            temp += save[i] + " ";
        }

        if(temp == ""){
            temp = "좌석을 선택해주세요.";
        }

        var element = document.getElementById("totalSeat");
        element.innerText = temp;

        document.getElementById("seat").value = temp;

        var start_time = document.getElementById("start_time");
        if(start_time.innerText < "10:00" && start_time.innerText > "06:00"){
            document.getElementById("totalPrice").innerText = numberWithCommas(30000)+" 원";
            document.getElementById("price").value = 30000;
        }
        else {
            document.getElementById("totalPrice").innerText = numberWithCommas(45000)+" 원";
            document.getElementById("price").value = 45000;
        }
    });

    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
</script>

</html>