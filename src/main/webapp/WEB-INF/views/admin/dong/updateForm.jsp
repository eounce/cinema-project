<%@ page import="com.induk.cinema.domain.City" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Tables</title>

    <!-- Header -->
    <c:import url="../main/header.jsp" />

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Navigation -->
    <c:import url="../main/nav.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <form method="post" action="/csmovie/admin/dongs/update/${dong.id}">
                <div class="card-header py-3">
                    <h4 class="m-0 font-weight-bold text-primary"><i class="fas fa-city"><a href="/csmovie/admin/dongs" style="text-decoration:none"> Dong</a></i>
                        <a href='#' class="btn btn-primary float-right" onclick="location.href='/csmovie/admin/dongs/${dong.id}'"><i class="fas fa-undo"></i></a>
                        <span class="float-right">&nbsp;</span>
                        <button class="btn btn-primary float-right"><i class="fas fa-check"></i></button>
                    </h4>
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-striped">
                        <tbody>
                        <tr>
                            <th scope="row" width="20%" style="vertical-align:middle;">ID <font color="red">*</font></th>
                            <td width="80%">
                                <input type="text" class="form-control" value="${dong.id}" readonly>
                            </td>
                        </tr>
                        <tr>
                            <!-- path:city객체의 name속성을 검사 -->
                            <!-- spring 태그를 사용하기 위해서는 상단에 관련 taglib를 추가해줘야 합니다.-->
                            <spring:bind path="dong.name">
                                <th scope="row" width="20%" style="vertical-align:middle;">Name <font color="red">*</font></th>
                                <td width="80%">
                                    <input type="text" class="form-control" name="${status.expression }"
                                           id="${status.expression }" placeholder="구/지점명을 입력해주세요" value="${dong.name}">
                                    <!-- 해당 속성의 오류 message를 출력 -->
                                        ${status.errorMessage }
                                </td>
                            </spring:bind>
                        </tr>
                        <tr>
                            <spring:bind path="dong.city_id">
                                <th scope="row" width="20%" style="vertical-align:middle;">City <font color="red">*</font></th>
                                <td width="80%">
                                    <select name="${status.expression }" id="${status.expression }" class="form-control">
                                        <option value="">시/도를 선택해주세요</option>
                                        <c:forEach var="city" items="${citys}">
                                            <c:if test="${city.id == dong.city_id}">
                                                <option value="${city.id}" selected>${city.name}</option>
                                            </c:if>
                                            <c:if test="${city.id != dong.city_id}">
                                                <option value="${city.id}">${city.name}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                    <!-- 해당 속성의 오류 message를 출력 -->
                                        ${status.errorMessage }
                                </td>
                            </spring:bind>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<c:import url="../main/footer.jsp" />

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

</body>

</html>