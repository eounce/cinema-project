<%--
  Created by IntelliJ IDEA.
  User: 201712035@office.induk.ac.kr
  Date: 2021-06-30
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2021</span>
        </div>
    </div>
</footer>
<!-- End of Footer -->


<!-- Bootstrap core JavaScript-->
<%--<script src="/csmovie/admin/vendor/jquery/jquery.min.js"></script>--%>
<%--<script src="/csmovie/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<script src="/admin/vendor/jquery/jquery.min.js"></script>
<script src="/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<%--<script src="/csmovie/admin/vendor/jquery-easing/jquery.easing.min.js"></script>--%>
<script src="/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<%--<script src="/csmovie/admin/js/sb-admin-2.min.js"></script>--%>
<script src="/admin/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<%--<script src="/csmovie/admin/vendor/chart.js/Chart.min.js"></script>--%>
<script src="/admin/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<%--<script src="/csmovie/admin/js/demo/chart-area-demo.js"></script>--%>
<%--<script src="/csmovie/admin/js/demo/chart-pie-demo.js"></script>--%>
<script src="/admin/js/demo/chart-area-demo.js"></script>
<script src="/admin/js/demo/chart-pie-demo.js"></script>

<!-- Date Picker -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.kr.min.js"></script>

<!-- select2 css cdn -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.min.css" rel="stylesheet" />
<!-- select2 javascript cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>

<script>
    $('#datePicker').datepicker({
        format : "yyyy-mm-dd",
        language : "kr",
        todayHighlight : true
    });

    $(document).ready(function () {
        $("#select2").select2({
            theme: "bootstrap",
            width: null
        });
    });
</script>
