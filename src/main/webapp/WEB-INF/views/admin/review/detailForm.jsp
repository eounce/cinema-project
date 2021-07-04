<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.induk.cinema.domain.Review" %>
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
    <c:import url="/WEB-INF/views/admin/main/header.jsp" />

    <!-- Custom styles for this page -->
    <link href="/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Navigation -->
    <c:import url="/WEB-INF/views/admin/main/nav.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <form name="updateForm" action="/admin/reviews/${review.id}/edit" method="GET">
            </form>
            <form name="deleteForm" action="/admin/reviews/${review.id}/del" method="POST">
                <input type="hidden" name="_method" value="delete" />
            </form>
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary"><a href="/admin/reviews"><a href="/admin/reviews"><i class="fas fa-leaf"> Review</i></a>
                    <a href='#' class="btn btn-primary float-right" onclick="location.href='/admin/reviews'"><i class="fas fa-undo"></i></a>
                    <span class="float-right">&nbsp;</span>
                    <a class="btn btn-primary float-right" href="#"
                       onclick="javascript:confirm('삭제할까요 ?'); document.deleteForm.submit();"><i class="fas fa-trash-alt"></i></a>
                    <span class="float-right">&nbsp;</span>
                    <a class="btn btn-primary float-right" href="#"
                       onclick="javascript:document.updateForm.submit();"><i class="fas fa-pen"></i></a>
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped" width="100%" cellspacing="0">
                    <tbody>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">ID</th>
                        <td width="80%">
                            <input type="text" class="form-control" name="id" value="${review.id}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">Member_id</th>
                        <td width="80%">
                            <input type="text" class="form-control" name="" value="[${review.id}] ${review.memberId}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">Title</th>
                        <td width="80%">
                            <input type="text" class="form-control" name="title" value="${review.title}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">Content <font color="red">*</font></th>
                        <td width="80%">
                            <textarea type="text" name="content"class="form-control" rows="9" disabled>${review.content}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">View</th>
                        <td width="80%">
                            <input type="text" class="form-control" name="view" value="${review.view}" disabled>
                        </td>
                    </tr>
                    <%
                        Review review = (Review)request.getAttribute("review");
                        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String subscription_date = df.format(review.getReportingDate());
                    %>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">Subscription_date</th>
                        <td width="80%">
                            <input type="text" class="form-control" name="subscription_date" value="<%=subscription_date%>" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">Image</th>
                        <td width="80%">
                            <img src="/admin/reviews/images/${review.image}" style="max-height: 200px;max-width: 100%">
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<c:import url="/WEB-INF/views/admin/main/footer.jsp" />

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