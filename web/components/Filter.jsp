<%-- 
    Document   : Filter
    Created on : Feb 26, 2024, 10:47:44 AM
    Author     : tuna
--%>
<jsp:useBean class="dao.CategoryDAO" id="showCategory"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>

        <section class="d-flex">
            <c:set var="page" value="${param.page}"/>
            <c:set var="pagesize" value="${param.pagesize}"/>

            <c:if test="${empty page||page==null}">
                <c:set var="page" value="1" />
                <c:set var="pagesize" value="10"/>
            </c:if>

            <c:set var="type" value="${param.type}"/>
            <c:set var="typeRating" value="${param.typeRating}"/>
            <c:set var="typePrice" value="${param.typePrice}"/>
            <c:set var="typeCategory" value="${param.typeCategory}"/>
            
            <c:if test="${empty typeCategory||typeCategory ==null}">
                <c:set var="typeCategory" value="0" />
            </c:if>
            
            <div class="col-2"></div>
            <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                Filter
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasRightLabel">Filter</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <form action="filterListTalent?page=${p}&pagesize=${pagesize}&typeRating=${typeRating}&typePrice=${typePrice}&typeCategory=${typeCategory}" method="get">
                        <div class="">
                            <div class="text-black fs-4">Category</div>
                            <row class="flex flex-row justify-content-between">
                                <div class=" mb-lg-0">
                                    <select name="typeCategory" class="selectpicker border-1" data-style="btn-white btn-lg" data-width="100%" data-live-search="true" title="Select Category">
                                        <option value="null">
                                            None
                                        </option>
                                        <c:forEach items="${showCategory.listAllCategories}" var="c">
                                            <option value="${c.getId()}">
                                                ${c.getName()}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block text-white btn-search"><span class="icon-search icon mr-2"></span></button>
                                </div>
                            </row>
                        </div>

                        <div class="">
                            <div class="text-black fs-4">Price</div>
                            <div class="flex flex-row filter-price custom-pagination">
                                <c:if test="${typePrice == 'priceAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typeRating=${typeRating}&typeCategory=${typeCategory}&typePrice=''"
                                       class="prev active">
                                        Ascending
                                    </a>
                                </c:if>
                                <c:if test="${typePrice != 'priceAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typeRating=${typeRating}&typeCategory=${typeCategory}&typePrice=priceAscending"
                                       class="prev">
                                        Ascending
                                    </a>
                                </c:if>
                                <c:if test="${typePrice == 'priceDecreasing'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typeRating=${typeRating}&typeCategory=${typeCategory}&typePrice=''"
                                       class="prev active">
                                        Decreasing
                                    </a>
                                </c:if>
                                <c:if test="${typePrice != 'priceDecreasing'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typeRating=${typeRating}&typeCategory=${typeCategory}&typePrice=priceDecreasing"
                                       class="prev">
                                        Decreasing
                                    </a>
                                </c:if>

                                <c:if test="${typePrice == 'price1000'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typeRating=${typeRating}&typeCategory=${typeCategory}&typePrice=''"
                                       class="prev active">
                                        < 1000$
                                    </a>
                                </c:if>
                                <c:if test="${typePrice != 'price1000'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typeRating=${typeRating}&typeCategory=${typeCategory}&typePrice=price1000"
                                       class="prev">
                                        < 1000$
                                    </a>
                                </c:if>
                            </div>
                        </div>

                        <div class="">
                            <div class="text-black fs-4">Rating</div>
                            <div class="flex flex-row filter-price custom-pagination">
                                <c:if test="${typeRating == 'ratingAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typePrice=${typePrice}&typeCategory=${typeCategory}&typeRating=''"
                                       class="prev active">
                                        Ascending
                                    </a>
                                </c:if>
                                <c:if test="${typeRating != 'ratingAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typePrice=${typePrice}&typeCategory=${typeCategory}&typeRating=ratingAscending"
                                       class="prev">
                                        Ascending
                                    </a>
                                </c:if>

                                <c:if test="${typeRating == 'ratingDecreasing'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typePrice=${typePrice}&typeCategory=${typeCategory}&typeRating=''"
                                       class="prev active">
                                        Decreasing
                                    </a>
                                </c:if>
                                <c:if test="${typeRating != 'ratingDecreasing'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typePrice=${typePrice}&typeCategory=${typeCategory}&typeRating=ratingDecreasing"
                                       class="prev">
                                        Decreasing
                                    </a>
                                </c:if>

                                <c:if test="${typeRating == 'rating4'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typePrice=${typePrice}&typeCategory=${typeCategory}&typeRating=''"
                                       class="prev active">
                                        4+
                                    </a>
                                </c:if>
                                <c:if test="${typeRating != 'rating4'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typePrice=${typePrice}&typeCategory=${typeCategory}&typeRating=rating4"
                                       class="prev">
                                        4+
                                    </a>
                                </c:if>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>
