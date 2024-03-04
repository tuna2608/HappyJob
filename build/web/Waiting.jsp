<%-- 
    Document   : Contact
    Created on : Jan 16, 2024, 2:11:18 AM
    Author     : DELL
--%>
<jsp:useBean class="dao.AccountDAO" id="showAccount"></jsp:useBean>
<jsp:useBean class="dao.TalentDAO" id="showTalent"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="components/Header.jsp" %>
<!-- HOME -->
<section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1 class="text-white font-weight-bold">Waiting</h1>
                <div class="custom-breadcrumbs">
                    <a href="#">Home</a> <span class="mx-2 slash">/</span>
                    <span class="text-white"><strong>Waiting</strong></span>
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
                    placeholder="Waiting..."
                    name="keySearch"   
                    >
                <button type="submit" class="btn btn-primary text-white btn-search-history"><span class="icon-search icon mr-2"></span></button>
            </form>
        </div>
        <div class="list-history">
            <c:forEach items="${listOrder}" var="o">
                <div class="history-items">
                    <div class="name-provider">${showAccount.getAccountById(o.getAccountId()).getName()}</div>
                    <div class="provider-items">
                        <div class="talent-person">
                            <img class="talent-person-avt" src="images/person_1.jpg">
                            <div class="talent-person-name">${showTalent.getTalentById(o.getTalentId()).getTitle()}</div>
                        </div>
                        <div class="date-buy">${o.getTimestamp()}</div>
                        <div class="date-buy">${o.getStatus()}</div>
                        <div>
                            <a href="#" class="btn-delete text-primary">Cancel</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<%@include file="components/Footer.jsp" %>




