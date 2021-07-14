<%--
  Created by IntelliJ IDEA.
  User: 201712029@office.induk.ac.kr
  Date: 2021-07-08
  Time: 오후 4:51
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

<body onload="createTable(1);">

<c:import url="../main/nav.jsp"/>

<!-- ==========Banner-Section========== -->
<section class="banner-section">
    <div class="banner-bg bg_img bg-fixed" data-background="/cinema/assets/images/banner/banner02.jpg"></div>
    <div class="container">
        <div class="banner-content">
            <h1 class="title bold">get <span class="color-theme">movie</span> tickets</h1>
            <p>Buy movie tickets in advance, find movie times watch trailers, read movie reviews and much more</p>
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

                <div class="widget-1 widget-check">
                    <div class="widget-header">
                        <h5 class="m-title">Filter By</h5> <a href="#0" class="clear-check" id="clear">Clear All</a>
                    </div>
                    <div class="widget-1-body">
                        <h6 class="subtitle">experience</h6>
                        <div class="check-area">
                            <c:forEach var="format" items="${formats}" varStatus="status">
                                <div class="form-group">
                                    <input type="checkbox" onchange="createTable(1);" class="format" name="format" value="${format.format}" id="format${status.index}">
                                    <label for="format${status.index}">${format.format}</label>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="widget-1 widget-check">
                    <div class="widget-1-body">
                        <h6 class="subtitle">genre</h6>
                        <div class="check-area">
                            <c:forEach var="genre" items="${genres}" varStatus="status">
                                <div class="form-group">
                                    <input type="checkbox" onchange="createTable(1);" class="genre" name="genre" value="${genre.id}" id="genre${status.index}">
                                    <label for="genre${status.index}">${genre.name}</label>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 mb-50 mb-lg-0">
                <div class="filter-tab tab">
                    <div class="filter-area">
                        <div class="filter-main">
                            <div class="left">
                                <div class="item">
                                    <span class="show">Sort By :</span>
                                    <select class="select-bar" id="sort" name="sort" onchange="createTable(1);">
                                        <option value="1" selected>현재 상영작</option>
                                        <option value="2">개봉 예정작</option>
                                    </select>
                                </div>
                            </div>
                            <ul class="grid-button tab-menu">
                                <li class="active">
                                    <i class="fas fa-th"></i>
                                </li>
                                <li>
                                    <i class="fas fa-bars"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-area">
                        <div class="tab-item active">
                            <div class="row mb-10 justify-content" id="movieList1">

                            </div>
                        </div>

                        <div class="tab-item">
                            <div class="movie-area mb-10" id="movieList2">

                            </div>
                        </div>
                    </div>
                    <div class="pagination-area text-center" id="pagination">

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========Movie-Section========== -->
<c:import url="../main/footer.jsp"/>
<script>
    $("#clear").click(function () {
        $(".format").prop("checked", false);
        $(".genre").prop("checked", false);
        createTable(1);
    });

    function createTable(page) {
        var genrearray = new Array();
        var formatArray = new Array();

        var sort = $("#sort option:selected").val();

        $("input[name='genre']:checked").each(function(){
            genrearray.push($(this).val());
        });

        $("input[name='format']:checked").each(function(){
            formatArray.push($(this).val());
        });

        $.ajax({
            url: "/csmovie/movies/list",
            data: {
                genreChBox: genrearray,
                formatChBox: formatArray,
                sort: sort,
                page: page
            },
            type: 'post',
            success: function(data) {
                let res1 = "";
                let res2 = "";
                let pagination = "";
                console.log(data);

                var movies = data.movieList;
                var pageMaker = data.pageMaker;

                if (pageMaker.prev) {
                    pagination += "<a href=\"#0\" onclick=\"createTable("+ (pageMaker.startPage - 1) +");\"><i class=\"fas fa-angle-double-left\"></i><span>Prev</span></a>"
                }

                for (let i = pageMaker.startPage; i <= pageMaker.endPage; i++) {
                    if (i == page) {
                        pagination += "<a href=\"#0\" class=\"active\" onclick=\"createTable("+i+");\">" + i + "</a>"
                    } else {
                        pagination += "<a href=\"#0\" onclick=\"createTable("+i+");\">" + i + "</a>"
                    }
                }

                if (pageMaker.next) {
                    pagination += "<a href=\"#0\" onclick=\"createTable("+ (pageMaker.endPage + 1) +");\"><span>Next</span><i class=\"fas fa-angle-double-right\"></i></a>"
                }

                $("#pagination").html(pagination);

                for(let i=0; i<movies.length; i++) {
                    var trailer = movies[i].trailer != null ? movies[i].trailer : "#0";
                    var formats = movies[i].screeningFormat.split(',');

                    res2 += "<div class=\"movie-list\">\n" +
                        "        <div class=\"movie-thumb c-thumb\">\n" +
                        "            <a href=\"/csmovie/movies/"+ movies[i].id +"\" class=\"w-100 bg_img h-100\" data-background=\"/csmovie/movies/images/" + movies[i].poster + "\">\n" +
                        "                <img src=\"/csmovie/movies/images/" + movies[i].poster + "\" alt=\"movie\">\n" +
                        "            </a>\n" +
                        "        </div>\n" +
                        "        <div class=\"movie-content bg-one\">\n" +
                        "            <h5 class=\"title\">\n" +
                        "                <a href=\"/csmovie/movies/"+ movies[i].id +"\">" + movies[i].title + "</a>\n" +
                        "            </h5>\n" +
                        "            <p class=\"duration\">" + movies[i].showTimes + "분</p>\n" +
                        "            <div class=\"movie-tags\">\n" +
                        "                <a>" + movies[i].genre.name + "</a>\n" +
                        "            </div>\n" +
                        "            <div class=\"release\">\n" +
                        "                <span>개봉일 : </span> <a> " + movies[i].releaseDate + "</a>\n" +
                        "            </div>\n" +
                        "            <div class=\"widget-1 widget-tags\">\n" +
                        "                <br><br><br>" +
                        "                <ul>\n";
                        for(let i = 0; i < formats.length; i++) {
                            res2 += "        <li><a>" + formats[i] + "</a></li>\n";
                        }
                    res2 += "            </ul>\n" +
                        "            </div>" +
                        "            <div class=\"book-area\">\n" +
                        "                <div class=\"book-ticket\">\n" +
                        "                    <div class=\"react-item mr-auto\">\n" +
                        "                        <a href=\"#0\">\n" +
                        "                            <div class=\"thumb\">\n" +
                        "                                <img src=\"/cinema/assets/images/icons/book.png\" alt=\"icons\">\n" +
                        "                            </div>\n" +
                        "                            <span>book ticket</span>\n" +
                        "                        </a>\n" +
                        "                    </div>\n" +
                        "                    <div class=\"react-item\">\n" +
                        "                        <a href=\"" + trailer + "\" class=\"popup-video\">\n" +
                        "                            <div class=\"thumb\">\n" +
                        "                                <img src=\"/cinema/assets/images/icons/play-button.png\" alt=\"icons\">\n" +
                        "                            </div>\n" +
                        "                            <span>watch trailer</span>\n" +
                        "                        </a>\n" +
                        "                    </div>\n" +
                        "                </div>\n" +
                        "            </div>\n" +
                        "        </div>\n" +
                        "    </div>";

                    res1 += "<div class=\"col-sm-6 col-lg-4\">\n" +
                        "        <div class=\"movie-grid\">\n" +
                        "            <div class=\"movie-thumb c-thumb\">\n" +
                        "                <a href=\"/csmovie/movies/"+ movies[i].id +"\">\n" +
                        "                    <img src=\"/csmovie/movies/images/" + movies[i].poster + "\" alt=\"movie\">\n" +
                        "                </a>\n" +
                        "            </div>\n" +
                        "            <div class=\"movie-content bg-one\">\n" +
                        "                <h5 class=\"title m-0\">\n" +
                        "                    <a href=\"/csmovie/movies/"+ movies[i].id +"\">" + movies[i].title + "</a>\n" +
                        "                </h5>\n" +
                        "                <div class=\"widget-1 widget-tags\">\n" +
                        "                <br/><br/>" +
                        "                    <ul>\n";
                        for(let i = 0; i < formats.length; i++) {
                            res1 += "            <li><a>" + formats[i] + "</a></li>\n";
                        }
                    res1 +=    "             </ul>\n" +
                        "                </div>" +
                        "            </div>\n" +
                        "        </div>\n" +
                        "    </div>";
                }
                $("#movieList2").html(res2);
                $("#movieList1").html(res1);
            }
        })
    }
</script>
</body>

</html>
