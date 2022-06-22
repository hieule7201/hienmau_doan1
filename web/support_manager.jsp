<%-- 
    Document   : support_manager
    Created on : 22 Jun 2022, 08:51:56
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
    <title>Quản lý tình nguyên viên</title>
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
            <h1 class="manager_title">Quản lý tình nguyên viên</h1>
            <a href="./support_add.jsp" class="btn btn-info" style="width: 110px; padding: 8px;">Thêm mới</a>
            <table id="example" class="table table-striped" style="width:100%;">
                <thead class="thead_edit">
                    
                    <tr>
                        <th>Mã Tình nguyện viên</th>
                        <th>Tên Tình nguyện viên</th>
                        <th>Giới tính</th>
                        <th>Địa chỉ</th>
                        <th>SĐT</th>
                        <th>Căn cước</th>
                        <th></th>
                    </tr>
                    
                </thead>
                <tbody>
                    <c:forEach items="${listTNV}" var="tnv">
                    <tr>
                        <td>${tnv.maTNV}</td>
                        <td>${tnv.tenTNV}</td>
                        <c:if test="${tnv.gioiTinh == 1}">
                        <td>Nam</td>
                        </c:if>
                        <c:if test="${tnv.gioiTinh != 1}">
                        <td>Nữ</td>
                        </c:if>
                        <td>${tnv.diaChi}</td>
                        <td>${tnv.sdt}</td>
                        <td>${tnv.cccd}</td>
                        <td>
                            <a href="supportedit?sid=${tnv.maTNV}" class="btn btn-warning">Chỉnh sửa</a>
                            <a href="supportdelete?sid=${tnv.maTNV}" class="btn btn-danger">Xóa</a>
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
