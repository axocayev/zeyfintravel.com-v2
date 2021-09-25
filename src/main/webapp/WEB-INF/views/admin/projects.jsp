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
                                    <a href="${pageContext.request.contextPath}/admin/project/add"
                                       class="btn btn-success w-25 p-2 mb-2">
                                        <i class="fas fa-plus"></i> Add
                                    </a>
                                </div>
                                <div class="container-fluid">
                                    <table class="table table-bordered table-striped col-lg-12 col-sm-6 ">

                                        <tr>
                                            <th>ID</th>
                                            <th>NAME-EN</th>
                                            <th>CONTENT-EN</th>
                                            <th>NAME-AZ</th>
                                            <th>CONTENT-AZ</th>
                                            <th>CLIENT</th>
                                            <th>DATE</th>
                                            <th>IS-ACTIVE</th>
                                            <th>CATEGORY</th>
                                            <th>ACTIONS</th>

                                        </tr>
                                        <c:forEach var="project" items="${projects}">
                                            <tr>
                                                <td><c:out value="${project.getId()}"/></td>

                                                <td><c:out value="${project.getProjectName()}"/></td>
                                                <td><c:out value="${project.getContent()}"/></td>
                                                <td><c:out value="${project.getProjectNameAz()}"/></td>
                                                <td><c:out value="${project.getContentAz()}"/></td>
                                                <td><c:out value="${project.getClient()}"/></td>
                                                <td><c:out value="${project.getDate()}"/></td>


                                                <td><c:out value="${project.getIsActive()}"/></td>
                                                <td>  ${project.getCategory()} </td>


                                                <td>
                                                    <a href="${pageContext.request.contextPath}/admin/project/edit/${project.getId()}"
                                                       class="btn btn-warning">
                                                        <i class="fas fa-edit" ></i>Edit
                                                    </a>


                                                    <button onclick="deletProject(${project.getId()})" class="btn btn-danger"/>
                                                    <i class="fas fa-trash" ></i>Delete</button>

                                                    <a class="btn btn-info"
                                                       href="${pageContext.request.contextPath}/admin/project/${project.getId()}/images">
                                                        <i class="fas fa-image" ></i>Images
                                                    </a>

                                                </td>
                                            </tr>

                                        </c:forEach>
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
<form id="deleteForm" method="POST" action="${pageContext.request.contextPath}/admin/project/delete">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="hidden" id="pid" name="pid"/>
</form>

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->


<script>
    function deletProject(id) {
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
