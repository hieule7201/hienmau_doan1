<%-- 
    Document   : donater_add
    Created on : 21 Jun 2022, 22:51:36
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
        <form action="donateradd" method="POST" class="login_form-input">
            <h2 class="login_title">Thêm mới Người hiến máu</h2>
            <div class="edit_input">
            <div class="left_input">
                <p style="color: red; font-size: 12px;">${all_err}</p>
                <input type="text" name="tenNHM" placeholder="Tên người hiến máu" required>
                <select name="gioiTinh">
                    <option value="1">Nam</option>
                    <option value="0">Nữ</option>
                </select>
                <input type="text" name="nhomMau" placeholder="Nhóm máu" required >
                <input type="text" name="benhNen" placeholder="Bệnh nền" required>
            </div>
            <div class="right_input">
               <input type="text" name="diaChi" placeholder="Địa Chỉ" required>
               <p style="color: red; font-size: 12px;">${phone_err}</p>
                <input type="text" name="sdt" placeholder="Số điện thoại" required> 
                <p style="color: red; font-size: 12px;">${id_err}</p>
                <input type="text" name="cccd" placeholder="Căn cước" required>
                <input type="password" name="matKhau" placeholder="Mật khẩu" required>
            </div>
        </div>
            <button class="login-btn">Thêm mới</button>
            <a href="./donatermanager" class="login_forgot-pass">Quay lại</a>
        </form>
    </div>
</div>
</body>
</html>
