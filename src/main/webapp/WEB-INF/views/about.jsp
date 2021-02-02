<%--
    Document   : about
    Created on : Apr 16, 2019, 9:18:50 AM
    Author     : akhojayev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!DOCTYPE html>

<html  style="display: block;">
    <head>
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-140322044-1"></script>
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
        <!-- Favicon-->
        <!--<link rel="shortcut icon" href="https://colorlib.com/preview/theme/travel/img/fav.png">-->
        <!-- Author Meta -->
        <meta name="author" content="zeyfintravel">
        <!-- Meta Description -->
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
        <title>About</title>

        <jsp:include page="../../../resources/static/cssres.jsp"></jsp:include>
        </head>
        <body style="display: block;">
            <header id="header" class="">

            <jsp:include page="navbar.jsp"></jsp:include>
            </header><!-- #header -->


            <!-- start banner Area -->
            <section class="about-banner relative">
                <div class="overlay overlay-bg"></div>
                <div class="container">
                    <div class="row d-flex align-items-center justify-content-center">
                        <div class="about-content col-lg-12">
                            <h1 class="text-white">
                                About Us
                            </h1>
                            <p class="text-white link-nav"><a href="#">Home </a>  <span class="fa fa-home"></span>
                                <a href="#"> About Us</a></p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End banner Area -->

            <!-- Start about-info Area -->
            <section class="about-info-area section-gap">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 info-left">
                            <img class="img-fluid" src="../../../resources/static/img/info-img.jpg" alt="">
                        </div>
                        <div class="col-lg-6 info-right">

                            <h1>Who We Are?</h1>
                            <p>
                                Zeyfin Travel was established in 2018 as company and it is part of Zeyfin Group. From our establishment we started to grow as one of most popular, strong travel companies in Azerbaijan and that is why we have deep relations and corporate rates with hotel, restaurants and other impotant places. Quality of company depends on its service, relations and we rely on our quality. Although we are young company we have acces to domestic and foreign services and improwe day by day.
                            </p>
                            <h1>SERVICES:</h1>
                            <p>
                                Airline Tickets<br>
                                Accommodation<br>
                                Visa Support<br>
                                Transfer<br>
                                Tours<br>
                                Event Organization<br>
                                Guide<br>
                            <h5>TRAVEL INSURANCE </h5>
                            <hr>
                            <a href="../../../resources/static/doc/Zeyfin_Travel_brosur_3.pdf">Full Catalog</a>

                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End about-info Area -->


            <!-- End price Area -->



            <!-- start footer Area -->
            <footer class="footer-area section-gap">
            <jsp:include page="footer.jsp"></jsp:include>

            </footer>
            <!-- End footer Area -->
        <jsp:include page="jsres.jsp"></jsp:include>

    </body>
</html>
