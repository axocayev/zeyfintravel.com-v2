<%--
    Document   : index
    Created on : Apr 16, 2019, 9:09:42 AM
    Author     : akhojayev
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="lcl" value="${pageContext.response.locale}"/>


<!DOCTYPE html>



<html  lang="${language}" style="display: block;">

    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-140322044-1');
    </script>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title><spring:message  code="navbar.home"/></title>

        <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/css/linearicons.css"/>">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>">
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">-->

        <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/css/magnific-popup.css"/>">
        <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/css/jquery-ui.css"/>">
        <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/css/nice-select.css"/>">
        <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/css/animate.min.css"/>">
        <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/css/owl.carousel.css"/>">
        <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/css/main.css"/>">
        </head>



        <body data-gr-c-s-loaded="true" style="display: block;">
            <header id="header">


                <div class="header-top">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 col-sm-6 col-6 header-top-left">

                            </div>
                            <div class="col-lg-6 col-sm-6 col-6 header-top-right">
                                <div class="header-social">
                                    <a href="?language=az">AZ</a>
                                    <a href="?language=en">EN</a>

                                    <a href="https://www.facebook.com/zeyfintravel/"><i class="fa fa-facebook"></i></a>
                                    <a href="https://www.instagram.com/zeyfintravel/?hl=en"><i class="fa fa-instagram"></i></a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container main-menu">
                    <button type="button" id="mobile-nav-toggle"><i class="fa fa-bars"></i></button>
                    <div class="row align-items-center justify-content-between d-flex">
                        <div id="logo">
                            <a href=""></a>
                        </div>
                        <nav id="nav-menu-container">
                            <ul class="nav-menu sf-js-enabled sf-arrows" style="touch-action: pan-y;">
                                <li><a href="<c:out value="${pageContext.request.contextPath}"/>/index.jsp" class="menu-active"><spring:message code="navbar.home" /></a></li>
                                <li><a href="<c:out value="${pageContext.request.contextPath}"/>/about.jsp"><spring:message code="navbar.about" /></a></li>
                                <li class="menu-has-children"><a href="" class="sf-with-ul"><spring:message code="navbar.tours" /></a>
                                    <ul style="display: none;">
                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/tours/domestic"><spring:message code="navbar.tours.domestic" /></a></li>
                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/tours/international"><spring:message code="navbar.tours.international" /></a></li>
                                    </ul>
                                </li>

                                <li class="menu-has-children"><a href="" class="sf-with-ul"><spring:message code="navbar.services" /></a>
                                    <ul style="display: none;">
                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/accomodation"><spring:message code="navbar.services.accomodation" /></a></li>
                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/transfers"><spring:message code="navbar.services.transfer" /></a></li>
                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/tours"><spring:message code="navbar.services.tours" /></a></li>

                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/events"><spring:message code="navbar.services.event" /></a></li>
                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/visa"><spring:message code="navbar.services.visa" /></a></li>
                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/insurance"><spring:message code="navbar.services.insurance" /></a></li>

                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/tourguide"><spring:message code="navbar.services.tourguide" /></a></li>
                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/ticket"><spring:message code="navbar.services.ticket" /></a></li>
                                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/catalog"><spring:message code="navbar.services.catalog" /></a></li>


                                    </ul>
                                </li>

                                <li><a href="<c:out value="${pageContext.request.contextPath}"/>/contact.jsp"><spring:message code="navbar.contact" /></a></li>
                            </ul>
                        </nav><!-- #nav-menu-container -->
                    </div>

                    <!--<div id="mobile-body-overly"></div>-->

                </div>


            </header><!-- #header -->

            <!-- start banner Area -->
            <section class="banner-area relative">
                <div class="overlay overlay-bg"></div>
                <div class="container">
                    <div class="row fullscreen align-items-center justify-content-between" style="height: 702px;">
                        <div class="col-lg-6 col-md-6 banner-left">
                            <h6 class="text-white"></h6>
                            <h2 class="text-white">Create Your Own Story</h2>
                            <p class="text-white">
                            </p>
                            <a href="../../../resources/static/doc/Zeyfin_Travel_brosur_3.pdf" class="primary-btn text-uppercase">Get Started</a>
                        </div>
                        <div class="col-lg-4 col-md-6 banner-right">


                        </div>
                    </div>
                </div>
            </section>
            <!-- End banner Area -->

            <!-- start footer Area -->
            <footer class="footer-area section-gap">

                <div class="container">

                    <div class="row">
                        <div class="col-lg-3  col-md-6 col-sm-6">
                            <div class="single-footer-widget">
                                <h6>About Agency</h6>
                                <p>
                                    Zeyfin Travel was established in 2018 as company and it is part of Zeyfin Group.
                                    From our establishment we started to grow as one of most popular,
                                    strong travel companies in Azerbaijan and that is why we have deep
                                    relations and corporate rates with hotel, restaurants and other
                                    impotant places.
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-footer-widget">
                                <h6>Navigation Links</h6>
                                <div class="row">
                                    <div class="col">
                                        <ul>
                                            <li><a href="<c:out value="${pageContext.request.contextPath}"/>/index.jsp">Home</a></li>
                                            <li><a href="<c:out value="${pageContext.request.contextPath}"/>/tours/international">Tours</a></li>
                                            <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/accomodation">Services</a></li>
                                            <li><a href="<c:out value="${pageContext.request.contextPath}"/>/about.jsp">About</a></li>
                                        </ul>
                                    </div>
                                    <div class="col">
                                        <ul>
                                            <li><a href="<c:out value="${pageContext.request.contextPath}"/>/tours/domestic">Domestic tours</a></li>
                                            <li><a href="<c:out value="${pageContext.request.contextPath}"/>/tours/international">International tours</a></li>
                                            <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/insurance">Insurance</a></li>
                                            <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/visa">Visa Support</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3  col-md-6 col-sm-6">
                            <div class="single-footer-widget">
                                <h6>Newsletter</h6>
                                <p>
                                    For business professionals caught between high OEM price and mediocre print and graphic output.
                                </p>
                                <div id="mc_embed_signup">
                                    <form target="_blank" action="" method="get" class="subscription relative" novalidate="true">
                                        <div class="input-group d-flex flex-row">
                                            <input name="EMAIL" placeholder="Email Address" onfocus="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; & #39;" onblur="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; Email Address & #39;" required="" type="email">
                                            <button class="btn bb-btn"><span class="fa fa-envelope"></span></button>
                                        </div>
                                        <div class="mt-10 info"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3  col-md-6 col-sm-6">
                            <div class="single-footer-widget mail-chimp">

                            </div>
                        </div>
                    </div>

                    <div class="row footer-bottom d-flex justify-content-between align-items-center">
                        <p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright ©
                            </script><script type="text/javascript">
                                document.write(new Date().getFullYear());</script> All rights reserved
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        <div class="col-lg-4 col-sm-12 footer-social">
                            <a href="https://www.facebook.com/zeyfintravel/"><i class="fa fa-facebook"></i></a>
                            <a href="https://www.instagram.com/zeyfintravel/?hl=en"><i class="fa fa-twitter"></i></a>

                        </div>
                    </div>
                </div>
            </footer>
            <!-- End footer Area -->

            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/jquery-2.2.4.min.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/popper.min.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/jquery-ui.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/easing.min.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/hoverIntent.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/superfish.min.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/mail-script.js"/>" type="text/javascript"></script>
            <script src="<c:out value="${pageContext.request.contextPath}/resources/js/main.js"/>" type="text/javascript"></script>
            <script src="https://ajax.cloudflare.com/cdn-cgi/scripts/a2bd7673/cloudflare-static/rocket-loader.min.js" data-cf-settings="2e8335b0dd83615425310dd9-|49" defer=""></script></body>



    </body>
</html>
