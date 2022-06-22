<%-- 
    Document   : support_edit
    Created on : 22 Jun 2022, 09:30:15
    Author     : Minh Hieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/donater_edit.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <title>Chỉnh sửa</title>
    </head>
    <body>
    <div class="login_wrapper">
    <div class="login_container">
        <form action="supportedit" method="POST" class="login_form-input">
            <h2 class="login_title">Chỉnh sửa Tình nguyện viên</h2>
            <div class="edit_input">
            <div class="left_input">
                <input type="text" value="${sl.maTNV}" name="maTNV" placeholder="Mã tình nguyện viên" required readonly>
                <input type="text" value="${sl.tenTNV}" name="tenTNV" placeholder="Tên tình nguyện viên" required>
                <select name="gioiTinh">
                    <c:if test="${sl.gioiTinh == 1}">
                        <option selected value="1">Nam</option>
                    <option value="0">Nữ</option>
                    </c:if>
                    <c:if test="${sl.gioiTinh != 1}">
                        <option value="1">Nam</option>
                        <option selected value="0">Nữ</option>
                    </c:if>
                </select>
                <input type="text" value="${sl.diaChi}" name="diaChi" placeholder="Địa Chỉ">
            </div>
            <div class="right_input">
               
               <input type="text" value="${sl.sdt}" name="sdt" placeholder="Số điện thoại" required readonly>      
               <input type="text" value="${sl.cccd}" name="cccd" placeholder="Căn cước" required readonly>
                <input type="password" value="${sl.matKhau}" name="matKhau" placeholder="Mật khẩu" required readonly>
            </div>
        </div>
            <button class="login-btn">Chỉnh sửa</button>
            <a href="./supportmanager" class="login_forgot-pass">Quay lại</a>
        </form>
    </div>
</div>
</body>
</html>
