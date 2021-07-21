<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: 201712035@office.induk.ac.kr
  Date: 2021-07-18
  Time: 오후 1:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<style>
    .select-bar {
        -webkit-tap-highlight-color: transparent;
        background-color: #fff;
        border-radius: 5px;
        border: solid 1px #e8e8e8;
        box-sizing: border-box;
        clear: both;
        cursor: pointer;
        display: block;
        float: left;
        font-family: inherit;
        font-size: 14px;
        font-weight: normal;
        height: 42px;
        line-height: 40px;
        outline: none;
        padding-left: 18px;
        padding-right: 30px;
        position: relative;
        text-align: left !important;
        -webkit-transition: all 0.2s ease-in-out;
        transition: all 0.2s ease-in-out;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        white-space: nowrap;
        width: auto;
    }

    .select-bar:hover {
        border-color: #dbdbdb;
    }

    .select-bar:active,
    .select-bar.open,
    .select-bar:focus {
        border-color: #999;
    }

    .select-bar:after {
        border-bottom: 2px solid #999;
        border-right: 2px solid #999;
        content: '';
        display: block;
        height: 5px;
        margin-top: -4px;
        pointer-events: none;
        position: absolute;
        right: 12px;
        top: 50%;
        -webkit-transform-origin: 66% 66%;
        -ms-transform-origin: 66% 66%;
        transform-origin: 66% 66%;
        -webkit-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        transform: rotate(45deg);
        -webkit-transition: all 0.15s ease-in-out;
        transition: all 0.15s ease-in-out;
        width: 5px;
    }

    .select-bar.open:after {
        -webkit-transform: rotate(-135deg);
        -ms-transform: rotate(-135deg);
        transform: rotate(-135deg);
    }

    .select-bar.open .list {
        opacity: 1;
        pointer-events: auto;
        -webkit-transform: scale(1) translateY(0);
        -ms-transform: scale(1) translateY(0);
        transform: scale(1) translateY(0);
    }

    .select-bar.disabled {
        border-color: #ededed;
        color: #999;
        pointer-events: none;
    }

    .select-bar.disabled:after {
        border-color: #cccccc;
    }

    .select-bar.wide {
        width: 100%;
    }

    .select-bar.wide .list {
        left: 0 !important;
        right: 0 !important;
    }

    .select-bar.right {
        float: right;
    }

    .select-bar.right .list {
        left: auto;
        right: 0;
    }

    .select-bar.small {
        font-size: 12px;
        height: 36px;
        line-height: 34px;
    }

    .select-bar.small:after {
        height: 4px;
        width: 4px;
    }

    .select-bar.small .option {
        line-height: 34px;
        min-height: 34px;
    }

    .select-bar .list {
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 0 1px rgba(68, 68, 68, 0.11);
        box-sizing: border-box;
        margin-top: 4px;
        opacity: 0;
        overflow: hidden;
        padding: 0;
        pointer-events: none;
        position: absolute;
        top: 100%;
        left: 0;
        -webkit-transform-origin: 50% 0;
        -ms-transform-origin: 50% 0;
        transform-origin: 50% 0;
        -webkit-transform: scale(0.75) translateY(-21px);
        -ms-transform: scale(0.75) translateY(-21px);
        transform: scale(0.75) translateY(-21px);
        -webkit-transition: all 0.2s cubic-bezier(0.5, 0, 0, 1.25), opacity 0.15s ease-out;
        transition: all 0.2s cubic-bezier(0.5, 0, 0, 1.25), opacity 0.15s ease-out;
        z-index: 9;
    }

    .select-bar .list:hover .option:not(:hover) {
        background-color: transparent !important;
    }

    .select-bar .option {
        cursor: pointer;
        font-weight: 400;
        line-height: 40px;
        list-style: none;
        min-height: 40px;
        outline: none;
        padding-left: 18px;
        padding-right: 29px;
        text-align: left;
        -webkit-transition: all 0.2s;
        transition: all 0.2s;
    }

    .select-bar .option:hover,
    .select-bar .option.focus,
    .select-bar .option.selected.focus {
        background-color: #f6f6f6;
    }

    .select-bar .option.selected {
        font-weight: bold;
    }

    .select-bar .option.disabled {
        background-color: transparent;
        color: #999;
        cursor: default;
    }

    .no-csspointerevents .select-bar .list {
        display: none;
    }

    .no-csspointerevents .select-bar.open .list {
        display: block;
    }
</style>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <c:import url="../main/header.jsp"/>

    <title>Boleto  - Online Ticket Booking Website HTML Template</title>
</head>

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

<body>

<c:import url="../main/nav.jsp"/>

<!-- ==========Banner-Section========== -->
<section class="details-banner hero-area bg_img" data-background="/cinema/assets/images/banner/banner03.jpg">
    <div class="container">
        <div class="details-banner-wrapper">
            <div class="details-banner-content">
                <h3 class="title">상영 시간표</h3>
                <div class="tags">
                    <a href="#0">English</a>
                    <a href="#0">Hindi</a>
                    <a href="#0">Telegu</a>
                    <a href="#0">Tamil</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========Banner-Section========== -->

