<%-- 
    Document   : Contact
    Created on : Jan 16, 2024, 2:11:18 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="components/Header.jsp" %>
<!-- HOME -->
<section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1 class="text-white font-weight-bold">History</h1>
                <div class="custom-breadcrumbs">
                    <a href="#">Home</a> <span class="mx-2 slash">/</span>
                    <span class="text-white"><strong>History</strong></span>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="site-section" id="next-section">
    <div class="container">
        <div class="nav-tab-history">
            <form class="form-search-history">
                <input 
                    type="text" 
                    class="form-control" 
                    placeholder="History..."
                    name="keySearch"   
                    >
                <button type="submit" class="btn btn-primary text-white btn-search-history"><span class="icon-search icon mr-2"></span></button>
            </form>
        </div>
        <div class="list-history">
            <div class="history-items">
                <div class="name-provider">Name provider</div>
                <div class="provider-items">
                    <div class="talent-person">
                        <img class="talent-person-avt" src="images/person_1.jpg">
                        <div class="talent-person-name">Talent title</div>
                    </div>
                    <div class="date-buy">dd/mm/yyyy</div>
                    <div>
                        <a href="#" class="btn-delete text-primary">Delete</a>
                    </div>
                </div>
            </div>
            <div class="history-items">
                <div class="name-provider">Name provider</div>
                <div class="provider-items">
                    <div class="talent-person">
                        <img class="talent-person-avt" src="images/person_1.jpg">
                        <div class="talent-person-name">Talent title</div>
                    </div>
                    <div class="date-buy">dd/mm/yyyy</div>
                    <div>
                        <a href="#" class="btn-delete text-primary">Delete</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="components/Footer.jsp" %>




