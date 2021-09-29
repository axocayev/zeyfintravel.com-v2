<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



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
        </div>
        <nav id="nav-menu-container">
            <ul class="nav-menu sf-js-enabled sf-arrows" style="touch-action: pan-y;">
                <li><a href="<c:out value="${pageContext.request.contextPath}"/>/" class="menu-active"><fmt:message key="navbar.home" /></a></li>
                <li><a href="<c:out value="${pageContext.request.contextPath}"/>/about"><fmt:message key="navbar.about" /></a></li>
                <li class="menu-has-children"><a href="" class="sf-with-ul"><fmt:message key="navbar.tours" /></a>
                    <ul style="display: none;">
                   <%--
                     <li><a href="<c:out value="${pageContext.request.contextPath}"/>/tours/domestic"><fmt:message key="navbar.tours.domestic" /></a></li>
                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/tours/international"><fmt:message key="navbar.tours.international" /></a></li>
                  --%>
                       <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"><fmt:message key="navbar.tours.domestic" /></a></li>
                       <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf><fmt:message key="navbar.tours.international" /></a></li>

                    </ul>
                </li>

                <li class="menu-has-children"><a href="" class="sf-with-ul"><fmt:message key="navbar.services" /></a>
                    <ul style="display: none;">



                            <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"> <fmt:message key="navbar.services.accomodation" /></a></li>
                            <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"><fmt:message key="navbar.services.transfer" /></a></li>
                            <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"><fmt:message key="navbar.services.tours" /></a></li>

                            <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"><fmt:message key="navbar.services.event" /></a></li>
                            <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"><fmt:message key="navbar.services.visa" /></a></li>
                            <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"><fmt:message key="navbar.services.insurance" /></a></li>

                            <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"><fmt:message key="navbar.services.tourguide" /></a></li>
                            <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"><fmt:message key="navbar.services.ticket" /></a></li>
                            <li><a href="${pageContext.request.contextPath}/resources/doc/Zeyfin_Travel_brosur_3.pdf"><fmt:message key="navbar.services.catalog" /></a></li>

                        <%--
                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/accomodation"><fmt:message key="navbar.services.accomodation" /></a></li>
                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/transfers"><fmt:message key="navbar.services.transfer" /></a></li>
                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/tours"><fmt:message key="navbar.services.tours" /></a></li>

                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/events"><fmt:message key="navbar.services.event" /></a></li>
                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/visa"><fmt:message key="navbar.services.visa" /></a></li>
                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/insurance"><fmt:message key="navbar.services.insurance" /></a></li>

                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/tourguide"><fmt:message key="navbar.services.tourguide" /></a></li>
                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/ticket"><fmt:message key="navbar.services.ticket" /></a></li>
                        <li><a href="<c:out value="${pageContext.request.contextPath}"/>/services/catalog"><fmt:message key="navbar.services.catalog" /></a></li>
--%>


                    </ul>
                </li>

                <li><a href="<c:out value="${pageContext.request.contextPath}"/>/contact"><fmt:message key="navbar.contact" /></a></li>
            </ul>
        </nav><!-- #nav-menu-container -->
    </div>

    <!--<div id="mobile-body-overly"></div>-->

</div>
