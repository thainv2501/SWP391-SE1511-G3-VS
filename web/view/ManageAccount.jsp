<%-- 
    Document   : ManageAccount
    Created on : Feb 6, 2022, 10:18:59 PM
    Author     : nqt26
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<!DOCTYPE html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap core CSS -->
     <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"/>
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <!-- custom CSS here -->
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
    <style>
        .table-wrapper {
    width: 1100px;
    margin: 30px auto;
    background: #fff;
    padding: 20px;	
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
    padding-top: 150px;
}
.table-title {
    padding-bottom: 10px;
    margin: 0 0 10px;
}
.table-title h2 {
    margin: 6px 0 0;
    font-size: 22px;
}
.table-title .add-new {
    float: right;
    height: 30px;
    font-weight: bold;
    font-size: 12px;
    text-shadow: none;
    min-width: 100px;
    border-radius: 50px;
    line-height: 13px;
}
.table-title .add-new i {
    margin-right: 4px;
    
}
table.table {
    table-layout: fixed;
    
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
    
}
table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
    
}
table.table th:last-child {
    width: 100px;
    
}
table.table td a {
    cursor: pointer;
    display: inline-block;
    margin: 0 5px;
    min-width: 24px;
    
}    
table.table td a.add {
    color: #27C46B;
}
table.table td a.edit {
    color: #FFC107;
}
table.table td a.delete {
    color: #E34724;
}
table.table td i {
    font-size: 19px;
    
}
table.table td a.add i {
    font-size: 24px;
    margin-right: -1px;
    position: relative;
    top: 3px;
    
}    
table.table .form-control {
    height: 32px;
    line-height: 32px;
    box-shadow: none;
    border-radius: 2px;
}
table.table .form-control.error {
      border-color: #f50000;
    
}
table.table td .add {
    display: none;
}

img{
    width: 190px;
}

.fade{
    padding-top: 80px;
    
}
.form-group input{
    width:180px;
    height: 30px
}

.modal-content{
    border-radius: 15px;
}

.btn-danger{
width: 140px;
border-radius: 20px;
}
.navlink{
    display: flex;
    flex-direction: row;
}
header{
    position:sticky;
    top: 0px;
    width: 100%;
    height: auto;
}
header img{
    width: 50%;
}
.row1{
    margin-bottom: 30px;
    margin-top: 20px;
}
.row h2{
    font-size: 30px;

}
.row a{
    font-size: 30px;
}
.row1 select{
    width: 100px;
    height: 30px;
}
body {
  
   * { box-sizing: border-box; }
}
    </style>
</head> 
<body>
        <header>
      <nav class="navbar bg-dark navbar-dark text-light ">
        <a href="#"> <img src="img/logo/onlinelogomaker-011922-2055-7830.png" alt="" /></a>
        <div class="navlink">
          <a class="nav-link link-light " href="#">Login</a>
          <a class="nav-link link-light " href="#">Login</a>
          <a class="nav-link link-light " href="#">Sign up</a>
        </div>
    </nav>
        </header>

<div class="container-fluid">
    <div class="col-md-3">
                <ul class="list-group">
                    <li class="list-group-item" ><a href=""> Quản lí tài khoản</a></li>
                    <li class="list-group-item"><a href="">Quản lí hóa đơn </a></li>
                    <li class="list-group-item"><a href="">Quản lí giao dịch</a></li>
                </ul>     
    </div>
    <div class="col-md-9">

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Tài khoản</th>
                        <th>Vai trò</th>
                        <th>Tên</th>
                        <th>Trạng thái</th>
                        <th>Mục điều chỉnh</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.bookk}" var="o">
                    <tr>
                        <td>                          
                            ${o}
                        </td>
                        <td>${o}</td>
                        <td>${o}</td>
                        <td>                          
                            <img src="${o}">
                        </td>
                        <td>                          
                            ${o}
                        </td>
                       
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
</div>


    <!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
