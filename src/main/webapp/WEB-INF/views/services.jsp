<%--
    Document   : services
    Created on : Apr 16, 2019, 7:00:20 PM
    Author     : anarx
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" style="display: block;">
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
        <!-- Favicon-->
        <!--<link rel="shortcut icon" href="https://colorlib.com/preview/theme/travel/img/fav.png">-->
        <!-- Author Meta -->
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
        <jsp:include page="cssres.jsp"></jsp:include>
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
                        <p class="text-white link-nav"><a href="index.jsp">Home </a>
                            <span class="fa fa-arrow-right"></span>  <a href="#"> ${header_msg}</a></p>
                    </div>
                </div>
            </div>
        </section >
        <!-- End banner Area -->



        <!-- Start contact-page Area -->
        <section class="contact-page-area section-gap">
            <div class="container">


                <div class="row">
                    <div class="col-lg-4 d-flex flex-column address-wrap">
                        <div class="single-contact-address d-flex flex-row">
                            <div class="icon">
                                <i class="fa fa-envelope fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="contact-details">
                                <h5><c:out value="${header_msg}"/></h5>
                                <p>
                                    <c:out value="${msg_content}"/>
                                </p>
                            </div>
                        </div>


                    </div>
                    <div class="col-lg-8">
                        <form class="form-area contact-form text-right" id="myFormServices" action="mailsender.jsp" method="POST">
                            <div class="row">
                                <div class="col-lg-6 form-group">
                                    <input type="text" name="name" placeholder="Enter your name"
                                           onfocus="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; & #39;"
                                           onblur="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; Enter your name & #39;"
                                           class="common-input mb-20 form-control" required="" />

                                    <input type="email" name="email" placeholder="Enter email address"
                                           pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$"
                                           onfocus="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; & #39;"
                                           onblur="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; Enter email address & #39;"
                                           class="common-input mb-20 form-control" required="" />

                                    <input type="text" name="subject" placeholder="Enter subject"
                                           onfocus="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; & #39;"
                                           onblur="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; Enter subject & #39;"
                                           class="common-input mb-20 form-control"
                                           readonly="" value="<c:out value="${header_msg}"/>"/>
                                </div>
                                <div class="col-lg-6 form-group">
                                    <textarea class="common-textarea form-control" name="message" placeholder="Enter Messege"
                                              onfocus="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; & #39;"
                                              onblur="if (!window.__cfRLUnblockHandlers) return false; this.placeholder = & #39; Enter Messege & #39;"
                                              required=""></textarea>
                                </div>
                                <div class="col-lg-12">
                                    <div class="alert-msg" style="text-align: left;"></div>
                                    <button class="genric-btn primary" style="float: right;">Send Message</button>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- End contact-page Area -->

        <!-- start footer Area -->
        <footer class="footer-area section-gap">
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        <!-- End footer Area -->

       <jsp:include page="jsres.jsp"></jsp:include>




</body>



</html>
