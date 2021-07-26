<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <c:import url="../main/header.jsp" />

    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">

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
        background-color: #4068ba;
        border-color: #4c588f78;
    }
     .goHome:hover{
         color: #84c7a9!important;
     }
</style>

</head>

<body>
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
    
    <!-- ==========Sign-In-Section========== -->
    <section class="account-section bg_img" data-background="./assets/images/account/account-bg.jpg">
        <div class="container">
            <div class="padding-top padding-bottom">
                <div class="account-area">
                    <div class="section-header-3">
                        <span class="cate"><a class="goHome" href="/csmovie" style="color: #888cbb">induk cinema</a></span>
                        <h2 class="title">회원 가입</h2>
                    </div>
                    <form id="form1" class="account-form" method="post" action="/csmovie/members/signup"  enctype="multipart/form-data">
                        <div class="form-group">
                            <spring:bind path="member.name">
                                <label for="${status.expression}">이름<span> *</span></label>
                                <input type="text"  name="${status.expression}" value="${status.value}" id="${status.expression}"  placeholder="이름을 입력해주세요" required>
                                <span style="color: red">${status.errorMessage }</span>
                            </spring:bind>
                        </div>
                        <div class="form-group">
                            <spring:bind path="member.email">
                                <label for="${status.expression}">이메일<span> *</span></label>
                                <input type="text" name="${status.expression}" value="${status.value}" id="${status.expression}" placeholder="이메일을 입력해주세요" required>
                                <span style="color: red">${status.errorMessage }</span>
                            </spring:bind>
                        </div>
                        <div class="form-group">
                            <spring:bind path="member.password">
                                <label for="${status.expression}">비밀번호<span> *</span></label>
                                <input type="password" name="${status.expression}" value="${status.value}" id="${status.expression}" placeholder="비밀번호를 입력해주세요"  required>
                                <span style="color: red">${status.errorMessage }</span>
                            </spring:bind>
                        </div>
                        <div class="form-group">
                            <spring:bind path="member.address">
                                <label for="${status.expression}">주소<span> *</span></label>
                                <input type="text" name="${status.expression}" value="${status.value}" id="${status.expression}" placeholder="주소를 입력해주세요"  required>
                                <span style="color: red">${status.errorMessage }</span>
                            </spring:bind>
                        </div>
                        <div class="form-group" style="margin-bottom: 0px;">
                            <label>이미지</label>
                        </div>
                        <div class="filebox bs3-primary preview-image">
                            <label for="input_file" class="upload-name" style="border: none;width: 200px;background-color: white;color: black;" disabled="disabled">
                                이미지 선택
                            </label>
                            <label for="input_file">업로드</label>
                            <input type="file" id="input_file" name="imageForm" class="upload-hidden" accept="image/gif, image/bmp, image/png, image/jpeg" onchange="checkImage()">
                        </div>
                        <div class="form-group checkgroup">
                            <input type="checkbox" id="terms" required checked>
                            <label for="terms">개인정보 수집 및 이용 약관에 동의합니다. <span style="color: #31d7a9"> (필수)</span></label>
                        </div>
                        <div class="form-group text-center">
                            <input type="submit" value="회원 가입" onclick="checkTerms();">
                        </div>
                    </form>
                    <div class="option">
                        Already have an account? <a href="/csmovie/members/login">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Sign-In-Section========== -->
    <c:import url="../main/login_footer.jsp" />
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
    <script>
        function checkTerms() {
            var isCheckedTerms = document.getElementById('terms').checked;
            if(!isCheckedTerms){
                alert('약관에 동의해야 합니다.');
            }
            return
        }
    </script>
</body>

</html>