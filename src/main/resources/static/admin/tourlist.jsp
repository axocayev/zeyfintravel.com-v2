<%-- 
    Document   : tourlist
    Created on : Apr 26, 2019, 11:55:16 AM
    Author     : anarx
--%>

<%@page import="com.zeyfintravel.model.UserStatus"%>
<%@page import="com.zeyfintravel.model.User"%>
<%@page import="com.zeyfintravel.dao.UserDAO"%>
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
            <jsp:include page="menu.jsp"></jsp:include>

                <h2><c:out value="${pageheader}"></c:out></h2>

                <div class='row'>

                    <div class='col-sm-12'>
                        <div class="box box-header">
                            <a class="btn btn-success" href='<c:out value="${pageContext.servletContext.contextPath}/admin/tour/add"></c:out>'> Create New Tour</a>
                        </div>
                        <div class="box box-footer">
                            <table class="table table-hover table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">Tour name</th>
                                        <% if ("ADMIN".equals((String) request.getSession().getAttribute("status"))) {
                                        %>
                                    <th scope="col">Change Status</th>
                                        <% }%>



                                    <th scope="col">Language</th>
                                    <th scope="col">Tour Type</th>
                                    <th scope="col">Created Date</th>
                                    <th scope="col">Maker</th>
                                    <th scope="col">Operations</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="tour" items="${tours}">
                                    <tr>
                <!--                        <th ><c:out value="${tour.getId()}"></c:out></th>-->
                                        <td><c:out value="${tour.getName()}"></c:out></td>

                                        <% if ("ADMIN".equals((String) request.getSession().getAttribute("status"))) {
                                        %>

                                        <td>
                                            <c:choose>
                                                <c:when test="${tour.getStatus()==0}">

                                                    <a class="btn btn-success" 
                                                       href='<c:out value="${pageContext.servletContext.contextPath}/admin/tour/status?id=${tour.getId()}&status=1"></c:out>'>Activate </a>

                                                </c:when>
                                                <c:when test="${tour.getStatus()==1}">

                                                    <a class="btn btn-danger" href='<c:out value="${pageContext.servletContext.contextPath}/admin/tour/status?id=${tour.getId()}&status=0"></c:out>' >Deactivate </a>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                        <% }%>

                                        <td><c:out value="${tour.getLang()}"></c:out></td>

                                            <td><c:out value="${tour.getCdate()}"></c:out></td>

                                            <td>
                                            <c:choose>
                                                <c:when test="${tour.getType()=='D'}">

                                                    <div class="text ">Domestic </div>

                                                </c:when>
                                                <c:when test="${tour.getType()=='I'}">

                                                    <div class="text ">International </div>
                                                </c:when>
                                            </c:choose>
                                        </td>


                                        <td><c:out value="${tour.getUser().getUsername()}"></c:out></td>
                                        <td> <a href='<c:out value="${pageContext.servletContext.contextPath}/admin/tour/update?id=${tour.getId()}"></c:out>' class="btn btn-success">Update </a>   
                                                <a href='<c:out value="${pageContext.servletContext.contextPath}/admin/tour/delete?id=${tour.getId()}"></c:out>'
                                                   class="btn btn-danger"  onclick="return confirm('Are you sure?');">Delete </a> 
                         

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
