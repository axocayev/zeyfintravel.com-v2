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
                                    <table class="table table-bordered table-striped col-lg-12 col-sm-6 ">

                                        <tr>
                                            <th>ID</th>
                                            <th>NAME</th>
                                            <th>CONTENT</th>

                                            <th>IS-ACTIVE</th>

                                            <th>ACTIONS</th>

                                        </tr>

                                        <tr>
                                            <td><c:out value="${scope.getId()}"/></td>

                                            <td><c:out value="${scope.getScopeName()}"/></td>
                                            <td><c:out value="${scope.getContent()}"/></td>


                                            <td><c:out value="${scope.getIsActive()}"/></td>


                                            <td>
                                                <a href="${pageContext.request.contextPath}/admin/scope/edit/${scope.getId()}"
                                                   class="btn btn-warning">
                                                    <i class="fas fa-edit"></i>Edit
                                                </a>


                                                <button onclick="deletProject(${scope.getId()})"
                                                        class="btn btn-danger"/>
                                                <i class="fas fa-trash"></i>Delete</button>



                                            </td>
                                        </tr>


                                    </table>
                                </div>                                <!-- Circle Buttons (Default) -->


                            </div>

                        </div>
                        <div class="card shadow mb-4">
                           <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">${title}</h6>
                            </div>
                            <div class="card-body">
                                   <div class="container-fluid">
                                    <button
                                       class="btn btn-success w-25 p-2 mb-2"
                                         data-toggle="modal" data-target="#exampleModalLong">
                                        <i class="fas fa-plus"></i> Add Image
                                    </button>
                                </div>

                          <div class="container-fluid">
                            <div class="row">
                                       <c:forEach var="image" items="${images}">
                                         <div class="col-lg">
                                           <img class="img-thumbnail"
                                            src="${pageContext.request.contextPath}/img/scope/show/${image.getImageName()}"/>
                                             <button onclick="deletProjectImage(${image.getId()})" class="btn btn-danger"/>
                                                    <i class="fas fa-trash" ></i>Delete</button>
                                          </div>

                                      </c:forEach>
                           </div>
                        </div>
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
<form id="deleteForm" method="POST" action="${pageContext.request.contextPath}/admin/scope/delete">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="hidden" id="pid" name="pid"/>
</form>

<form id="deleteFormImage" method="POST" action="${pageContext.request.contextPath}/admin/scope/image/delete">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="hidden" id="imageId" name="imageId"  />
    <input type="hidden" id="id" name="id" value="${scope.getId()}" />
</form>



<!-- Modal -->
<!-- Modal -->
 <sprfrm:form role="form" action="${pageContext.request.contextPath}/admin/scope/image/save"
       method="post"
       enctype="multipart/form-data">
<div class="modal fade"
     id="exampleModalLong"
     tabindex="-1"
     role="dialog"
     aria-labelledby="exampleModalLongTitle"
     aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">${title}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <input type="hidden"  name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <input type="hidden" name="pid" value="${scope.getId()}">
          <div class="form-group">
            <label for="exampleFormControlFile1">Select image</label>
            <input type="file" name="image" class="form-control-file" id="exampleFormControlFile1">
          </div>
          <input type="submit" class="btn btn-success" value="Add">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

      </div>
    </div>
  </div>
</div>
 </sprfrm:form>
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

    function deletProjectImage(id) {
        console.log(id);
        if (confirm("Are you sure?")) {
            document.getElementById("imageId").value = id;
            document.getElementById("deleteFormImage").submit();
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
