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
                <a href="index.html">
                    <img src="/cinema/assets/images/logo/logo.png" alt="logo">
                </a>
            </div>
            <ul class="menu">
                <li>
                    <a href="#0">Home</a>
                    <ul class="submenu">
                        <li>
                            <a href="#0">Home One</a>
                        </li>
                        <li>
                            <a href="index-2.html">Home Two</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#0">movies</a>
                    <ul class="submenu">
                        <li>
                            <a href="/csmovie/movies">영화</a>
                        </li>
                        <li>
                            <a href="movie-ticket-plan.html">Movie Ticket Plan</a>
                        </li>
                        <li>
                            <a href="movie-seat-plan.html">Movie Seat Plan</a>
                        </li>
                        <li>
                            <a href="movie-checkout.html">Movie Checkout</a>
                        </li>
                        <li>
                            <a href="popcorn.html">Movie Food</a>
                        </li>
                        <li>
                            <a href="/csmovie/cinema">Cinema</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#0">events</a>
                    <ul class="submenu">
                        <li>
                            <a href="events.html">Events</a>
                        </li>
                        <li>
                            <a href="event-details.html">Event Details</a>
                        </li>
                        <li>
                            <a href="event-speaker.html">Event Speaker</a>
                        </li>
                        <li>
                            <a href="event-ticket.html">Event Ticket</a>
                        </li>
                        <li>
                            <a href="event-checkout.html">Event Checkout</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#0">sports</a>
                    <ul class="submenu">
                        <li>
                            <a href="sports.html">Sports</a>
                        </li>
                        <li>
                            <a href="sport-details.html">Sport Details</a>
                        </li>
                        <li>
                            <a href="sports-ticket.html">Sport Ticket</a>
                        </li>
                        <li>
                            <a href="sports-checkout.html">Sport Checkout</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#0">pages</a>
                    <ul class="submenu">
                        <li>
                            <a href="about.html">About Us</a>
                        </li>
                        <li>
                            <a href="apps-download.html">Apps Download</a>
                        </li>
                        <li>
                            <a href="sign-in.html">Sign In</a>
                        </li>
                        <li>
                            <a href="sign-up.html">Sign Up</a>
                        </li>
                        <li>
                            <a href="404.html">404</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#0">blog</a>
                    <ul class="submenu">
                        <li>
                            <a href="blog.html">리뷰</a>
                        </li>
                        <li>
                            <a href="blog-details.html">Blog Single</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="contact.html">contact</a>
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