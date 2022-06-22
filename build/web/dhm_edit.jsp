<%-- 
    Document   : dhm_edit
    Created on : 22 Jun 2022, 14:04:03
    Author     : Minh Hieu
--%>

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
        <form action="dhmedit" method="POST" class="login_form-input">
            <h2 class="login_title">Cập nhật Đợt hiến máu</h2>
            <div class="edit_input">
            <div class="left_input">
                <input type="text" value="${sl.maDHM}" name="maDHM" placeholder="Mã Đợt hiến máu" required readonly>
                <input type="text" value="${sl.tenDHM}" name="tenDHM" placeholder="Tên Đợt hiến máu" required>
                <input type="text" value="${sl.thoiGian}" name="thoiGian" placeholder="Thời gian (yyyy-mm-dd)" required>
                <input type="text" value="${sl.diaDiem}" name="diaDiem" placeholder="Địa điểm" required >
            </div>
            <div class="right_input">
                
                <input type="text" value="${sl.soLuongTNV}" name="soLuongTNV" placeholder="Số lượng TNV" required>
                <input type="text" value="${sl.soLuongNHM}" name="soLuongNHM" placeholder="Số lượng NHM" required>
            </div>
        </div>
            <button class="login-btn">Cập nhật</button>
            <a href="./dhmmanager" class="login_forgot-pass">Quay lại</a>
        </form>
    </div>
</div>
</body>
</html>
