<%-- 
    Document   : register
    Created on : 18 Jun 2022, 18:04:44
    Author     : Minh Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/register.css">
    <link rel="stylesheet" href="./assets/css/base.css">
        <title>Đăng ký</title>
    </head>
    <body>
    <div class="register_wrapper">
        <div class="register_container">
                <form action="register" method="POST" class="register_form-input">
                    <h2 class="register_title">Đăng ký</h2>
                    <p style="color: red; font-size: 12px;">${all_err}</p>
                    <input type="text" placeholder="Nhập họ và tên" required name="username">
                    <p style="color: red; font-size: 12px;">${phone_err}</p>
                    <input type="text" placeholder="Nhập số điện thoại" required name="phone">
                    <p style="color: red; font-size: 12px;">${id_err}</p>
                    <input type="text" placeholder="Nhập căn cước công dân" required name="identify">
                    <input type="password" placeholder="Nhập mật khẩu" required name="password">
                    <input type="password" placeholder="Xác nhận mật khẩu" required name="conf_pass">
                    <button class="register_btn">Đăng ký</button>
                    <a href="home" class="register_back-home">Quay lại</a>
                </form>
            <div class="register_change-register">
                <h3 class="register_change-title">Đã có tài khoản</h3>
                <a href="./login.jsp" class="register_change-btn">Đăng nhập</a>
            </div>
        </div>
    </div>
</body>
</html>
