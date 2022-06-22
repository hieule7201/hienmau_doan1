<%-- 
    Document   : nvyt_add
    Created on : 22 Jun 2022, 10:21:08
    Author     : Minh Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/donater_edit.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <title>Thêm mới</title>
    </head>
    <body>
    <div class="login_wrapper">
    <div class="login_container">
        <form action="nvytadd" method="POST" class="login_form-input">
            <h2 class="login_title">Thêm mới Nhân viên</h2>
            <div class="edit_input">
            <div class="left_input">
                <p style="color: red; font-size: 12px;">${all_err}</p>
                <input type="text" name="tenNV" placeholder="Tên Nhân viên" required>
                <select name="gioiTinh">
                    <option value="1">Nam</option>
                    <option value="0">Nữ</option>
                </select>
                <input type="text" name="diaChi" placeholder="Địa Chỉ" required>
            </div>
            <div class="right_input">

               <p style="color: red; font-size: 12px;">${phone_err}</p>
                <input type="text" name="sdt" placeholder="Số điện thoại" required> 
                <p style="color: red; font-size: 12px;">${id_err}</p>
                <input type="text" name="cccd" placeholder="Căn cước" required>
                <input type="password" name="matKhau" placeholder="Mật khẩu" required>
            </div>
        </div>
            <button class="login-btn">Thêm mới</button>
            <a href="./nvytmanager" class="login_forgot-pass">Quay lại</a>
        </form>
    </div>
</div>
</body>
</html>
