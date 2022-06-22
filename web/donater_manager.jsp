<%-- 
    Document   : donater_manager
    Created on : 21 Jun 2022, 22:32:43
    Author     : Minh Hieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/donateBL_manager.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
    <title>Quản lý người hiến máu</title>
    </head>
    <body>
    <header>
        <jsp:include page="./header.jsp"/>
    </header>
    <div>
        <jsp:include page="./dashboard.jsp"/>
    </div>
    <div class="container py-lg-5 manager_blood">
        <div class="row">
            <h1 class="manager_title">Quản lý người hiến máu</h1>
            <a href="./donater_add.jsp" class="btn btn-info" style="width: 110px; padding: 8px;">Thêm mới</a>
            <table id="example" class="table table-striped" style="width:100%;">
                <thead class="thead_edit">
                    <tr>
                        <th>Mã Người hiến máu</th>
                        <th>Tên Người hiến máu</th>
                        <th>Giới tính</th>
                        <th>Nhóm máu</th>
                        <th>Bệnh nền</th>
                        <th>Địa chỉ</th>
                        <th>SĐT</th>
                        <th>Căn cước</th>
                        <th></th>
                    </tr>
                    
                </thead>
                <tbody>
                    <c:forEach items="${listNHM}" var="nhm"> 
                    <tr>
                        <td>${nhm.maNHM}</td>
                        <td>${nhm.tenNHM}</td>
                        <c:if test="${nhm.gioiTinh == 1}">
                            <td>Nam</td>
                        </c:if>
                        <c:if test="${nhm.gioiTinh != 1}">
                            <td>Nữ</td>
                        </c:if>
                        <td>${nhm.nhomMau}</td>
                        <td>${nhm.benhNen}</td>
                        <td>${nhm.diaChi}</td>
                        <td>${nhm.sdt}</td>
                        <td>${nhm.cccd}</td>
                        <td>
                            <a href="donateredit?sid=${nhm.maNHM}" class="btn btn-warning">Chỉnh sửa</a>
                            <a href="donaterdelete?sid=${nhm.maNHM}" class="btn btn-danger">Xóa</a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
   
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
 <script>
        
        $(document).ready(function () {
         $('#example').DataTable();
        });
    </script>
</body>
</html>
