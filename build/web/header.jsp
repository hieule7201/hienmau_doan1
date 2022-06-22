<%-- 
    Document   : header
    Created on : 18 Jun 2022, 16:14:56
    Author     : Minh Hieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/base.css">
        <link rel="stylesheet" href="./assets/css/header.css">
        <link rel="stylesheet" href="./assets/font/font-awesome/css/fontawesome-all.min.css">
        <title>JSP Page</title>
    </head>
    <body>

    <header class="header_container">
        <div class="grid">
            <div class="header_wrapper-title">
                <div class="header_logo">
                    <a href="#" class="header_home-link">
                    <h1 class="header_title">donateBLOOD</h1>
                    <p class="header_sub-title">Hai Chau medical center</p>
                    </a>
                </div>
                <div class="header_btn">
                    <c:if test="${sessionScope.acc == null}">
                        <a href="./login.jsp" class="header_btn-login">Đăng nhập</a>
                        <a href="./register.jsp" class="header_btn_register">Đăng kí</a>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <i class="header_icon-user fas fa-user-circle">
                        <ul class="header_list-user">
                            <li class="header_item-user"><a href="" class="header_item-link">Thông tin cá nhân</a></li>
                            <c:if test="${sessionScope.acc.phanQuyen == 1}">
                            <li class="header_item-user"><a href="sphistory" class="header_item-link">Lịch sử hỗ trợ</a></li>
                            <li class="header_item-user"><a href="blhistory" class="header_item-link">Lịch sử hiến máu</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc.phanQuyen != 1}">
                            <li class="header_item-user"><a href="statistical" class="header_item-link">Trang admin</a></;>
                                </c:if>
                            <li class="header_item-user"><a href="logout" class="header_item-link">Đăng xuất</a></;>
                        </ul>
                    </i>
                    </c:if>
                </div>
            </div>
        </div>
        <div class="header_navbar">
            <div class="grid">
                <div class="header_navbar-container">
                <div class="header_navbar-list">
                    <ul class="header_nav-link">
                        <li class="header_nav-item"><a href="home" class="header_nav-item_link">Trang chủ</a></li>
                        <li class="header_nav-item"><a href="#" class="header_nav-item_link">Tin tức</a></li>
                        <li class="header_nav-item"><a href="#" class="header_nav-item_link">Về chúng tôi</a></li>
                        <li class="header_nav-item"><a href="#" class="header_nav-item_link">FAQs</a></li>
                    </ul>
                </div>
                <div class="header_input">
                    <input type="text" placeholder="Nhập từ khóa tìm kiếm">
                    <i class="header__navbar-icon fas fa-search"></i>
                </div>
            </div>
            </div>
        </div>

    </header>

</body>
</html>
