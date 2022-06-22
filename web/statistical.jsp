<%-- 
    Document   : statistical
    Created on : 22 Jun 2022, 16:40:52
    Author     : Minh Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/donateBL_manager.css">
    <link rel="stylesheet" href="./assets/css/statistical.css">
    <link rel="stylesheet" href="./assets/font/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
    <title>Thống kê</title>
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
            <h1 class="manager_title">Thống kê</h1>
            <div>
                <div class="statistical_container">
                    <div class="flex_container">
                        <div style="background-color: #ff6060;" class="item_flex">
                            <img src="./assets/images/NHM.jpg" style="width:150px; margin-bottom: 30px;" />
                            <h3 class="title_stat">Người hiến máu</h3>
                            <h1 class="number_stat">${nhm}</h1>
                        </div>
                        <div style="background-color: #b5b892;" class="item_flex">
                            <img src="./assets/images/SP.jpg" style="width:150px; margin-bottom: 30px;" />
                            <h3 class="title_stat">Tình Nguyện viên</h3>
                            <h1 class="number_stat">${tnv}</h1>
                        </div>
                        <div style="background-color: #ffdf8a;" class="item_flex">
                            <img src="./assets/images/bs.jpg" style="width:150px; margin-bottom: 30px;" />
                            <h3 class="title_stat">Nhân viên y tế</h3>
                            <h1 class="number_stat">${nvyt}</h1>
                        </div>
                        <div style="background-color: #95d0ca;" class="item_flex">
                            <img src="./assets/images/CV.jpg" style="width:150px; margin-bottom: 30px;" />
                            <h3 class="title_stat">Đợt hiến máu</h3>
                            <h1 class="number_stat">${dhm}</h1>
                        </div>
                        <div style="background-color: #d50000;" class="item_flex">
                            <img src="./assets/images/maus.jpg" style="width:150px; margin-bottom: 30px;" />
                            <h3 class="title_stat">Tổng máu đã hiến</h3>
                            <h1 class="number_stat">${slm}</h1>
                        </div>

                    </div>
                </div>
            </div>

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
