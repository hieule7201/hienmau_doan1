<%-- 
    Document   : login
    Created on : 18 Jun 2022, 18:04:29
    Author     : Minh Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/login.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <title>Đăng nhập</title>
    </head>
    <body>
    <div class="login_wrapper">
    <div class="login_container">
            <form action="LoginServlet" method="POST" class="login_form-input">
            <h2 class="login_title">Đăng nhập</h2>
            <p style="color: red; font-size: 12px;">${mess}</p>
            <input type="text" placeholder="Nhập địa chỉ email/ số điện thoại" required name="username">
            <input type="password" placeholder="Nhập mật khẩu" required name="password">
            <a href="" class="login_forgot-pass">Quên mật khẩu?</a>
            <button class="login-btn">Đăng nhập</button>
            <a href="home" class="login_forgot-pass">Quay lại</a>
            </form>
        <div class="login_change-register">
            <h3 class="login_change-title">Chưa có tài khoản</h3>
            <a href="./register.jsp" class="login_change-btn">Đăng ký</a>
        </div>
    </div>
</div>
</body>
</html>
