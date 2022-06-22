<%-- 
    Document   : donatebl_update
    Created on : 22 Jun 2022, 15:31:55
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
        <form action="donateblupdate" method="POST" class="login_form-input">
            <h2 class="login_title">Cập nhật đăng ký hiến máu</h2>
            <div class="edit_input">
            <div class="left_input">
                <input type="text" value="${ql.maLSHM}" name="maLSHM" placeholder="Mã" required readonly>
                <input type="text" value="${ql.tenDHM}" name="tenDHM" placeholder="Tên Đợt hiến máu" required readonly>
                    <input type="text" value="${ql.tenNHM}" name="tenNHM" placeholder="Tên Người hiến máu" readonly>
                <input type="text" value="${ql.nhomMau}" name="benhNen" placeholder="Nhóm máu" readonly>
            </div>
            <div class="right_input">
               <input type="text" value="${ql.benhNen}" name="benhNen" placeholder="Bệnh nền" readonly>
               <input type="text" value="${ql.thoiGian}" name="thoiGian" placeholder="Thời gian" required readonly>      
               <input type="text" value="${ql.tinhTrang}" name="tinhTrang" placeholder="Tình Trạng" required>
               <input type="text" value="${ql.soLuongMau}" name="soLuongMau" placeholder="Số lượng máu">
            </div>
        </div>
            <button class="login-btn">Cập nhật</button>
            <a href="./donateblmanager" class="login_forgot-pass">Quay lại</a>
        </form>
    </div>
</div>
</body>
</html>
