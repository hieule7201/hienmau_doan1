<%-- 
    Document   : sphistory
    Created on : 20 Jun 2022, 14:07:11
    Author     : Minh Hieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/./base.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
        <title>Lịch sử hỗ trợ</title>
    </head>
    <body>
        <header>
        <jsp:include page="./header.jsp"/>
    </header>
    <div class="container py-5" style="font-size: 1.6rem; margin-top: 12.8rem;">
        <div class="row">
            <h1 style="color: var(--primary-color); text-align: center">Lịch sử hỗ trợ</h1>
            <table id="example" class="table table-striped" style="width:100%;">
                <thead style="background-color: var(--primary-color); color: var(--white-color);">
                    <tr>
                        <th>Mã lịch sử hỗ trợ</th>
                        <th>Tên đợt hiến máu</th>
                        <th>Thời gian</th>
                        <th>Tình trạng</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listB}" var="ls">
                    <tr>
                        <td>${ls.maLSHT}</td>
                        <td>${ls.tenDHM}</td>
                        <td>${ls.thoiGian}</td>
                        <td>${ls.tinhTrang}</td>
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
