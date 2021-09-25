<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sprfrm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!--https://blackrockdigital.github.io/startbootstrap-sb-admin-2/index.html-->


<!DOCTYPE html>
<html >

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


<form:form method="POST" modelAttribute="userForm" class="form-signin" action="${pageContext.request.contextPath}/admin/user/save">
    <%--<h2 class="form-signin-heading">Yeni hesabin yaradılması</h2>--%>

    <spring:bind path="fullname">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="fullname" class="form-control" placeholder="Ad Soyad"
                        autofocus="true"></form:input>
            <form:errors path="fullname"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="id">
    <form:hidden  path="id" ></form:hidden>
    </spring:bind>

    <spring:bind path="username">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="username" class="form-control" placeholder="Username"
                        autofocus="true"></form:input>
            <form:errors path="username"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="email">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="email" path="email" class="form-control" placeholder="Email"
                        autofocus="true"></form:input>
            <form:errors path="email"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="phone">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="phone" class="form-control" placeholder="Phone"
                        autofocus="true"></form:input>
            <form:errors path="phone"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="password">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
            <form:errors path="password"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="passwordConfirm">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="password" path="passwordConfirm" class="form-control"
                        placeholder="Confirm your password"></form:input>
            <form:errors path="passwordConfirm"></form:errors>
        </div>
    </spring:bind>

    <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
</form:form>



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


<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/resources/admin/js/sb-admin-2.min.js"></script>


</body>

</html>
