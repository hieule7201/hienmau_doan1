<%-- 
    Document   : donateBlood_detail
    Created on : 18 Jun 2022, 17:40:36
    Author     : Minh Hieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="./assets/css/dbdetail.css">
            <link rel="stylesheet" href="./assets/css/base.css">
        <title>Chi tiết</title>
    </head>
<body>
    <header>
        <jsp:include page="./header.jsp"/>
    </header>
    <div class="dbdetail">
        <div class="dbdetail_container">
            <img src="./assets/images/hienmau1.jpg" alt="" class="dbdetail_img">
            <h1 class="dbdetail_title">${st.tenDHM}</h1>
            <div class="dbdetail_box-detail">
                <table class="table_detail">
                    <tr>
                        <td class="dbdetail_name-detail">Địa điểm: </td>
                        <td class="dbdetail_detail">${st.diaDiem}</td>
                    </tr>
                    <tr>
                        <td class="dbdetail_name-detail">Thời gian: </td>
                        <td class="dbdetail_detail">${st.thoiGian}</td>
                    </tr>
                    <tr>
                        <td class="dbdetail_name-detail">Số lượng đăng ký: </td>
                        <td class="dbdetail_detail">${st.soLuongNHM} người</td>
                    </tr>
                    <tr>
                        <td class="dbdetail_name-detail">Tình nguyện viên: </td>
                        <td class="dbdetail_detail">${st.soLuongTNV} người</td>
                    </tr>
                </table>
            </div>
            <c:choose>
                <c:when test="${sessionScope.acc == null}">
                    <p class="dbdetail-btn">Đăng ký hiến máu</p>
                    <p class="dbdetail-btn">Đăng ký tình nguyện</p>
                </c:when>
                <c:when test="${sessionScope.acc.phanQuyen != 1}">
                    <p class="dbdetail-btn">Đăng ký hiến máu</p>
                    <p class="dbdetail-btn">Đăng ký tình nguyện</p>
                </c:when>
                <c:otherwise>
                    <a href="nhmdangky?dhmId=${st.maDHM}" class="dbdetail-btn">Đăng ký hiến máu</a>
                    <a href="tnvdangky?dhmId=${st.maDHM}" class="dbdetail-btn">Đăng ký tình nguyện</a>
                </c:otherwise>
            </c:choose>

        </div>
        
    </div>

    <footer>
        <jsp:include page="./footer.jsp"/>
    </footer>
</body>
</html>
