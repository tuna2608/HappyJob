<%-- 
    Document   : Test
    Created on : Feb 27, 2024, 9:14:53 AM
    Author     : tuna
--%>

<jsp:useBean class="dao.AccountDAO" id="showAccount"></jsp:useBean>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${listTalent}" var="t" begin="0" end="9">
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
                <div class="black-color">From $495</div>
            </div>
        </c:forEach>
    </body>
</html>