<!-- ==========Book-Section========== -->
<section class="book-section bg-one">
    <div class="container">
        <div class="search-tab bg_img" data-background="/cinema/assets/images/ticket/ticket-bg01.jpg">
            <div class="row align-items-center mb--20">
                <div class="col-lg-6 mb-20">
                    <div class="search-ticket-header">
                        <h6 class="category">welcome to Boleto </h6>
                        <h3 class="title">what are you looking for</h3>
                    </div>
                </div>
                <div class="col-lg-6 mb-20">
                    <ul class="tab-menu ticket-tab-menu">
                        <li style="background: none;pointer-events: none;"></li>
                        <li style="background: none;pointer-events: none;"></li>
                        <li class="active" style="pointer-events: none;">
                            <div class="tab-thumb">
                                <img src="/cinema/assets/images/ticket/ticket-tab01.png" alt="ticket">
                            </div>
                            <span>movie</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tab-area">
                <div class="tab-item active">
                    <form class="ticket-search-form" onsubmit="return false">
                        <div class="form-group large col-lg-3">
                            <input type="text" placeholder="Search fo Movies" id="movieTitle" value="${title}" onkeydown="if(event.keyCode==13)findSchedule()">
                            <button type="button" onclick="findSchedule()" ><i class="fas fa-search"></i></button>
                        </div>
                        <div class="form-group col-lg-3">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/date.png" alt="ticket">
                            </div>
                            <span class="type">날짜</span>
                            <select class="select-bar form-control-sm" onchange="findSchedule()" style="background: none; border-width: 0px;" id="dateCombo">
                                <%--
                                <%LocalDate date = LocalDate.now();%>
                                <option value="<%=date%>" style="color:#000000"><%=date%></option>
                                <option value="<%=date.plusDays(1)%>" style="color:#000000"><%=date.plusDays(1)%></option>
                                <option value="<%=date.plusDays(2)%>" style="color:#000000"><%=date.plusDays(2)%></option>
                                <option value="<%=date.plusDays(3)%>" style="color:#000000"><%=date.plusDays(3)%></option>
                                <option value="<%=date.plusDays(4)%>" style="color:#000000"><%=date.plusDays(4)%></option>
                                --%>
                                    <option value="2021-07-13" style="color:#000000">2021-07-13</option>
                                    <option value="2021-07-14" style="color:#000000">2021-07-14</option>
                                    <option value="2021-07-15" style="color:#000000">2021-07-15</option>
                                    <option value="2021-07-16" style="color:#000000">2021-07-16</option>
                                    <option value="2021-07-17" style="color:#000000">2021-07-17</option>
                            </select>
                        </div>
                        <div class="form-group col-lg-3">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/city.png" alt="ticket">
                            </div>
                            <span class="type">지역</span>
                            <select class="select-bar form-control-sm" id="cityId" onchange="callCinema()" style="background: none; border-width: 0px;">
                                <option value="" style="color:#000000">지역 선택</option>
                                <c:forEach var="city" items="${citys}">
                                    <option value="${city.id}" style="color:#000000">${city.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-lg-3">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/cinema.png" alt="ticket">
                            </div>
                            <span class="type">영화관</span>
                            <select class="select-bar form-control-sm" id="cinemaId" onchange="findSchedule()" style="background: none; border-width: 0px;">
                                <option value="">영화관 선택</option>
                            </select>
                        </div>
                    </form>

                    <form class="ticket-search-form">
                        <div class="form-group col-lg-3"></div>
                        <div class="form-group col-lg-3"></div>
                        <div class="form-group col-lg-3">
                            <div class="col-md-2"></div>
                            <div class="col-md-10" id="cityErr">
                            </div>
                        </div>
                        <div class="form-group col-lg-3">
                            <div class="col-md-2"></div>
                            <div class="col-md-10" id="cinemaErr">

                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========Book-Section========== -->

<!-- ==========Movie-Section========== -->
<div class="ticket-plan-section padding-bottom padding-top">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 mb-5 mb-lg-0" id="scheduleForm">

            </div>
        </div>
    </div>
</div>
<!-- ==========Movie-Section========== -->

<c:import url="../main/footer_s.jsp"/>


</body>

<script>
    function callCinema() {
        var cityId = $("#cityId").val();

        if(cityId != "" && cinemaId != "") {
            $("#cityErr").children().remove();
            $("#cinemaErr").children().remove();
        }

        $.ajax({
            url: "/csmovie/schedules/cinemaAjax",
            data: cityId,
            type:"POST",
            contentType: "application/json; charset=UTF-8",
            error: function(){
                $("#cinemaId").children().remove();
                var item = "";
                item +=
                    "<option value=\"\" style=\"color:#000000\">영화관 선택</option>";
                $("#cinemaId").html(item);
            },
            success: function (cinemas){
                $("#cinemaId").children().remove();
                var item = "";
                item +=
                    "<option value=\"\" style=\"color:#000000\">영화관 선택</option>";
                for(var i=0;i<cinemas.length;i++) {
                    item +=
                        "<option value=\"" + cinemas[i].id + "\" style=\"color:#000000\">" + cinemas[i].name + "</option>"
                }
                $("#cinemaId").html(item);
            }
        });
    }

    function findSchedule() {
        var movieTitle = $("#movieTitle").val();
        var date = $("#dateCombo").val();
        var cityId = $("#cityId").val();
        var cinemaId = $("#cinemaId").val();

        if(cityId == "" || cinemaId == ""){
            $("#cityErr").children().remove();
            $("#cinemaErr").children().remove();
            if(cityId == "") {
                var item = "";
                item +=
                    "<span>시/도를 선택해주세요.</span>";
                $("#cityErr").html(item);
            }
            if(cinemaId == "") {
                console.log("adf");
                var item = "";
                item +=
                    "<span>영화관을 선택해주세요.</span>";
                $("#cinemaErr").html(item);
            }
            return 0;
        }

        $.ajax({
            type: "post",
            url: "/csmovie/schedules/scheduleAjax",
            data: {
                movieTitle: movieTitle,
                date: date,
                cinemaId: cinemaId
            },
            success: function (schedules) {
                $("#cityErr").children().remove();
                $("#cinemaErr").children().remove();

                $("#scheduleForm").children().remove();

                var array_name = [];
                var array_time = [];
                var array_rating = [];

                for(var i=0;i<schedules.length;i++) {
                    if(array_name.indexOf(schedules[i].scheduleForm.movie_title) == -1){
                        array_name.push(schedules[i].scheduleForm.movie_title);
                        array_time.push(schedules[i].scheduleForm.movie_showtimes);
                        array_rating.push(schedules[i].scheduleForm.movie_rating);
                    }
                }

                var array_theater = [];
                var array_theater_id = [];
                var array_seat = [];
                var array_format = [];
                var array_movie = [];
                for(var i=0;i<schedules.length;i++){
                    array_theater.push(schedules[i].scheduleForm.theater_name);
                    array_theater_id.push(schedules[i].theater_id);
                    array_seat.push(schedules[i].scheduleForm.theater_seat);
                    array_format.push(schedules[i].screening_format);
                    array_movie.push(schedules[i].scheduleForm.movie_title);
                }

                var item = "";
                for(var a=0;a<array_name.length;a++){
                item += "<div class=\"details-banner-content\" style=\"margin-bottom:30px;\">\n" +
                    "                                            <div class=\"social-and-duration\">\n" +
                    "                                                <div class=\"duration-area\" >\n" +
                    "                                                    <div class=\"item\">\n" +
                    "                                                        <span>" + array_name[a] + "/" + array_rating[a] + "</span>\n" +
                    "                                                    </div>\n" +
                    "                                                    <!--\n" +
                    "                                                    <div class=\"item\">\n" +
                    "                                                        <i class=\"far fa-clock\"></i><span>2 hrs 50 mins</span>\n" +
                    "                                                    </div>\n" +
                    "                                                    -->\n" +
                    "                                                </div>\n" +
                    "                                                <ul class=\"social-share\" style=\"padding-right: 10px;\">\n" +
                    "                                                    <span>상영중/상영시간 " + array_time[a] + "분</span>\n" +
                    "                                                </ul>\n" +
                    "                                        </div>";
                    var temp = [];
                    for(var b=0;b<array_theater_id.length;b++) {
                        if(array_movie[b] == array_name[a] && temp.indexOf(array_theater_id[b]) == -1) {
                            item += "<ul class=\"seat-plan-wrapper bg-five\">\n" +
                                "                        <li>\n" +
                                "                            <div class=\"movie-name\">\n" +
                                "                               <div>\n" +
                                "                                   <h5>" + array_theater[b] + "</h5>총" + array_seat[b] + "석\n" +
                                "                               </div>\n" +
                                "                               <div>\n" +
                                "                                  " + array_format[b] + "\n" +
                                "                               </div>"+
                                "                            </div>\n" +
                                "                            <div class=\"movie-schedule\">\n";
                            temp.push(array_theater_id[b]);
                            for (var c = 0; c < schedules.length; c++) {
                                if (array_name[a] == schedules[c].scheduleForm.movie_title && array_theater_id[b] == schedules[c].theater_id) {
                                    item +=
                                        "                                <div class=\"item\">\n" +
                                        "                                    " + schedules[c].start_time + "\n" +
                                        "                                </div>\n";
                                }
                            }
                            item +=
                                "                            </div>\n" +
                                "                        </li>";
                            "      </ul>";
                        }
                    }
                    item += "</div>";
                }
                $("#scheduleForm").html(item);
            }
        });
    }


</script>



</html>
