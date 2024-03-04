<%-- 
    Document   : Filter
    Created on : Feb 26, 2024, 10:47:44 AM
    Author     : tuna
--%>

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
                    <form action="listTalentServlet" method="post">
                        <div class="">
                            <div class="text-black fs-4">Category</div>
                            <div class="flex flex-row filter-price">
                                <p>
                                    <a href="" class="focus-ring focus-ring-primary py-1 px-2 text-decoration-none border rounded-2">
                                        Category 1
                                    </a> 
                                </p>
                                <p>
                                    <a href="" class="focus-ring focus-ring-primary py-1 px-2 text-decoration-none border rounded-2">
                                        Category 2
                                    </a>
                                </p>
                                <p>
                                    <a href="" class="focus-ring focus-ring-primary py-1 px-2 text-decoration-none border rounded-2">
                                        Category 3
                                    </a>
                                </p>
                            </div>
                        </div>
                        
                        <div class="">
                            <div class="text-black fs-4">Price</div>
                            <div class="flex flex-row filter-price custom-pagination">
                                <c:if test="${type == 'priceAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&type=priceAscending"
                                       class="prev active">
                                        Ascending
                                    </a>
                                </c:if>
                                <c:if test="${type != 'priceAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&type=priceAscending"
                                       class="prev">
                                        Ascending
                                    </a>
                                </c:if>
                                <c:if test="${type == 'priceDecreasing'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&type=priceDecreasing"
                                       class="prev active">
                                        Decreasing
                                    </a>
                                </c:if>
                                <c:if test="${type != 'priceDecreasing'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&type=priceDecreasing"
                                       class="prev">
                                        Decreasing
                                    </a>
                                </c:if>

                                <c:if test="${typePrice == 'priceAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typePrice=priceAscending"
                                       class="prev active">
                                        Ascending1
                                    </a>
                                </c:if>
                                <c:if test="${typePrice != 'priceAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&typePrice=priceAscending"
                                       class="prev">
                                        Ascending1
                                    </a>
                                </c:if>                              
                            </div>
                        </div>

                        <div class="">
                            <div class="text-black fs-4">Rating</div>
                            <div class="flex flex-row filter-price custom-pagination">
                                <c:if test="${type == 'ratingAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&type=ratingAscending"
                                       class="prev active">
                                        Ascending
                                    </a>
                                </c:if>
                                <c:if test="${type != 'ratingAscending'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&type=ratingAscending"
                                       class="prev">
                                        Ascending
                                    </a>
                                </c:if>

                                <c:if test="${type == 'ratingDecreasing'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&type=ratingDecreasing"
                                       class="prev active">
                                        Decreasing
                                    </a>
                                </c:if>
                                <c:if test="${type != 'ratingDecreasing'}">
                                    <a href="filterListTalent?page=${p}&pagesize=${pagesize}&type=ratingDecreasing"
                                       class="prev">
                                        Decreasing
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
