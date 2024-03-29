<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sprfrm" uri="http://www.springframework.org/tags/form" %>


<!--https://blackrockdigital.github.io/startbootstrap-sb-admin-2/index.html-->


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${title} </title>


    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/admin/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
    <style>
        .modal-header, h4, .close {
            background-color: #5cb85c;
            color: white !important;
            text-align: center;
            font-size: 30px;
        }

        .modal-footer {
            background-color: #f9f9f9;
        }
    </style>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">


    <!-- Sidebar -->
    <jsp:include page="navbar.jsp"/>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <jsp:include page="topbar.jsp"></jsp:include>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->

                <div class="row">

                    <div class="col-lg-12 col-sm-6">

                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">${title}</h6>
                            </div>
                            <div class="card-body">
                                <div class="container-fluid">
                                    <a href="${pageContext.request.contextPath}/admin/user/add"
                                       class="btn btn-success ">
                                        <i class="fas fa-check"></i> Add
                                    </a>
                                </div>
                                <div class="container-fluid">
                                    <table class="table table-bordered table-striped col-lg-12 col-sm-6 ">


                                        <thead>

                                        <th scope="row">Full name</th>
                                        <th scope="row">Username</th>

                                        <th scope="row">Email</th>
                                        <th scope="row">Phone</th>

                                        <th scope="row">ACTION</th>


                                        </thead>
                                        <tbody>
                                        <c:forEach items="${users}" var="user">
                                            <tr>


                                                <td><c:out value="${user.getFullName()}"/></td>
                                                <td><c:out value="${user.getUsername()}"/></td>

                                                <td><c:out value="${user.getEmail()}"/></td>
                                                <td><c:out value="${user.getPhone()}"/></td>


                                                <td>
                                                    <spring:url value="${pageContext.request.contextPath}/admin/user/edit/${user.getId()}"
                                                                var="updateURL"/>

                                                    <a class="btn btn-primary" href="${updateURL }"
                                                       role="button">Update</a>

                                                    <spring:url value="${pageContext.request.contextPath}/admin/user/delete/${user.getId()}"
                                                                var="deleteURL"/>

                                                    <a class="btn btn-danger" href="${deleteURL}" role="button"
                                                       onclick="return confirm('Are you sure?');">Delete</a>

                                                </td>
                                            </tr>

                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>                                <!-- Circle Buttons (Default) -->


                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Your Website 2019</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->
<form id="deleteForm" method="POST" action="${pageContext.request.contextPath}/admin/product/delete">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="hidden" id="pid" name="pid"/>
</form>

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->


<script>
    function deletProduct(id) {
        console.log(id);
        if (confirm("Are you sure?")) {
            document.getElementById("pid").value = id;
            document.getElementById("deleteForm").submit();
        }
    }
</script>


<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/resources/admin/js/sb-admin-2.min.js"></script>


</body>

</html>


