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

    <c:import url="/WEB-INF/views/admin/main/header.jsp" />

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <c:import url="/WEB-INF/views/admin/main/nav.jsp" />
        <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h4 class="m-0 font-weight-bold text-primary"><a href="/admin/reviews"><i class="fas fa-leaf"> Review DataTables</i></a>
                                <button type="submit" class="btn btn-primary float-right" onclick="location.href='/admin/reviews/add'">추가</button>
                            </h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th width="10%">ID</th>
                                            <th width="20%">Member_id</th>
                                            <th width="20%">Title</th>
                                            <th width="40%">Content</th>
                                            <th width="10%">View</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th width="10%">ID</th>
                                            <th width="20%">Member_id</th>
                                            <th width="20%">Title</th>
                                            <th width="40%">Content</th>
                                            <th width="10%">View</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach var="review" items="${reviews}">
                                        <tr>
                                            <td><a href="/admin/reviews/${review.id}">${review.id}</a></td>
                                            <td>${review.memberId}</td>
                                            <td>${review.title}</td>
                                            <td>${review.content}</td>
                                            <td>${review.view}</td>
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
            <c:import url="/WEB-INF/views/admin/main/footer.jsp" />

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>