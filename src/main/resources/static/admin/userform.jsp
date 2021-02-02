<%-- 
    Document   : userform
    Created on : May 7, 2019, 3:17:09 AM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title><c:out value="${pageheader}"></c:out></title>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <jsp:include page="menu.jsp"></jsp:include>
                </div>
                <div class="row">


                    <form class="form-horizontal" 

                          action='<c:out value="${pageContext.servletContext.contextPath}/admin/user/add"></c:out>' 


                          method="POST" 
                      
                          accept-charset="UTF-8">
                        <div class="row">
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5">

                            <c:if test="${user.getId()!=0  ||user.getId()!=null }">

                                <div class="form-group">
                                   
                                    <input type="hidden" class="form-control  col-xs-3" 
                                           id="id" name="id" value="${user.getId()}" readonly="">
                                </div>
                            </c:if>
                            <div class="form-group">
                                <label for="fname">First Name:</label>
                                <input type="text" class="form-control  col-xs-3" 
                                       id="fname" name="firstname" value="${user.getName()}">
                            </div>


                            <div class="form-group">
                                <label for="sname">Last Name</label>
                                <input type="text" class="form-control  col-xs-3"
                                       id="sname" name="surname" value="${user.getSurname()}">
                            </div>



                            <div class="form-group">
                                <label for="status">User Type</label>
                                <select name="status" id ="tip" class="form-control">
                                    <option value="ADMIN">Admin</option>
                                    <option value="USER">User</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control  col-xs-3"
                                       id="username" name="username" value="${user.getUsername()}">
                            </div>
                              <div class="form-group">
                                <label for="password">Password</label>
                                <input type="text" class="form-control  col-xs-3"
                                       id="password" name="password"  >
                            </div>
                        </div>


                        <div class="col-sm-6">

                        </div>
                    </div>

                 

                    <div class="row">
                        <div class="col-sm-1">
                        </div>
                        <div class="col-sm-10">
                            <div class="form-group">

                                <input class="btn btn-success col-xs-3" 
                                       type="submit" value="${action}" >
                            </div>

                        </div>
                        <div class="col-sm-1">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
