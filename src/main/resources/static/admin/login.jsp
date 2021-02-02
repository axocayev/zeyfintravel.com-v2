<%-- 
    Document   : login
    Created on : Apr 21, 2019, 3:46:12 PM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <link href="../admin/login.css"  rel="stylesheet">


        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Tabs Titles -->

                <!-- Icon -->

                <div class="fadeIn first">
                    <!--
                    <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
                
                    -->
                    <p class="text text-danger"><c:out value="${error}"></c:out></p>
                </div>

                <!-- Login Form -->
                <form action="login" method="POST">
                    <input type="text" id="login" 
                           class="fadeIn second" 
                           name="login" placeholder="login">
                    <input type="password" id="password" 
                           class="fadeIn third" name="password" 
                           placeholder="password">
                    <input type="submit" 
                           class="fadeIn fourth"
                           value="Log In">
                </form>

                <!-- Remind Passowrd -->
                <div id="formFooter">
                    <a class="underlineHover" href="#">Forgot Password?</a>
                </div>

            </div>
        </div>
    </body>
</html>
