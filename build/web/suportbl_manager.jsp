<%-- 
    Document   : suportbl_manager
    Created on : 22 Jun 2022, 15:48:54
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
    <title>Quản lý đăng ký hỗ trợ</title>
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
            <h1 class="manager_title">Quản lý đăng ký hỗ trợ</h1>
            <table id="example" class="table table-striped" style="width:100%;">
                <thead class="thead_edit">
                    <tr>
                        <th>Mã</th>
                        <th>Tên đợt đăng ký</th>
                        <th>Tên Người hỗ trợ</th>
                        <th>Thời gian</th>
                        <th>Tình trạng</th>
                    </tr>
                    
                </thead>
                <tbody>
                <c:forEach items="${listQLHT}" var="qlht">
                    <tr>
                        <td>${qlht.maLSHT}</td>
                        <td>${qlht.tenDHM}</td>
                        <td>${qlht.tenTNV}</td>
                        <td>${qlht.thoiGian}</td>
                        <td><a href="suportblupdate?sid=${qlht.maLSHT}" class="btn btn-info"> ${qlht.tinhTrang} </a></td>
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
