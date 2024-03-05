<%-- 
    Document   : Job
    Created on : Jan 14, 2024, 11:04:33 PM
    Author     : DELL
--%>
<jsp:useBean class="dao.AccountDAO" id="showAccount"></jsp:useBean>
<jsp:useBean class="dao.ServicePackageDAO" id="showService"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="components/Header.jsp" %>
<%@include file="components/Search.jsp" %>

<section class="site-section" id="talent-list">
    <c:set var="page" value="${param.page}"/>
    <c:set var="pagesize" value="${param.pagesize}"/>
    <c:if test="${empty page||page==null}">
        <c:set var="page" value="1" />
        <c:set var="pagesize" value="8"/>
    </c:if>

    <c:set var="numpage" value="${(listTalent.size()%8==0) ? (listTalent.size()/8) : (listTalent.size()/8)+1}"/>

    <c:set var="typeFil" value="${param.type}"/>
    <c:set var="typeRating" value="${param.typeRating}"/>
    <c:set var="typePrice" value="${param.typePrice}"/>
    <c:set var="typeCategory" value="${param.typeCategory}"/>

    <div class="container">
        <div class="row mb-5 justify-content-center">
            <div class="col-md-7 text-center">
                <h2 class="section-title mb-2">${listTalent.size()} Talent Listed</h2>
            </div>
        </div>
        <%@include file="components/Filter.jsp" %>
    </div>
    <div class="container-list-talent">
        <c:forEach items="${listTalent}" var="t" begin="${(page-1)*8}" 
                   end="${(page-1)*8+7>listTalent.size()
                          ?listTalent.size()-1 
                          :(page-1)*8+7}">
                   <div class="talent-items">
                       <a href="detailTalentServlet?tID=${t.getTalentID()}#nav-basic"><img class="talent-img" src="${t.getImg()}"></a>
                       <div class="talent-person">
                           <img class="talent-person-avt" src="images/person_1.jpg">
                           <div class="talent-person-name"> ${showAccount.getAccountById(t.getAccountID()).getName()}</div>
                       </div>
                       <a href="detailTalentServlet?tID=${t.getTalentID()}#nav-basic"><div class="talent-title">${t.getTitle()}</div></a>
                       <div class="talent-star">
                           <div class="black-color">
                               <div class="icon-star"></div>
                               <div>${t.getRating()}</div>
                           </div>
                           <div>
                               (385)
                           </div>
                       </div>
                       <div class="black-color">From $${showService.getPackageByIdBasic(t.getTalentID()).getPrice()}</div>
                   </div>
        </c:forEach>
    </div>

    <div class="row flex justify-content-center pagination-wrap">
        <div class="col-3 text-center text-md-left mb-4 mb-md-0">
            <span>Showing ${(page-1)*8+1} - ${(page-1)*8+8>listTalent.size()
                            ?listTalent.size() 
                            :(page-1)*8+8} Of ${listTalent.size()} Jobs</span>
        </div>

        <div class="col-6 text-center text-md-right">
            <div class="custom-pagination ml-auto">
                <c:if test="${page != 1}">
                    <a href="?page=${(page-1)}&pagesize=${pagesize}&typePrice=${typePrice}&typeRating=${typeRating}&typeCategory=${typeCategory}" class="prev">Prev</a> 
                </c:if>
                <div class="d-inline-block">
                    <c:forEach var="p" begin="1" end="${numpage}">
                        <c:if test="${p == page}">
                            <a href="?page=${p}&pagesize=${pagesize}&typePrice=${typePrice}&typeRating=${typeRating}&typeCategory=${typeCategory}" class="mx-2 active">${p}</a>
                        </c:if>
                        <c:if test="${p != page}">
                            <a href="?page=${p}&pagesize=${pagesize}&typePrice=${typePrice}&typeRating=${typeRating}&typeCategory=${typeCategory}" class="mx-2 ">${p}</a>
                        </c:if>
                    </c:forEach>
                </div>
                    
                <c:if test="${page != numpage}">
                    <a href="?page=${(page+1)}&pagesize=${pagesize}&typePrice=${typePrice}&typeRating=${typeRating}&typeCategory=${typeCategory}" class="prev">Next</a> 
                </c:if>
            </div>
        </div>
    </div>

</section>


<!--<section class="py-5 bg-image overlay-primary fixed overlay" style="background-image: url('images/hero_1.jpg');">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-8">
                <h2 class="text-white">Looking For A Job?</h2>
                <p class="mb-0 text-white lead">Lorem ipsum dolor sit amet consectetur adipisicing elit tempora adipisci impedit.</p>
            </div>
            <div class="col-md-3 ml-auto">
                <a href="#" class="btn btn-warning btn-block btn-lg">Sign Up</a>
            </div>
        </div>
    </div>
</section>-->



<%@include file="components/Footer.jsp" %>
