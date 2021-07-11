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
<section class="banner-section">
    <div class="banner-bg bg_img bg-fixed" data-background="/cinema/assets/images/banner/banner02.jpg"></div>
    <div class="container">
        <div class="banner-content">
            <h1 class="title bold">get <span class="color-theme">movie</span> tickets</h1>
            <p>Buy movie tickets in advance, find movie times watch trailer, read movie reviews and much more</p>
        </div>
    </div>
</section>
<!-- ==========Banner-Section========== -->

<!-- ==========Ticket-Search========== -->
<section class="search-ticket-section padding-top pt-lg-0">
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
                        <li class="active">
                            <div class="tab-thumb">
                                <img src="/cinema/assets/images/ticket/ticket-tab01.png" alt="ticket">
                            </div>
                            <span>movie</span>
                        </li>
                        <li>
                            <div class="tab-thumb">
                                <img src="/cinema/assets/images/ticket/ticket-tab02.png" alt="ticket">
                            </div>
                            <span>events</span>
                        </li>
                        <li>
                            <div class="tab-thumb">
                                <img src="/cinema/assets/images/ticket/ticket-tab03.png" alt="ticket">
                            </div>
                            <span>sports</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tab-area">
                <div class="tab-item active">
                    <form class="ticket-search-form">
                        <div class="form-group large">
                            <input type="text" placeholder="Search fo Movies">
                            <button type="submit"><i class="fas fa-search"></i></button>
                        </div>
                        <div class="form-group">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/city.png" alt="ticket">
                            </div>
                            <span class="type">city</span>
                            <select class="select-bar">
                                <option value="london">London</option>
                                <option value="dhaka">dhaka</option>
                                <option value="rosario">rosario</option>
                                <option value="madrid">madrid</option>
                                <option value="koltaka">kolkata</option>
                                <option value="rome">rome</option>
                                <option value="khoksa">khoksa</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/date.png" alt="ticket">
                            </div>
                            <span class="type">date</span>
                            <select class="select-bar">
                                <option value="26-12-19">23/10/2020</option>
                                <option value="26-12-19">24/10/2020</option>
                                <option value="26-12-19">25/10/2020</option>
                                <option value="26-12-19">26/10/2020</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/cinema.png" alt="ticket">
                            </div>
                            <span class="type">cinema</span>
                            <select class="select-bar">
                                <option value="Awaken">Awaken</option>
                                <option value="dhaka">dhaka</option>
                                <option value="rosario">rosario</option>
                                <option value="madrid">madrid</option>
                                <option value="koltaka">kolkata</option>
                                <option value="rome">rome</option>
                                <option value="khoksa">khoksa</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="tab-item">
                    <form class="ticket-search-form">
                        <div class="form-group large">
                            <input type="text" placeholder="Search fo Events">
                            <button type="submit"><i class="fas fa-search"></i></button>
                        </div>
                        <div class="form-group">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/city.png" alt="ticket">
                            </div>
                            <span class="type">city</span>
                            <select class="select-bar">
                                <option value="london">London</option>
                                <option value="dhaka">dhaka</option>
                                <option value="rosario">rosario</option>
                                <option value="madrid">madrid</option>
                                <option value="koltaka">kolkata</option>
                                <option value="rome">rome</option>
                                <option value="khoksa">khoksa</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/date.png" alt="ticket">
                            </div>
                            <span class="type">date</span>
                            <select class="select-bar">
                                <option value="26-12-19">23/10/2020</option>
                                <option value="26-12-19">24/10/2020</option>
                                <option value="26-12-19">25/10/2020</option>
                                <option value="26-12-19">26/10/2020</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/cinema.png" alt="ticket">
                            </div>
                            <span class="type">event</span>
                            <select class="select-bar">
                                <option value="angular">angular</option>
                                <option value="startup">startup</option>
                                <option value="rosario">rosario</option>
                                <option value="madrid">madrid</option>
                                <option value="koltaka">kolkata</option>
                                <option value="Last-First">Last-First</option>
                                <option value="wish">wish</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="tab-item">
                    <form class="ticket-search-form">
                        <div class="form-group large">
                            <input type="text" placeholder="Search fo Sports">
                            <button type="submit"><i class="fas fa-search"></i></button>
                        </div>
                        <div class="form-group">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/city.png" alt="ticket">
                            </div>
                            <span class="type">city</span>
                            <select class="select-bar">
                                <option value="london">London</option>
                                <option value="dhaka">dhaka</option>
                                <option value="rosario">rosario</option>
                                <option value="madrid">madrid</option>
                                <option value="koltaka">kolkata</option>
                                <option value="rome">rome</option>
                                <option value="khoksa">khoksa</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/date.png" alt="ticket">
                            </div>
                            <span class="type">date</span>
                            <select class="select-bar">
                                <option value="26-12-19">23/10/2020</option>
                                <option value="26-12-19">24/10/2020</option>
                                <option value="26-12-19">25/10/2020</option>
                                <option value="26-12-19">26/10/2020</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="thumb">
                                <img src="/cinema/assets/images/ticket/cinema.png" alt="ticket">
                            </div>
                            <span class="type">sports</span>
                            <select class="select-bar">
                                <option value="football">football</option>
                                <option value="cricket">cricket</option>
                                <option value="cabadi">cabadi</option>
                                <option value="madrid">madrid</option>
                                <option value="gadon">gadon</option>
                                <option value="rome">rome</option>
                                <option value="khoksa">khoksa</option>
                            </select>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========Ticket-Search========== -->

