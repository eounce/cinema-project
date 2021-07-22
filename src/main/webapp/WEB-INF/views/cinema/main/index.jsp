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

    <c:import url="header.jsp"/>

    <title>Boleto  - Online Ticket Booking Website HTML Template</title>


</head>

<body>

<c:import url="nav.jsp"/>

<!-- ==========Banner-Section========== -->
<section class="banner-section">
    <div class="banner-bg bg_img bg-fixed" data-background="/csmovie/assets/images/banner/banner01.jpg"></div>
    <div class="container">
        <div class="banner-content">
            <h1 class="title  cd-headline clip"><span class="d-block">induk cinema</span> 영화 그 이상의
                <span class="color-theme cd-words-wrapper p-0 m-0">
                        <b class="is-visible">감동</b>
                        <b>설렘</b>
                        <b>재미</b>
                    </span>
            </h1>
            <p>24시간 꺼지지 않는 나만의 영화관</p>
        </div>
    </div>
</section>
<!-- ==========Banner-Section========== -->

<!-- ==========Ticket-Search========== -->
<section class="search-ticket-section padding-top pt-lg-0">
    <div class="container">
        <div class="search-tab bg_img" data-background="/csmovie/assets/images/ticket/ticket-bg01.jpg">
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
                                <option value="26-12-19">23/10/2019</option>
                                <option value="26-12-19">24/10/2019</option>
                                <option value="26-12-19">25/10/2019</option>
                                <option value="26-12-19">26/10/2019</option>
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
                                <option value="26-12-19">23/10/2019</option>
                                <option value="26-12-19">24/10/2019</option>
                                <option value="26-12-19">25/10/2019</option>
                                <option value="26-12-19">26/10/2019</option>
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
                                <option value="26-12-19">23/10/2019</option>
                                <option value="26-12-19">24/10/2019</option>
                                <option value="26-12-19">25/10/2019</option>
                                <option value="26-12-19">26/10/2019</option>
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

        <div class="col-lg-12">
            <div class="article-section padding-bottom">
                <div class="section-header-1">
                    <h2 class="title">movie top4</h2>
                    <a class="view-all" href="/csmovie/movies">View All</a>
                </div>
                <div class="row mb-30-none justify-content-center">
                    <c:forEach var="movie" items="${top4}" varStatus="status">
                        <div class="col-sm-6 col-lg-3">
                            <div class="movie-grid">
                                <div class="movie-thumb c-thumb">
                                    <a href="/csmovie/movies/${movie.id}">
                                        <img src="/csmovie/images/${movie.poster}" alt="movie">
                                    </a>
                                </div>
                                <div class="movie-content bg-one">
                                    <h5 class="title m-0">
                                        <a href="/csmovie/movies/${movie.id}"><span class="color-theme">${status.count}</span>&nbsp; ${movie.title}</a>
                                    </h5><br><br>
                                    <div class="widget-1 widget-tags">
                                        <ul>
                                            <c:forEach var="format" items="${top4Formats.get(status.index)}">
                                                <li><a>${format}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <div class="tab">
            <div class="section-header-2">
                <div class="left">
                    <h2 class="title">movies</h2>
                    <p>Be sure not to miss these Movies today.</p>
                </div>
                <ul class="tab-menu">
                    <li class="active">
                        now showing
                    </li>
                    <li>
                        coming soon
                    </li>
                </ul>
            </div>
            <div class="tab-area mb-30-none">
                <div class="tab-item active">
                    <div class="owl-carousel owl-theme tab-slider">
                        <c:set var="now" value="<%=LocalDate.now()%>"/>
                        <c:forEach var="movie" items="${movies}" varStatus="status">
                            <c:if test="${movie.releaseDate <= now}">
                                <div class="item">
                                    <div class="movie-grid">
                                        <div class="movie-thumb c-thumb">
                                            <a href="/csmovie/movies/${movie.id}">
                                                <img src="/csmovie/images/${movie.poster}" alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <h5 class="title m-0">
                                                <a href="/csmovie/movies/${movie.id}">${movie.title}</a>
                                            </h5><br><br>
                                            <div class="widget-1 widget-tags">
                                                <ul>
                                                    <c:forEach var="format" items="${formats.get(status.index)}">
                                                        <li><a>${format}</a></li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
                <div class="tab-item">
                    <div class="owl-carousel owl-theme tab-slider">
                        <c:set var="now" value="<%=LocalDate.now()%>"/>
                        <c:forEach var="movie" items="${movies}" varStatus="status">
                            <c:if test="${movie.releaseDate > now}">
                                <div class="item">
                                    <div class="movie-grid">
                                        <div class="movie-thumb c-thumb">
                                            <a href="/csmovie/movies/${movie.id}">
                                                <img src="/csmovie/images/${movie.poster}" alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <h5 class="title m-0">
                                                <a href="/csmovie/movies/${movie.id}">${movie.title}</a>
                                            </h5><br><br>
                                            <div class="widget-1 widget-tags">
                                                <ul>
                                                    <c:forEach var="format" items="${formats.get(status.index)}">
                                                        <li><a>${format}</a></li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========Movie-Section========== -->

