<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en" class=" sizes customelements history pointerevents postmessage webgl websockets cssanimations csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside flexbox picture srcset webworkers"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <c:import url="../main/header.jsp" />

    <title>Boleto  - Online Ticket Booking Website HTML Template</title>

    <style>

        .filebox {
            width: 100%;
            margin-bottom: 20px;
        }
        .upload-display{
            width: 100%;
            margin-bottom: 10px;
        }
        .filebox input[type="file"] {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip:rect(0,0,0,0);
            border: 0;
        }

        .filebox label {
            display: inline-block;
            padding: .5em .75em;
            color: #999;
            font-size: inherit;
            line-height: normal;
            vertical-align: middle;
            background-color: #fdfdfd;
            cursor: pointer;
            border: 1px solid #ebebeb;
            border-bottom-color: #e2e2e2;
            border-radius: .25em;
            margin: 0;
        }

        /* named upload */
        .filebox .upload-name {
            color: #000000;
            height: 40px;
            display: inline-block;
            padding: .5em .75em;
            font-size: inherit;
            font-family: inherit;
            line-height: normal;
            vertical-align: middle;
            background-color: #f5f5f5;
            border: 1px solid #ebebeb;
            border-bottom-color: #e2e2e2;
            border-radius: .25em;
            -webkit-appearance: none; /* 네이티브 외형 감추기 */
            -moz-appearance: none;
            appearance: none;
        }

        /* imaged preview */
        .filebox .upload-display {
            width: 100%;
            margin-bottom: 5px;
            margin-bottom: 10px;
        }

        @media(min-width: 768px) {
            .filebox .upload-display {
                display: inline-block;
                margin-right: 5px;
                margin-bottom: 10px;
                width: 100%;
            }
        }

        .filebox .upload-thumb-wrap {
            display: inline-block;
            max-width: 150px;
            padding: 2px;
            vertical-align: middle;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
        }

        .filebox .upload-display img {
            display: block;
            max-width: 100%;
            height: auto;
            max-height: 150px;
        }

        .filebox.bs3-primary label {
            color: #fff;
            background-color: #0e4abc;
            border-color: #2d4186;
        }
        .custom-textarea{
            background:transparent;
            border:1px solid #2d4186;
            padding-left:10px;
            color: #dbe2fb;
            border-radius: 10px;
            height:300px;
        }
        .custom-select{
            height: 60px;
            border-radius: 10px;
            border-color: #2d4186;
            color: #dbe2fb;
            background:transparent;
            background: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3e%3cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e") no-repeat right .75rem center/8px 10px;
        }
        .custom-select option{
            color: #dbe2fb;
            background:#032055;
        }
        .custom-focus:focus{
            border-color:#80bdff!important;
            outline:0!important;
            box-shadow:0 0 0 .2rem rgba(0,123,255,.25)!important;
        }
        .view-type{
            color: #ffffffc2;
            padding: 5px 20px;
            border: 1px solid rgba(163, 177, 198, 0.2);
            border-radius: 20px;
            margin-right: 20px;
        }
        .view-grade{
            background: green;
            padding: 5px;
            border-radius: 100%;
            font-size: 13px;
        }
    </style>
</head>

<body>
<c:import url="../main/nav.jsp" />

<!-- ==========Banner-Section========== -->
<section class="main-page-header speaker-banner bg_img" data-background="./assets/images/banner/banner07.jpg" style="background-image: url(&quot;./assets/images/banner/banner07.jpg&quot;);">
    <div class="container">
        <div class="speaker-banner-content">
            <h2 class="title">예매 목록</h2>
            <ul class="breadcrumb">
                <li>
                    <a href="/csmovie">
                        홈
                    </a>
                </li>
                <li>
                    <a>내정보</a>
                </li>
                <li>
                    예매 목록
                </li>
            </ul>
        </div>
    </div>
</section>
<!-- ==========Banner-Section========== -->


