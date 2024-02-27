<%-- 
    Document   : Search
    Created on : Jan 15, 2024, 11:36:25 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <!-- HOME -->
            <section class="home-section section-hero overlay bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">

                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-12">
                            <div class="mb-5 text-center">
                                <h1 class="text-white font-weight-bold">The Easiest Way To Get Your Dream Job</h1>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate est, consequuntur perferendis.</p>
                            </div>
                            <form action="listTalentServlet" method="post" class="search-jobs-form">
                                <div class="row flex justify-content-center mb-5">
                                    <div class="col-6">
                                        <input 
                                            type="text" 
                                            class="form-control form-control-lg" 
                                            placeholder="Job title, Company..."
                                            name="keySearch"   
                                            >
                                    </div>
<!--                                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                        <select class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true" title="Select Region">
                                            <option>Anywhere</option>
                                            <option>San Francisco</option>
                                            <option>Palo Alto</option>
                                            <option>New York</option>
                                            <option>Manhattan</option>
                                            <option>Ontario</option>
                                            <option>Toronto</option>
                                            <option>Kansas</option>
                                            <option>Mountain View</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                        <select class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true" title="Select Job Type">
                                            <option>Part Time</option>
                                            <option>Full Time</option>
                                        </select>
                                    </div>-->
                                    <div class="col-3">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block text-white btn-search"><span class="icon-search icon mr-2"></span>Search Job</button>
                                    </div>
                                </div>
<!--                                <div class="row">
                                    <div class="col-md-12 popular-keywords">
                                        <h3>Trending Keywords:</h3>
                                        <ul class="keywords list-unstyled m-0 p-0">
                                            <li><a href="#" class="">UI Designer</a></li>
                                            <li><a href="#" class="">Python</a></li>
                                            <li><a href="#" class="">Developer</a></li>
                                        </ul>
                                    </div>
                                </div>-->
                            </form>
                        </div>
                    </div>
                </div>

                <a href="#next" class="scroll-button smoothscroll">
                    <span class=" icon-keyboard_arrow_down"></span>
                </a>

            </section>
         
    </body>
</html>
