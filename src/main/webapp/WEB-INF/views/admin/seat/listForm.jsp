<%@ page import="com.induk.cinema.domain.City" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary"><i class="fas fa-couch"> Seat DataTables</i>
                <button type="submit" class="btn btn-primary float-right" onclick="location.href='/admin/seats/add'">추가</button></h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th width="20%">ID</th>
                            <th width="30%">Theater</th>
                            <th width="30%">Seat_Number</th>
                            <th width="20%">Status</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th width="20%">ID</th>
                            <th width="30%">Theater</th>
                            <th width="30%">Seat_Number</th>
                            <th width="20%">Status</th>
                        </tr>
                        </tfoot>
                        <tbody>

                        <c:forEach var="seat" items="${seats}">
                        <tr>
                            <th width="20%"><a href="/admin/seats/${seat.id}" >${seat.id}</a></th>
                            <th width="30%">${seat.seatTheater.theaterName}</th>
                            <th width="30%">${seat.number}</th>
                            <c:if test="${seat.status == 1}">
                                <th width="20%">예약석</th>
                            </c:if>
                            <c:if test="${seat.status == 0}">
                                <th width="20%">빈좌석</th>
                            </c:if>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<c:import url="../main/footer.jsp" />

<!-- Page level plugins -->
<script src="/admin/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
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