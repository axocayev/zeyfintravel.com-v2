<%--
    Document   : services
    Created on : Apr 16, 2019, 7:00:20 PM
    Author     : anarx
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>


<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.zeyfintravel.i18n.text" />

<!DOCTYPE html>
<html  lang="${language}" style="display: block;">
    <head>

        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-140322044-1');
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <meta name="author" content="zeyfintravel">
        <meta name="description" content="ucuzturlar">
        <meta name="description" content="erkenrezervasiya">
        <meta name="description" content="ucuzbiletler">
        <meta name="description" content="endirimliturlar">
        <meta name="description" content="turkiyeturlari">
        <meta name="description" content="antalyaturlari">
        <meta name="description" content="avropaturu">
        <meta name="description" content="viza">
        <meta name="description" content="sengenvizasi">
        <meta name="description" content="almaniyaviza">
        <meta name="description" content="bodrumturu">
        <meta name="description" content="turkiye turlari">
        <meta name="description" content="endirimli biletler">
        <meta name="description" content="endirimli turlar">
        <meta name="keywords" content="daxili turlar">
        <meta name="keywords" content="xarici turlar">
        <meta name="keywords" content="domestic tours">
        <meta name="keywords" content="international tours">
        <!-- meta character set -->

        <!-- Site Title -->
        <title>Contact</title>
        <jsp:include page="../../../resources/static/cssres.jsp"></jsp:include>



        </head>


        <body data-gr-c-s-loaded="true" style="display: block;">


            <header id="header" >
            <jsp:include page="navbar.jsp"></jsp:include>
            </header><!-- #header -->

            <!-- start banner Area -->
            <section class="relative about-banner">
                <div class="overlay overlay-bg"></div>
                <div class="container">
                    <div class="row d-flex align-items-center justify-content-center">
                        <div class="about-content col-lg-12">
                            <h1 class="text-white">
                            ${header_msg}
                        </h1>
                        <p class="text-white link-nav"><a href="index.jsp"><fmt:message key="navbar.home" /> </a>
                            <span class="fa fa-arrow-right"></span>  <a href="#"> ${header_msg}</a></p>
                    </div>
                </div>
            </div>
        </section >
        <!-- End banner Area -->

        <c:set var="count" value="1"></c:set>




        <c:forEach var="tour" items="${tours}">

            <c:if test="${count==1}">
                <section class="insurence-one-area section-gap">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 insurence-left">
                                <img class="img-fluid img-one"
                                     src="<c:out value="${pageContext.servletContext.contextPath}/files/${tour.getImg()}"></c:out>"

                                         alt="">
                                </div>

                                <div class="col-lg-6 insurence-right">
                                    <h1><c:out value="${tour.getName()}"></c:out></h1>

                                    <div class="list-wrap">
                                    <c:out value="${tour.getContent()}" escapeXml=""></c:out>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
        </c:if>

        <c:if test="${count%2==1 && count!=1  }">
            <section class="insurence-one-area pb-120">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 insurence-left">
                            <img class="img-fluid img-one"
                                 src="<c:out value="${pageContext.servletContext.contextPath}/files/${tour.getImg()}"></c:out>"

                                     alt="">
                            </div>

                            <div class="col-lg-6 insurence-right">
                                <h1><c:out value="${tour.getName()}"></c:out></h1>

                                <div class="list-wrap">
                                <c:out value="${tour.getContent()}" escapeXml=""></c:out>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
    </c:if>


    <c:if test="${count%2==0}">
        <section class="insurence-one-area pb-120">
            <div class="container">
                <div class="row align-items-center">



                    <div class="col-lg-6 insurence-right">
                        <h1><c:out value="${tour.getName()}"></c:out></h1>

                            <div class="list-wrap">
                            <c:out value="${tour.getContent()}" escapeXml=""></c:out>
                            </div>
                        </div>
                        <div class="col-lg-6 insurence-left">
                            <img class="img-fluid img-one"
                                 src="<c:out value="${pageContext.servletContext.contextPath}/files/${tour.getImg()}"></c:out>"

                                 alt="">
                        </div>
                    </div>
                </div>
            </section>
    </c:if>
    <c:set var="count" value="${count + 1}" scope="page"></c:set>



</c:forEach>



<!-- start footer Area -->
<footer class="footer-area section-gap">
    <jsp:include page="footer.jsp"></jsp:include>
    </footer>
    <!-- End footer Area -->
    <jsp:include page="jsres.jsp"></jsp:include>


</body>



</html>
