<%-- 
    Document   : index
    Created on : 18 Jun 2022, 16:08:48
    Author     : Minh Hieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/main.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <title>Trang chủ</title>
    </head>
    <body>
    <header>
        <jsp:include page="./header.jsp"/>
    </header>
    <div class="news">
        <div class="grid">
            <h2 class="news_title">Tin tức</h2>
            <c:forEach items="${listA}" var="x">    
                <div class="news_container">
                    <img src="./assets/images/hienmau2.jpg" alt="" class="news_img">
                    <div class="layer">
                        <a href="detailbl?sid=${x.maDHM}" class="news_detail">${x.tenDHM}</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>


    <footer>
        <jsp:include page="./footer.jsp"/>
    </footer>
</body>
</html>
