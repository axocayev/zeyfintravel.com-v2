<%@page import="com.zeyfintravel.model.UserStatus"%>
<%@page import="com.zeyfintravel.model.User"%>
<%@page import="com.zeyfintravel.dao.UserDAO"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">ZeyfinTravel</a>
        </div>
        <ul class="nav navbar-nav">
            <%  if ("ADMIN".equals((String) request.getSession().getAttribute("status"))) {
            %>
            <li class=""><a href='<c:out value="${pageContext.servletContext.contextPath}/admin/user/list" ></c:out>'>Users</a></li>
                <% }%>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tours <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href='<c:out value="${pageContext.servletContext.contextPath}/admin/tour/domestic" ></c:out>'> Domestic Tours</a></li>
                    <li><a href='<c:out value="${pageContext.servletContext.contextPath}/admin/tour/international"></c:out>'> Internationl Tours</a></li>     
                    </ul>
                </li>
                <li><a href="#">Email</a></li>

                <li><a href='<c:out value="${pageContext.servletContext.contextPath}/admin/logoff"></c:out>'>Logoff</a></li>
        </ul>
         <div class="navbar-header">
            <a class="navbar-text" href="#"><% out.print((String) request.getSession().getAttribute("login"));%></a>
        </div>
    </div>
</nav>


