<%-- 
    Document   : Header
    Created on : Jan 18, 2024, 12:23:08 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>HappyJob</title>

        <!-- Meta -->
        <meta name="description" content="Marketplace for Bootstrap Admin Dashboards" />
        <meta name="author" content="Bootstrap Gallery" />
        <meta property="og:title" content="Admin Templates - Dashboard Templates | Bootstrap Gallery">
        <meta property="og:description" content="Marketplace for Bootstrap Admin Dashboards">
        <meta property="og:type" content="Website">
        <meta property="og:site_name" content="Bootstrap Gallery">
        <!--        <link rel="shortcut icon" href="assets/images/favicon.svg" />-->

        <!-- *************
                            ************ CSS Files *************
                    ************* -->
        <!-- Icomoon Font Icons css -->
        <link rel="stylesheet" href="../admin_dashboard/assets/fonts/icomoon/style.css" />

        <!-- Main CSS -->
        <link rel="stylesheet" href="../admin_dashboard/assets/css/main.min.css" />

        <!-- *************
                            ************ Vendor Css Files *************
                    ************ -->

        <!-- Scrollbar CSS -->
        <link rel="stylesheet" href="../admin_dashboard/assets/vendor/overlay-scroll/OverlayScrollbars.min.css" />
    </head>

    <body>
        <!-- Page wrapper start -->
        <div class="page-wrapper">

            <!-- App container starts -->
            <div class="app-container">

                <!-- App header starts -->
                <div class="app-header d-flex align-items-center">

                    <!-- Container starts -->
                    <div class="container">

                        <!-- Row starts -->
                        <div class="row">
                            <div class="col-md-3 col-2">

                                <!-- App brand starts -->
                                <div class="app-brand">
                                    <h1  class="d-lg-block d-none">
                                        <span class="icon-briefcase"></span> HappyJob
                                    </h1>

                                </div>
                                <!-- App brand ends -->

                            </div>

                            <div class="col-md-9 col-10">
                                <!-- App header actions start -->
                                <div class="header-actions d-flex align-items-center justify-content-end">



                                    <div class="dropdown d-sm-block d-none">
                                        <a class="dropdown-toggle d-flex p-3 position-relative" href="#!" role="button"
                                           data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="icon-mail fs-4 lh-1"></i>
                                            <span class="count rounded-circle bg-danger">9</span>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end dropdown-menu-md shadow-sm">
                                            <h5 class="fw-semibold px-3 py-2 m-0">Messages</h5>

                                            <a href="javascript:void(0)" class="dropdown-item">
                                                <div class="d-flex align-items-start py-2">
                                                    <div class="p-3 bg-danger rounded-circle me-3">
                                                        MS
                                                    </div>
                                                    <div class="m-0">
                                                        <h6 class="mb-1 fw-semibold">Moory Sammy</h6>
                                                        <p class="mb-1">Sent a mail.</p>
                                                        <p class="small m-0 opacity-50">3 Mins Ago</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="javascript:void(0)" class="dropdown-item">
                                                <div class="d-flex align-items-start py-2">
                                                    <div class="p-3 bg-primary rounded-circle me-3">
                                                        KY
                                                    </div>
                                                    <div class="m-0">
                                                        <h6 class="mb-1 fw-semibold">Kyle Yomaha</h6>
                                                        <p class="mb-1">Need support.</p>
                                                        <p class="small m-0 opacity-50">5 Mins Ago</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="javascript:void(0)" class="dropdown-item">
                                                <div class="d-flex align-items-start py-2">
                                                    <div class="p-3 bg-success rounded-circle me-3">
                                                        SB
                                                    </div>
                                                    <div class="m-0">
                                                        <h6 class="mb-1 fw-semibold">Srinu Basava</h6>
                                                        <p class="mb-1">Purchased a NotePad.</p>
                                                        <p class="small m-0 opacity-50">7 Mins Ago</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="d-grid p-3 border-top">
                                                <a href="javascript:void(0)" class="btn btn-outline-primary">View all</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dropdown d-sm-block d-none">
                                        <a class="dropdown-toggle d-flex p-3 position-relative" href="#!" role="button"
                                           data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="icon-twitch fs-4 lh-1"></i>
                                            <span class="count rounded-circle bg-danger">5</span>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end dropdown-menu-md shadow-sm">
                                            <h5 class="fw-semibold px-3 py-2 m-0">Notifications</h5>
                                            <c:set var="newNotification" value="${dao.getNewNotificationses()}" />
                                            <c:forEach var="n" items="${newNotification}">
                                                <a href="javascript:void(0)" class="dropdown-item">
                                                    <div class="d-flex align-items-start py-2" style=" white-space: nowrap;
                                                         overflow: hidden;
                                                         text-overflow: ellipsis; ">
                                                        <img src="assets/images/user.png" class="img-3x me-3 rounded-3" alt="Admin Themes" />
                                                        <div class="m-0">
                                                            <h6 class="mb-1 fw-semibold">${fn:substring(n.createdAt, 0, 10)}</h6>
                                                            <p class="mb-1">${n.message}</p>
                                                            <p class="small m-0 opacity-50">${fn:substring(n.createdAt, 11, 19)}</p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </c:forEach>
                                            <div class="d-grid p-3 border-top">
                                                <a href="javascript:void(0)" class="btn btn-outline-primary">View all</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dropdown ms-2">
                                        <a class="dropdown-toggle d-flex align-items-center user-settings" href="#!" role="button"
                                           data-bs-toggle="dropdown" aria-expanded="false">
                                            <span class="d-none d-md-block">Kasey Petersen</span>
                                            <img src="../admin_dashboard/assets/images/user3.png" class="img-3x m-2 me-0 rounded-5" alt="Bootstrap Gallery" />
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end dropdown-menu-sm shadow-sm gap-3" style="">
                                            <a class="dropdown-item d-flex align-items-center py-2" href="agent-profile.html"><i
                                                    class="icon-smile fs-4 me-3"></i>User Profile</a>
                                            <a class="dropdown-item d-flex align-items-center py-2" href="account-settings.html"><i
                                                    class="icon-settings fs-4 me-3"></i>Account
                                                Settings</a>
                                            <a class="dropdown-item d-flex align-items-center py-2" href="login.html"><i
                                                    class="icon-log-out fs-4 me-3"></i>Logout</a>
                                        </div>
                                    </div>

                                    <!-- Toggle Menu starts -->
                                    <button class="btn btn-success btn-sm ms-3 d-lg-none d-md-block" type="button"
                                            data-bs-toggle="offcanvas" data-bs-target="#MobileMenu">
                                        <i class="icon-menu"></i>
                                    </button>
                                    <!-- Toggle Menu ends -->

                                </div>
                                <!-- App header actions end -->

                            </div>
                        </div>
                        <!-- Row ends -->

                    </div>
                    <!-- Container ends -->

                </div>
                <!-- App header ends -->

                <!-- App navbar starts -->
                <nav class="navbar navbar-expand-lg p-0">
                    <div class="container">
                        <div class="offcanvas offcanvas-end" id="MobileMenu">
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title semibold">Navigation</h5>
                                <button type="button" class="btn btn-danger btn-sm" data-bs-dismiss="offcanvas">
                                    <i class="icon-clear"></i>
                                </button>
                            </div>
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item ">
                                    <a class="nav-link " href="DashBoard.jsp">
                                        Dashboards
                                    </a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                       aria-expanded="false">
                                        Talent
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a class="dropdown-item" href="listTalent">
                                                <span>Pending Talent</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="activeTalent"><span>Active Talent</span></a>
                                        </li>

                                    </ul>
                                </li>

                                <li class="nav-item ">
                                    <a class="nav-link " href="account">
                                        Ban Account
                                    </a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link " href="InvoiceList.jsp">
                                        Invoice
                                    </a>
                                </li>



                                <li class="nav-item">
                                    <a class="nav-link" href="notifications">Notifications </a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" href="RequestProduct.jsp"> List Product </a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- App Navbar ends -->
