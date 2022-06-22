<%-- 
    Document   : suportbl_update
    Created on : 22 Jun 2022, 16:08:01
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
        <form action="suportblupdate" method="POST" class="login_form-input">
            <h2 class="login_title">Cập nhật đăng ký hỗ trợ</h2>
            <div class="edit_input">
            <div class="left_input">
                <input type="text" value="${ql.maLSHT}" name="maLSHT" placeholder="Mã" required readonly>
                <input type="text" value="${ql.tenDHM}" name="tenDHM" placeholder="Tên Đợt hiến máu" required readonly>
                    <input type="text" value="${ql.tenTNV}" name="tenTNV" placeholder="Tên Tình nguyện viên" readonly>
            </div>
            <div class="right_input">
               <input type="text" value="${ql.thoiGian}" name="thoiGian" placeholder="Thời gian" required readonly>      
               <input type="text" value="${ql.tinhTrang}" name="tinhTrang" placeholder="Tình Trạng" required>
            </div>
        </div>
            <button class="login-btn">Cập nhật</button>
            <a href="./suportblmanager" class="login_forgot-pass">Quay lại</a>
        </form>
    </div>
</div>
</body>
</html>
