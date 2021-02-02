<%-- 
    Document   : tourlist
    Created on : Apr 26, 2019, 11:55:16 AM
    Author     : anarx
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><c:out value="${pageheader}"></c:out></title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        </head>
        <body>
            <div class="container">
                <div class="row">
                <jsp:include page="menu.jsp"></jsp:include>
                </div>
                <h2><c:out value="${pageheader}"></c:out></h2>
                <div class='row'>
                    <div class="col-sm-12">
                        <div class="box box-header">
                            <a class="btn btn-success" href='<c:out value="${pageContext.servletContext.contextPath}/admin/user/add"></c:out>'> Create New User</a>
                        </div>
                        <div class="box box-footer">
                            <table class="table table-hover table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">First Name</th>
                                        <th scope="col">Last Name</th>
                                        <th scope="col">Username </th>
                                        <th scope="col">Status</th>

                                        <th scope="col">Operations</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="user" items="${users}">
                                    <tr>
                                        <td><c:out value="${user.getName()}"></c:out></td>
                                        <td><c:out value="${user.getSurname()}"></c:out></td>
                                        <td><c:out value="${user.getUsername()}"></c:out></td>
                                            <td>
                                            <c:choose>
                                                <c:when test="${user.getStatus()=='ADMIN'}">

                                                    <div class="bg-success text-white">
                                                        <b> <c:out value="${user.getStatus()}"></c:out></b>
                                                        </div>
                                                </c:when>
                                                <c:when test="${user.getStatus()=='USER'}">

                                                    <div class="p-3 mb-2 bg-primary text-white">
                                                        <b> <c:out value="${user.getStatus()}"></c:out></b>
                                                        </div>
                                                </c:when>
                                            </c:choose>


                                        </td>
                                        <td>      
                                            <a href='<c:out value="${pageContext.servletContext.contextPath}/admin/user/update?userid=${user.getId()}"></c:out>' class="btn btn-primary">Update</a>

                                                <a href='<c:out value="${pageContext.servletContext.contextPath}/admin/user/delete?userid=${user.getId()}"></c:out>' 
                                                   class="btn btn-danger"
                                                   onclick="return confirm('Are you sure?');">Delete</a>

                                            </td>

                                        </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div> 
                </div>
            </div>

        </div>

    </body>
</html>
