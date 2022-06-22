<%-- 
    Document   : donatebl_manager
    Created on : 22 Jun 2022, 14:47:16
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
    <title>Quản lý đăng ký hiến máu</title>
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
            <h1 class="manager_title">Quản lý đăng ký hiến máu</h1>
            <table id="example" class="table table-striped" style="width:100%;">
                <thead class="thead_edit">
                    <tr>
                        <th>Mã</th>
                        <th>Tên đợt đăng ký</th>
                        <th>Tên Người hiến máu</th>
                        <th>Thời gian</th>
                        <th>Tình trạng</th>
                        <th>Số lượng máu (ml)</th>
                    </tr>
                    
                </thead>
                <tbody>
                   
                    <c:forEach items="${listQLHM}" var="qlhm">
                    <tr>
                        <td>${qlhm.maLSHM}</td>
                        <td>${qlhm.tenDHM}</td>
                        <td>${qlhm.tenNHM}</td>
                        <td>${qlhm.thoiGian}</td>
                        <td><a href="donateblupdate?sid=${qlhm.maLSHM}" class="btn btn-info"> ${qlhm.tinhTrang} </a></td>
                        <td>${qlhm.soLuongMau}</td>
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
