<%--
  Created by IntelliJ IDEA.
  User: 201712029@office.induk.ac.kr
  Date: 2021-07-09
  Time: 오후 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="movie" items="${movies}">
    <div class="col-sm-6 col-lg-4">
        <div class="movie-grid">
            <div class="movie-thumb c-thumb">
                <a href="movie-details.html">
                    <img src="/csmovie/movies/images/${movie.poster}" alt="movie">
                </a>
            </div>
            <div class="movie-content bg-one">
                <h5 class="title m-0">
                    <a href="movie-details.html">${movie.title}</a>
                </h5>
                <ul class="movie-rating-percent">
                    <li>
                        <div class="thumb">
                            <img src="/cinema/assets/images/movie/tomato.png" alt="movie">
                        </div>
                        <span class="content">88%</span>
                    </li>
                    <li>
                        <div class="thumb">
                            <img src="/cinema/assets/images/movie/cake.png" alt="movie">
                        </div>
                        <span class="content">88%</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</c:forEach>

<c:forEach var="movie" items="${movies}">
    <div class="movie-list">
        <div class="movie-thumb c-thumb">
            <a href="movie-details.html" class="w-100 bg_img h-100" data-background="/csmovie/movies/images/${movie.poster}">
                <img class="d-sm-none" src="/csmovie/movies/images/${movie.poster}" alt="movie">
            </a>
        </div>
        <div class="movie-content bg-one">
            <h5 class="title">
                <a href="movie-details.html">${movie.title}</a>
            </h5>
            <p class="duration">${movie.showTimes}분</p>
            <div class="movie-tags">
                <a>${movie.genre.name}</a>
            </div>
            <div class="release">
                <span>개봉일 : </span> <a> ${movie.releaseDate}</a>
            </div>
            <ul class="movie-rating-percent">
                <li>
                    <div class="thumb">
                        <img src="/cinema/assets/images/movie/tomato.png" alt="movie">
                    </div>
                    <span class="content">88%</span>
                </li>
                <li>
                    <div class="thumb">
                        <img src="/cinema/assets/images/movie/cake.png" alt="movie">
                    </div>
                    <span class="content">88%</span>
                </li>
            </ul>
            <div class="book-area">
                <div class="book-ticket">
                    <div class="react-item">
                        <a href="#0">
                            <div class="thumb">
                                <img src="/cinema/assets/images/icons/heart.png" alt="icons">
                            </div>
                        </a>
                    </div>
                    <div class="react-item mr-auto">
                        <a href="#0">
                            <div class="thumb">
                                <img src="/cinema/assets/images/icons/book.png" alt="icons">
                            </div>
                            <span>book ticket</span>
                        </a>
                    </div>
                    <div class="react-item">
                        <a href="#0" class="popup-video">
                            <div class="thumb">
                                <img src="/cinema/assets/images/icons/play-button.png" alt="icons">
                            </div>
                            <span>watch trailer</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
