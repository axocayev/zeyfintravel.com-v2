<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sprfrm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


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

    <script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
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
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->

            <jsp:include page="topbar.jsp"></jsp:include>



            <div class="container-fluid">

                <!-- Page Heading -->

                <div class="row">

                    <div class="col-lg-12 col-sm-6">

                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">${title}</h6>
                            </div>
                            <div class="card-body">


                                <sprfrm:form role="form" action="${pageContext.request.contextPath}/admin/project/save"
                                             method="POST"         modelAttribute="project" enctype="multipart/form-data">
                                    <input type="hidden"  name="${_csrf.parameterName}" value="${_csrf.token}"/>


                                        <p>
                                            <sprfrm:hidden path="id" id="id"
                                                           class="form-control"/>
                                        </p>
                                        <p>
                                          Project name-EN  <sprfrm:input path="projectName" id="projectName"
                                                          class="form-control" placeholder="Project Name EN"/>
                                        </p>


                                    <p>
                                        Content-EN  <sprfrm:textarea path="content" id='editorEN' htmlEscape=""></sprfrm:textarea>
                                    </p>

                                    <p>
                                        Project name-AZ  <sprfrm:input path="projectNameAz" id="projectName"
                                                                       class="form-control" placeholder="Project Name AZ"/>
                                    </p>

                                    <p>
                                        Content-AZ  <sprfrm:textarea path="contentAz" id='editorAZ' htmlEscape=""></sprfrm:textarea>
                                    </p>

                                    <p>
                                         <sprfrm:input path="client" id="client"
                                                      class="form-control" placeholder="Client"/>
                                    </p>

                                    <p>
                                        <sprfrm:input path="date" id="date"  type="date"
                                                      class="form-control" placeholder="Date"/>
                                    </p>
                                    <p>
                                        <sprfrm:input path="website" id="website"
                                                      class="form-control" placeholder="Website"/>
                                    </p>
                                        <p>

                                            <sprfrm:select path="category"   class="form-control">
                                                <sprfrm:option value="COMPLETED">Completed</sprfrm:option>
                                               <sprfrm:option value="ONGOING">Ongoing</sprfrm:option>
                                            </sprfrm:select>

                                        </p>


                                        <p>
                                            Active: <sprfrm:radiobutton path="isActive" id="isActive1"    value="1"/>

                                            Deactive: <sprfrm:radiobutton path="isActive" id="isActive0"  value="0"/>
                                        </p>







                                    <div class="container-fluid">
                                        <input type="submit" class="btn btn-success w-25 p-2 " value="${button}">


                                    </div>
                                </sprfrm:form>


                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class=" sticky-footer bg-white">
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

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>


<script>
    CKEDITOR.replace('editorEN');
    CKEDITOR.replace('editorAZ');
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
