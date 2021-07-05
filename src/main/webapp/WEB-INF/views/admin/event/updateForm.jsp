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

    <title>Event - Update Tables</title>

    <!-- Header -->
    <c:import url="../main/header.jsp" />

    <!-- Custom styles for this page -->
    <link href="/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    <style>
        .field-error {
            border-color: #dc3545;
            color: #dc3545;
        }

        img {
            max-width: 100%;
            height: auto;
        }
    </style>
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
            <form method="post" action="/csmovie/admin/events/${event.id}/edit" enctype="multipart/form-data">
                <div class="card-header py-3">
                    <h4 class="m-0 font-weight-bold text-primary"><i class="fas fa-gift"> Event Edit</i>
                        <a href='#' class="btn btn-primary float-right" onclick="location.href='/csmovie/admin/events/${event.id}'"><i class="fas fa-undo"></i></a>
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
                                <input type="text" class="form-control" name="id" id="id" value="${event.id}" readonly>
                            </td>
                        </tr>
                        <tr>
                            <spring:bind path="event.title">
                                <th scope="row" width="20%" style="vertical-align:middle;">Title <font color="red">*</font></th>
                                <td width="80%">
                                    <input type="text" class="${status.error ? "form-control field-error" : "form-control"}" name="${status.expression}"
                                           id="${status.expression }" value="${event.title}" placeholder="제목을 입력해주세요">
                                    <c:if test="${status.error}">
                                        <div class="field-error">${status.errorMessage}</div>
                                    </c:if>
                                </td>
                            </spring:bind>
                        </tr>
                        <tr>
                            <th scope="row" width="20%" style="vertical-align:middle;">Image</th>
                            <td width="80%">
                                <input type="file" class="form-control" name="imageFile" id="imageFile">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" width="20%" style="vertical-align:middle;">Uploaded File
                            </th>
                            <td width="80%">
                                <img src="/csmovie/admin/events/images/${event.storeFilename}">
                                <input type="hidden" name="storeFilename" id="storeFilename" value="${event.storeFilename}"/>
                                <input type="hidden" name="uploadFilename" id="uploadFilename" value="${event.uploadFilename}"/>
                                <input type="hidden" name="path" id="path" value="${event.path}"/>
                            </td>
                        </tr>
                        <tr>
                            <spring:bind path="event.content">
                                <th scope="row" width="20%" style="vertical-align:middle;">Content <font color="red">*</font></th>
                                <td width="80%">
                                    <textarea rows="5" class="${status.error ? "form-control field-error" : "form-control"}" name="${status.expression}"
                                              id="${status.expression }" value="" placeholder="내용을 입력해주세요">${event.content}</textarea>
                                    <c:if test="${status.error}">
                                        <div class="field-error">${status.errorMessage}</div>
                                    </c:if>
                                </td>
                            </spring:bind>
                        </tr>
                        <tr>
                            <spring:bind path="event.start_date">
                                <th scope="row" width="20%" style="vertical-align:middle;">Start_date <font color="red">*</font></th>
                                <td width="80%">
                                    <input type="text" class="${status.error ? "form-control field-error" : "form-control"}" name="${status.expression}"
                                           id="datePicker" value="${event.start_date}" placeholder="시작 날짜를 입력해주세요">
                                    <c:if test="${status.error}">
                                        <div class="field-error">${status.errorMessage}</div>
                                    </c:if>
                                </td>
                            </spring:bind>
                        </tr>
                        <tr>
                            <spring:bind path="event.end_date">
                                <th scope="row" width="20%" style="vertical-align:middle;">End_date <font color="red">*</font></th>
                                <td width="80%">
                                    <input type="text" class="${status.error ? "form-control field-error" : "form-control"}" name="${status.expression}"
                                           id="datePicker" value="${event.end_date}" placeholder="종료 날짜를 입력해주세요">
                                    <c:if test="${status.error}">
                                        <div class="field-error">${status.errorMessage}</div>
                                    </c:if>
                                </td>
                            </spring:bind>
                        </tr>
                        <tr>
                            <spring:bind path="event.reporting_date">
                                <th scope="row" width="20%" style="vertical-align:middle;">Reporting_date <font color="red">*</font></th>
                                <td width="80%">
                                    <input type="text" class="form-control" name="reporting_date" id="reporting_date" value="${event.reporting_date}" readonly >
                                    <c:if test="${status.error}">
                                        <div class="field-error">${status.errorMessage}</div>
                                    </c:if>
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