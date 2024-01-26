<%-- 
    Document   : Header
    Created on : Jan 15, 2024, 11:06:27 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>HappyJob</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link rel="shortcut icon" href="ftco-32x32.png">

        <link rel="stylesheet" href="css/custom-bs.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.min.css">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="fonts/line-icons/style.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/style-of-hoang.css">   
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/style.css">   
    </head>
    <body id="top">

        <div id="overlayer"></div>

        <div class="loader">
            <div class="spinner-border text-primary" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>


        <div class="site-wrap">

            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div> <!-- .site-mobile-menu -->


            <!-- NAVBAR -->
            <header class="site-navbar mt-3">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="site-logo col-6"><a href="#">HappyJob</a></div>

                        <nav class="mx-auto site-navigation">
                            <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                                <li><a href="Home.jsp" class="nav-link active">Home</a></li>

                                <li class="has-children">
                                    <a href="#">Talent </a>
                                    <ul class="dropdown">
                                        <li><a href="listTalentServlet">Talent Listings</a></li>
                                        <li><a href="job-single.html">Dashboard</a></li>
                                        <li><a href="PostTalent.jsp">Post a Talent</a></li>
                                    </ul>
                                </li>
                                <li class="has-children">
                                    <a href="services.html">Category</a>
                                    <ul class="dropdown">
                                        <li><a href="services.html">Services</a></li>
                                        <li><a href="service-single.html">Service Single</a></li>
                                        <li><a href="blog-single.html">Blog Single</a></li>
                                        <li><a href="portfolio.html">Portfolio</a></li>
                                        <li><a href="portfolio-single.html">Portfolio Single</a></li>
                                        <li><a href="testimonials.html">Testimonials</a></li>
                                        <li><a href="faq.html">Frequently Ask Questions</a></li>
                                        <li><a href="gallery.html">Gallery</a></li>
                                    </ul>
                                </li>
                                <li class="has-children">
                                    <a href="#">Blog</a>

                                    <ul class="dropdown">
                                        <li><a href="About.jsp">About</a></li>
                                        <li><a href="Blog.jsp">Blog Listings</a></li>
                                        <li><a href="PostBlog.jsp">Post a Blog</a></li>
                                    </ul>
                                </li>
                                <li class="has-children">
                                    <a href="#">Notification <mark class="big swing">7</mark></a>
                                    <ul class="dropdown autohiden">
                                        <li><a href="Blog.jsp">Blog Listings</a></li>
                                        <li><a href="PostBlog.jsp">Post a Blog</a></li>
                                    </ul>
                                </li>
                                <li><a href="Contact.jsp">Contact</a></li>
                            </ul>
                        </nav>

                        <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                            <div class="ml-auto">
                                <a href="PostTalent.jsp" class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"><span class="mr-2 icon-add"></span>Post a Job</a>

                                <!--                                <a href="Login.jsp" class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span class="mr-2 icon-lock_outline"></span>Log In</a>-->







                                <!--                                profile when login -->
                                <!--                                <div class="btn-group">
                                                                   
                                                                    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                         <span class="mr-2 icon-person"></span>Phuong123<span class="icon-chevron-down"></span>
                                                                    </button>
                                                                    <div class="dropdown-menu">
                                                                        <a class="dropdown-item" href="Profile.jsp">Profile Details</a>
                                                                        <a class="dropdown-item" href="#" onclick="logout()">Logout</a>
                                                                    </div>
                                                                </div>-->

                            </div>

                        </div>

                    </div>
                </div>
            </header>

</html>
