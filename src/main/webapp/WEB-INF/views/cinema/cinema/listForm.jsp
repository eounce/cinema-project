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
<section class="banner-section" style="padding-bottom: 50px;">
    <div class="banner-bg bg_img bg-fixed" data-background="/cinema/assets/images/banner/banner02.jpg"></div>
    <div class="container">
        <div class="banner-content">
            <h1 class="title bold">Find <span class="color-theme">Cinema</span> near you</h1>
            <p>Find Cinema in your town, find movie times and much more</p>
        </div>
    </div>
</section>
<!-- ==========Banner-Section========== -->

<!-- ==========Movie-Section========== -->
<section class="movie-section padding-top padding-bottom">
    <div class="container">
        <div class="row flex-wrap-reverse justify-content-center">
            <div class="col-sm-10 col-md-8 col-lg-3">
                <div class="widget-1 widget-check">
                    <div class="widget widget-search">
                        <h5 class="title">검색</h5>
                        <div class="search-form">
                            <input type="text" name="searchText" id="searchText"
                                   placeholder="검색어를 입력해주세요" onkeydown="if(event.keyCode==13)search($('#searchText').val());">
                            <button type="button" class="custom-button" id="searchButton"
                                    onclick="search($('#searchText').val());"><i class="flaticon-loupe"></i>Search</button>
                        </div>
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



<script>
    function search(searchText) {
        var word = searchText;
        var encodeWord = encodeURI(word);
        console.log(word);
        console.log(encodeWord);
    }
</script>


</html>
