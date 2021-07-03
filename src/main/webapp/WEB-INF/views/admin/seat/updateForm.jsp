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

    <!-- Custom styles for this page -->
    <%--    <link href="/cinema/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">--%>
    <link href="/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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
            <form method="post" action="/cinema/admin/seats/update/${seat.id}">
                <div class="card-header py-3">
                    <h4 class="m-0 font-weight-bold text-primary"><i class="fas fa-couch"><a href="/cinema/admin/seats" style="text-decoration:none"> Seat</a></i>
                        <a href='#' class="btn btn-primary float-right" onclick="location.href='/cinema/admin/seats/${seat.id}'"><i class="fas fa-undo"></i></a>
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
                                <input type="text" class="form-control" value="${seat.id}" readonly>
                            </td>
                        </tr>
                        <tr>
                            <spring:bind path="seat.theater_id">
                                <th scope="row" width="20%" style="vertical-align:middle;">Theater <font color="red">*</font></th>
                                <td width="80%">
                                    <select name="${status.expression }" id="${status.expression }" class="form-control">
                                        <option value="">상영관을 선택해주세요</option>
                                        <c:forEach var="theater" items="${theaters}">
                                            <c:if test="${theater.id == seat.theater_id}">
                                                <option value="${theater.id}" selected>${theater.name}</option>
                                            </c:if>
                                            <c:if test="${theater.id != seat.theater_id}">
                                                <option value="${theater.id}">${theater.name}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                    <!-- 해당 속성의 오류 message를 출력 -->
                                    ${status.errorMessage }
                                </td>
                            </spring:bind>
                        </tr>
                        <tr>
                            <spring:bind path="seat.number">
                                <th scope="row" width="20%" style="vertical-align:middle;">Seat_Number <font color="red">*</font></th>
                                <td width="80%">
                                    <input type="text" class="form-control" value="${seat.number}" name="${status.expression }"
                                           id="${status.expression }" placeholder="좌석 번호를 입력해주세요">
                                    <!-- 해당 속성의 오류 message를 출력 -->
                                    ${status.errorMessage }
                                </td>
                            </spring:bind>
                        </tr>
                        <tr>
                            <spring:bind path="seat.status">
                                <th scope="row" width="20%" style="vertical-align:middle;">Status${seat.status}<font color="red">*</font></th>
                                <td width="80%">
                                    <c:if test="${seat.status == 1}">
                                        <input type="text" class="form-control" value="예약석" name="${status.expression }"
                                               id="${status.expression }" placeholder="좌석 예약 상태(0, 1)를 입력해주세요">
                                    </c:if>
                                    <c:if test="${seat.status == 0}">
                                        <input type="text" class="form-control" value="빈좌석" name="${status.expression }"
                                               id="${status.expression }" placeholder="좌석 예약 상태(0, 1)를 입력해주세요">
                                    </c:if>
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

<!-- Page level plugins -->
<%--<script src="/cinema/admin/vendor/datatables/jquery.dataTables.min.js"></script>--%>
<%--<script src="/cinema/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>--%>
<script src="/admin/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<%--<script src="/cinema/admin/js/demo/datatables-demo.js"></script>--%>
<script src="/admin/js/demo/datatables-demo.js"></script>

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