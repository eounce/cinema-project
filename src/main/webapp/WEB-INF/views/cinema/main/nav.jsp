<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 201712035@office.induk.ac.kr
  Date: 2021-06-30
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!-- ==========Preloader========== -->
<div class="preloader">
    <div class="preloader-inner">
        <div class="preloader-icon">
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- ==========Preloader========== -->
<!-- ==========Overlay========== -->
<div class="overlay"></div>
<a href="#0" class="scrollToTop">
    <i class="fas fa-angle-up"></i>
</a>
<!-- ==========Overlay========== -->

<!-- ==========Header-Section========== -->
<header class="header-section">
    <div class="container">
        <div class="header-wrapper">
            <div class="logo">
                <a href="/csmovie">
                    <img src="/cinema/assets/images/logo/logo.png" alt="logo">
                </a>
            </div>
            <ul class="menu">
                <li>
                    <a href="#0">영화</a>
                    <ul class="submenu">
                        <li>
                            <a href="/csmovie/movies">전체영화</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/csmovie/cinemas">극장</a>
                </li>
                <li>
                    <a href="#0">예매</a>
                    <ul class="submenu">
                        <li>
                            <a href="/csmovie/schedules?title=&cityId=&cinemaId=&date=">시간표</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/csmovie/events">이벤트</a>
                </li>
                <li>
                    <% String urlActive = (request.getRequestURL().toString().contains("/cinema/review"))?"active":""; %>
                    <a href="/csmovie/reviews" class="<%=urlActive%>">리뷰</a>
                </li>
                <c:choose>
                    <c:when test="${empty sessionScope.member}">
                        <li class="header-button pr-0">
                            <a href="/csmovie/members/login">로그인</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="header-button pr-0">
                            <a href="/csmovie/members/logout">로그아웃</a>
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>
            <div class="header-bar d-lg-none">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
</header>
<!-- ==========Header-Section========== -->