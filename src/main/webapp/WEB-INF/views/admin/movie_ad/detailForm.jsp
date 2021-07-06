<%--
  Created by IntelliJ IDEA.
  User: 201712029@office.induk.ac.kr
  Date: 2021-07-02
  Time: 오전 12:11
  To change this template use File | Settings | File Templates.
--%>
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
            <form name="updateForm" action="/csmovie/admin/movie_ad/${movieAd.id}/edit" method="GET">
                <input type="hidden" name="movieId" value="${movieAd.movie.id}">
            </form>
            <form name="deleteForm" action="/csmovie/admin/movie_ad/${movieAd.id}/delete" method="GET">
                <input type="hidden" name="movieId" value="${movieAd.movie.id}">
            </form>
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary"><i class="fas fa-images"> Movie AD</i>
                    <a href='#' class="btn btn-primary float-right" onclick="location.href='/csmovie/admin/movie_ad?movieId=${movieAd.movie.id}'"><i class="fas fa-undo"></i></a>
                    <span class="float-right">&nbsp;</span>
                    <a class="btn btn-primary float-right" href="#"
                       onclick="javascript:del();"><i class="fas fa-trash-alt"></i></a>
                    <span class="float-right">&nbsp;</span>
                    <a class="btn btn-primary float-right" href="#"
                       onclick="javascript:document.updateForm.submit();"><i class="fas fa-pen"></i></a>
                </h4>
            </div>

            <div class="card-body">
                <table class="table table-bordered table-striped">
                    <tbody>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">ID
                        </th>
                        <td width="80%">
                            <input type="text" class="form-control" name="id" id="id" value="${movieAd.id}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">Title
                        </th>
                        <td width="80%">
                            <input type="text" class="form-control" name="title" id="title" value="${movieAd.movie.title}" readonly>
                        </td>
                    </tr>
                    <c:choose>
                        <c:when test="${movieAd.kind eq 'image'}">
                            <tr>
                                <th scope="row" width="20%" style="vertical-align:middle;">Image
                                </th>
                                <td width="80%">
                                    <img src="/csmovie/admin/movie_ad/images/${movieAd.storeFilename}">
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <th scope="row" width="20%" style="vertical-align:middle;">Video
                                </th>
                                <td width="80%">
                                    <iframe width="560" height="315" src="${movieAd.storeFilename}"
                                            title="YouTube video player" frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                    <tr>
                        <th scope="row" width="20%" style="vertical-align:middle;">Kind
                        </th>
                        <td width="80%">
                            <input type="text" class="form-control" name="kind" id="kind" value="${movieAd.kind}" readonly>
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