<!-- ==========Event-Section========== -->
<section class="event-section padding-top padding-bottom bg-four">
    <div class="container">
        <div class="tab">
            <div class="section-header-2">
                <div class="left">
                    <h2 class="title">reviews</h2>
                    <p>How about watching movie reviews?</p>
                </div>
                <ul class="tab-menu">
                    <li class="active">
                        popularity
                    </li>
                    <li>
                        recently
                    </li>
                </ul>
            </div>
            <div class="tab-area mb-30-none">
                <div class="tab-item active">
                    <div class="owl-carousel owl-theme tab-slider">
                        <c:forEach items="${popularReviews}" var="review">
                        <div class="item">
                                <div class="event-grid">
                                    <div class="movie-thumb c-thumb" style="height: 250px;background: white;overflow: hidden">
                                        <a href="/csmovie/reviews/${review.id}">
                                            <img src="/csmovie/reviews/images/${review.image}" style="min-height: 250px;">
                                        </a>
                                    </div>
                                    <div class="post-item">
                                        <div class="post-content">
                                            <div class="post-header" style="padding-bottom: 10px;">
                                                <div class="meta-post">
                                                    <a style="margin-right: 1.0em"><i class="flaticon-view"></i>${review.view} View</a>
                                                    <a><i class="flaticon-conversation"></i>${review.commentCount} Comments</a>
                                                </div>
                                                <h4 class="title">
                                                    <a href="/csmovie/reviews/${review.id}" style="height: 2.3em;line-height: 1.2">
                                                        ${review.title}
                                                    </a>
                                                </h4>
                                                <div style="color: #ffffff">영화:
                                                    <a href="/csmovie/movies/${review.movieId}" style="color: #dbe2fb">
                                                            ${review.movie.title}
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="entry-content" style="padding-top: 10px;">
                                                <div class="left">
                                                    <span class="date"  >${review.reportingDate}  BY</span>
                                                    <div class="authors">
                                                        <div class="thumb">
                                                            <a><img src="/csmovie/members/images/${review.member.image}" alt="#0" style="height: 30px;"></a>
                                                        </div>
                                                        <h6 class="title"><a >${review.member.name}</a></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="tab-item">
                    <div class="owl-carousel owl-theme tab-slider">
                        <c:forEach items="${recentReviews}" var="review">
                            <div class="item">
                                <div class="event-grid">
                                    <div class="movie-thumb c-thumb" style="height: 250px;background: white;overflow: hidden">
                                        <a href="/csmovie/reviews/${review.id}">
                                            <img src="/csmovie/reviews/images/${review.image}" style="min-height: 250px;">
                                        </a>
                                    </div>
                                    <div class="post-item">
                                        <div class="post-content">
                                            <div class="post-header" style="padding-bottom: 10px;">
                                                <div class="meta-post">
                                                    <a style="margin-right: 1.0em"><i class="flaticon-view"></i>${review.view} View</a>
                                                    <a><i class="flaticon-conversation"></i>${review.commentCount} Comments</a>
                                                </div>
                                                <h4 class="title">
                                                    <a href="/csmovie/reviews/${review.id}" style="height: 2.3em;line-height: 1.2">
                                                            ${review.title}
                                                    </a>
                                                </h4>
                                                <div style="color: #ffffff">영화:
                                                    <a href="/csmovie/movies/${review.movieId}" style="color: #dbe2fb">
                                                            ${review.movie.title}
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="entry-content" style="padding-top: 10px;">
                                                <div class="left">
                                                    <span class="date"  >${review.reportingDate}  BY</span>
                                                    <div class="authors">
                                                        <div class="thumb">
                                                            <a><img src="/csmovie/members/images/${review.member.image}" alt="#0" style="height: 30px;"></a>
                                                        </div>
                                                        <h6 class="title"><a >${review.member.name}</a></h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========Event-Section========== -->

<c:import url="footer.jsp"/>

</body>

</html>