<!-- ==========Movie-Section========== -->
<section class="movie-section padding-top padding-bottom">
    <div class="container">
        <div class="row flex-wrap-reverse justify-content-center">
            <div class="col-sm-10 col-md-8 col-lg-3">
                <div class="widget-1 widget-banner">
                    <div class="widget-1-body">
                        <a href="#0">
                            <img src="/cinema/assets/images/sidebar/banner/banner01.jpg" alt="banner">
                        </a>
                    </div>
                </div>
                <div class="widget-1 widget-check">
                    <div class="widget-header">
                        <h5 class="m-title">Filter By</h5> <a href="#0" class="clear-check">Clear All</a>
                    </div>
                    <div class="widget-1-body">
                        <h6 class="subtitle">Language</h6>
                        <div class="check-area">
                            <div class="form-group">
                                <input type="checkbox" name="lang" id="lang1"><label for="lang1">Tamil</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="lang" id="lang2"><label for="lang2">Telegu</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="lang" id="lang3"><label for="lang3">Hindi</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="lang" id="lang4"><label for="lang4">English</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="lang" id="lang5"><label for="lang5">Multiple Language</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="lang" id="lang6"><label for="lang6">Gujrati</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="lang" id="lang7"><label for="lang7">Bangla</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget-1 widget-check">
                    <div class="widget-1-body">
                        <h6 class="subtitle">experience</h6>
                        <div class="check-area">
                            <div class="form-group">
                                <input type="checkbox" name="mode" id="mode1"><label for="mode1">2d</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="mode" id="mode2"><label for="mode2">3d</label>
                            </div>
                        </div>
                        <div class="add-check-area">
                            <a href="#0">view more <i class="plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="widget-1 widget-check">
                    <div class="widget-1-body">
                        <h6 class="subtitle">genre</h6>
                        <div class="check-area">
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre1"><label for="genre1">thriller</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre2"><label for="genre2">horror</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre3"><label for="genre3">drama</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre4"><label for="genre4">romance</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre5"><label for="genre5">action</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre6"><label for="genre6">comedy</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre7"><label for="genre7">romantic</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre8"><label for="genre8">animation</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre9"><label for="genre9">sci-fi</label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="genre" id="genre10"><label for="genre10">adventure</label>
                            </div>
                        </div>
                        <div class="add-check-area">
                            <a href="#0">view more <i class="plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="widget-1 widget-banner">
                    <div class="widget-1-body">
                        <a href="#0">
                            <img src="/cinema/assets/images/sidebar/banner/banner02.jpg" alt="banner">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 mb-50 mb-lg-0">
                <div class="filter-tab tab">
                    <div class="tab-area">
                        <div class="movie-details">
                            <div class="tab summery-review">
                                <ul class="tab-menu">
                                    <c:forEach var="city" items="${citys}">
                                        <c:if test="${city.id == 1}">
                                            <li class="active">
                                                ${city.name}
                                            </li>
                                        </c:if>
                                        <c:if test="${city.id != 1}">
                                            <li>
                                                ${city.name}
                                            </li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                                <div class="tab-area">
                                    <c:forEach var="city" items="${citys}">
                                        <c:if test="${city.id == 1}">
                                            <div class="tab-item active">
                                        </c:if>
                                        <c:if test="${city.id != 1}">
                                            <div class="tab-item">
                                        </c:if>
                                            <div class="row mb-10 justify-content-center">
                                                <c:forEach var="cinema" items="${cinemas}">
                                                    <c:if test="${cinema.city_id == city.id}">
                                                        <div class="col-sm-6 col-lg-4">
                                                            <div class="movie-grid">
                                                                <div class="movie-content bg-one">
                                                                    <h6 class="title m-0">
                                                                        <a href="/csmovie/cinema/${cinema.id}">${cinema.name}</a>
                                                                    </h6>
                                                                    <ul class="movie-rating-percent">
                                                                        <li>
                                                                            <i class="fas fa-map-marker-alt"> ${cinema.address}</i>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                        </div>
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
