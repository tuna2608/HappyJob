<%-- 
    Document   : Filter
    Created on : Feb 26, 2024, 10:47:44 AM
    Author     : tuna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <section class="d-flex">
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
                    <form>
                        <div class="all-seatc">
                            <div class="text-black fs-4">Price</div>
                            <div class="flex flex-row filter-price">
                                <p>
                                    <a href="filterListTalent?type=priceAscending" class="focus-ring focus-ring-primary py-1 px-2 text-decoration-none border rounded-2">
                                        Ascending
                                    </a>
                                </p>
                                <p>
                                    <a href="filterListTalent?type=priceDecreasing" class="focus-ring focus-ring-primary py-1 px-2 text-decoration-none border rounded-2">
                                        Decreasing
                                    </a>
                                </p>
                                
<!--                                <input type="checkbox" name="itema" id="a"  onClick=""/>
                                <label for="a" class="seat">0$+</label>

                                <input type="checkbox" name="itemb" id="b"  onClick=""/>
                                <label for="b" class="seat">50$+</label>-->
                            </div>
                        </div>

                        <div class="">
                            <div class="text-black fs-4">Rating</div>
                            <div class="flex flex-row filter-price">
                                <p>
                                    <a href="filterListTalent?type=ratingAscending" class="focus-ring focus-ring-primary py-1 px-2 text-decoration-none border rounded-2">
                                        Ascending
                                    </a>
                                </p>
                                <p>
                                    <a href="filterListTalent?type=ratingDecreasing" class="focus-ring focus-ring-primary py-1 px-2 text-decoration-none border rounded-2">
                                        Decreasing
                                    </a>
                                </p>
                            </div>
                        </div>

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
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>