<!-- ==========Event-Section========== -->
<div class="event-facility padding-bottom padding-top">
    <div class="container">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-lg-10">
                <div class="checkout-widget checkout-card mb-0" style="border-radius: 10px;">




                    <div class="filter-tab tab">
                        <div class="filter-area" style="border: none;border-bottom: 3px solid rgba(163,177,198,0.151);border-radius: 0px;">
                            <div class="filter-main">
                                <h5 class="title" style="margin-bottom: 15px;"><i class="fas fa-ticket-alt"></i> 예매 목록 </h5>
                                <div class="left">
                                    <div class="item">
                                        <span class="show">Show :</span>
                                        <ul class="tab-menu">
                                        <select class="select-bar tab-menu ">
                                            <option type="button" class="tab-menu" value="12">예매 영화</option>
                                            <option type="button" class="tab-menu" value="15">시청한 영화</option>
                                        </select>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-area">
                            <div class="tab-item active">
                                <div class="movie-area mb-10">
                                    <div class="movie-list">
                                        <div class="movie-thumb c-thumb">
                                            <a href="movie-details.html" class="w-100 bg_img h-100" data-background="/cinema/assets/images/movie/movie06.jpg">
                                                <img class="d-sm-none" src="/cinema/assets/images/movie/movie06.jpg" alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <div style="margin-top: 10px;">
                                                <h6>예매번호 : <span style="color: #31d7a9">46</span></h6>
                                                <hr>
                                            </div>
                                            <div>
                                                <h5 class="title" style="margin-bottom: 8px;">
                                                    <a href="movie-details.html">trooper(2D,IMX)</a>
                                                </h5>
                                            </div>
                                            <p class="duration">2시간 30분 </p>

                                            <div class="movie-tags">
                                                <a>액션</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>극장 : </span> <a > 강동메가박스, 1관</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>에매일시 : </span> <a > 2020-01-06 16:40</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>상영일시 : </span> <a > 2020-01-06&ensp; 16:45 ~ 19:03</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>인원 : </span> <a > 성인1, 어린이1</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>좌석 : </span> <a > A4, A8</a>
                                            </div>
                                            <div class="release" >
                                                <span>결제 : </span> <a > 카드 15,000원</a>
                                            </div>

                                            <div class="book-area">
                                                <div class="book-ticket" style="text-align: center">
                                                    <a type="button" class="custom-button" style="width: 100%" href="#">예매 취소</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="movie-list">
                                        <div class="movie-thumb c-thumb">
                                            <a href="movie-details.html" class="w-100 bg_img h-100" data-background="/cinema/assets/images/movie/movie07.jpg">
                                                <img class="d-sm-none" src="/cinema/assets/images/movie/movie07.jpg" alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <h5 class="title">
                                                <a href="movie-details.html">horror night</a>
                                            </h5>
                                            <p class="duration">2hrs 50 min</p>
                                            <div class="movie-tags">
                                                <a href="#0">action</a>
                                                <a href="#0">adventure</a>
                                                <a href="#0">fantasy</a>
                                            </div>
                                            <div class="release">
                                                <span>Release Date : </span> <a href="#0"> November 8 , 2020</a>
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
                                </div>
                            </div>
                            <div class="tab-item">
                                <div class="movie-area mb-10">
                                    <div class="movie-list">
                                        <div class="movie-thumb c-thumb">
                                            <a href="movie-details.html" class="w-100 bg_img h-100" data-background="/cinema/assets/images/movie/movie06.jpg">
                                                <img class="d-sm-none" src="/cinema/assets/images/movie/movie06.jpg" alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <div style="margin-top: 10px;">
                                                <h6>예매번호 : <span style="color: #31d7a9">46</span></h6>
                                                <hr>
                                            </div>
                                            <div>
                                                <h5 class="title" style="margin-bottom: 8px;">
                                                    <a href="movie-details.html">trooper(2D,IMX)</a>
                                                </h5>
                                            </div>
                                            <p class="duration">2시간 30분 </p>

                                            <div class="movie-tags">
                                                <a>액션</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>극장 : </span> <a > 강동메가박스, 1관</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>에매일시 : </span> <a > 2020-01-06 16:40</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>상영일시 : </span> <a > 2020-01-06&ensp; 16:45 ~ 19:03</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>인원 : </span> <a > 성인1, 어린이1</a>
                                            </div>
                                            <div class="release" style="margin-bottom: 5px;">
                                                <span>좌석 : </span> <a > A4, A8</a>
                                            </div>
                                            <div class="release" >
                                                <span>결제 : </span> <a > 카드 15,000원</a>
                                            </div>

                                            <div class="book-area">
                                                <div class="book-ticket" style="text-align: center">
                                                    <a class="custom-button" style="width: 100%">시청 완료</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="movie-list">
                                        <div class="movie-thumb c-thumb">
                                            <a href="movie-details.html" class="w-100 bg_img h-100" data-background="./assets/images/movie/movie05.jpg">
                                                <img class="d-sm-none" src="./assets/images/movie/movie05.jpg" alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <h5 class="title">
                                                <a href="movie-details.html">fury</a>
                                            </h5>
                                            <p class="duration">2hrs 50 min</p>
                                            <div class="movie-tags">
                                                <a href="#0">action</a>
                                                <a href="#0">adventure</a>
                                                <a href="#0">fantasy</a>
                                            </div>
                                            <div class="release">
                                                <span>Release Date : </span> <a href="#0"> November 8 , 2020</a>
                                            </div>
                                            <ul class="movie-rating-percent">
                                                <li>
                                                    <div class="thumb">
                                                        <img src="./assets/images/movie/tomato.png" alt="movie">
                                                    </div>
                                                    <span class="content">88%</span>
                                                </li>
                                                <li>
                                                    <div class="thumb">
                                                        <img src="./assets/images/movie/cake.png" alt="movie">
                                                    </div>
                                                    <span class="content">88%</span>
                                                </li>
                                            </ul>
                                            <div class="book-area">
                                                <div class="book-ticket">
                                                    <div class="react-item">
                                                        <a href="#0">
                                                            <div class="thumb">
                                                                <img src="./assets/images/icons/heart.png" alt="icons">
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="react-item mr-auto">
                                                        <a href="#0">
                                                            <div class="thumb">
                                                                <img src="./assets/images/icons/book.png" alt="icons">
                                                            </div>
                                                            <span>book ticket</span>
                                                        </a>
                                                    </div>
                                                    <div class="react-item">
                                                        <a href="#0" class="popup-video">
                                                            <div class="thumb">
                                                                <img src="./assets/images/icons/play-button.png" alt="icons">
                                                            </div>
                                                            <span>watch trailer</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pagination-area text-center">
                            <a href="#0"><i class="fas fa-angle-double-left"></i><span>Prev</span></a>
                            <a href="#0">1</a>
                            <a href="#0">2</a>
                            <a href="#0" class="active">3</a>
                            <a href="#0">4</a>
                            <a href="#0">5</a>
                            <a href="#0"><span>Next</span><i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>




                </div>
            </div>

        </div>
    </div>
</div>
<!-- ==========Event-Section========== -->

<c:import url="../main/footer.jsp" />
<script>
    $(document).ready(function(){
        var fileTarget = $('.filebox .upload-hidden');

        fileTarget.on('change', function(){
            if(window.FileReader){
                // 파일명 추출
                var filename = $(this)[0].files[0].name;
            }

            else {
                // Old IE 파일명 추출
                var filename = $(this).val().split('/').pop().split('\\').pop();
            };

            $(this).siblings('.upload-name').text(filename);
        });

        //preview image
        var imgTarget = $('.preview-image .upload-hidden');

        imgTarget.on('change', function(){
            var parent = $(this).parent();
            parent.children('.upload-display').remove();

            if(window.FileReader){
                //image 파일만
                if (!$(this)[0].files[0].type.match(/image\//)) return;

                var reader = new FileReader();
                reader.onload = function(e){
                    var src = e.target.result;
                    parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
                }
                reader.readAsDataURL($(this)[0].files[0]);
            }

            else {
                $(this)[0].select();
                $(this)[0].blur();
                var imgSrc = document.selection.createRange().text;
                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

                var img = $(this).siblings('.upload-display').find('img');
                img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";
            }
        });
    });
</script>
<script>
    function checkImage() {
        var imgFile = $('#input_file').val();
        var fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|JPG|JPEG|PNG|GIF|BMP)$/;
        var maxSize = 5 * 1024 * 1024;
        var fileSize;

        if (imgFile != "" && imgFile != null) {
            fileSize = document.getElementById("input_file").files[0].size;

            if (!imgFile.match(fileForm)) {
                alert("이미지 파일만 업로드 가능");
                document.getElementById("input_file").value = "";
                return;
            } else if (fileSize >= maxSize) {
                alert("파일 사이즈는 5MB까지 가능");
                document.getElementById("input_file").value = "";
                return;
            }
        }
    }
</script>
</body></html>