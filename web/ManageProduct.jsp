<%-- 
    Document   : ManageProduct
    Created on : Jul 9, 2021, 12:56:23 AM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Vehicle Shopping</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
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
    </style>
<!--

-->

    <!-- Additional CSS Files -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
   
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
  </head>

  <body>


    <!-- Header -->
     <header>
      <nav class="navbar bg-dark navbar-dark text-light">
        <a href="#"> <img src="img/logo/onlinelogomaker-011922-2055-7830.png" alt="" /></a>
        <div class="navlink">
          <a class="nav-link link-light " href="#">Login</a>
          <a class="nav-link link-light " href="#">Login</a>
          <a class="nav-link link-light " href="#">Sign up</a>
              
 
      </div>
      </div>
    </nav>
  </header>

    <!-- Page Content -->
    <div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-4"><a class="link-dark" href="#">Manage <b>Products</b></a></div>
                    <div class="col-sm-4"><a class="link-dark" href="#">Report <b>List</b></a></div>
                    <div class="col-sm-4"><a class="link-dark" href="#">Pre-order <b>Customers</b></a></div>
                </div>
                <div class="row1">
                    <form class="navbar-form navbar-right" action="search" method="get" >
                        
                     <select name="genreid" onchange="location = this.value;">
                <option value="0">Brand</option>
                <c:forEach items="${requestScope.cate}" var="o">
                    <option  value="category?genreid=${o.genreid}"> ${o.catename} </option>
                </c:forEach> </select>
                        
                <input value="${title}" name="txt" type="text" class="SearchBox" placeholder="Product Name"></li>
          
               <input type="submit" class="SearchButton" value="Search"\>  <i class="fa fa-search"></i></li>
          
       
    </form>
            <a href="#addBook" type="button" class="btn btn-info add-new" data-toggle="modal"><i class="fa fa-plus"></i> Add New</a>
                    </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Product Name</th>
                        <th>Image</th>
                        <th>Brand</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.bookk}" var="o">
                    <tr>
                        <td>
                            ${o.title}
                        </td>
                        <td>
                            <img src="${o.image}">
                        </td>
                        <td>${o.language}</td>
                        <td>${o.price}Đ</td>
                        <td>
                        
                            <a href="loadedit?bid=${o.bookID}" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a href="delete?bid=${o.bookID}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>  
    
<div id="addBook" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add New Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                             
                            <div class ="col-md-6">
                            <div class="form-group">
                                <label>Product Name</label>
                                <input name="title" class="form-control" required></input>
                            </div>
                     
                            
                            <div class="form-group">
                                <label>Type</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required placeholder="VNĐ">
                            </div>
                            
                             <div class="form-group">
                                <label>Author</label>
                                <input name="author" class="form-control" required></input>
                            </div>
                                <div class="form-group">
                                <label>Brand</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${requestScope.cate}" var="o">
                                        <option value="${o.genreid}">${o.catename}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            </div>
       
                            
                                <div class="col-md-6">
                            <div class="form-group right">
                                <label>Made In</label>
                                <input name="nopage" class="form-control" required></input>
                            </div>
                            <div class="form-group right">
                                <label>Manufacture Year</label>
                                <input name="pyear" class="form-control" required></input>
                            </div>
                            
                            <div class="form-group right">
                                <label>Image</label>
                                <input name="publisher" class="form-control" required></input>
                            </div>
                                 <div class="form-group right">
                                <label>Quantity</label>
                                <input name="quantity" class="form-control" required></input>
                            </div>   
                            </div>
                            </div>
                                
                            
                            
                            
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            

                        </div>
                        
                       
                        
                        <div class="modal-footer">
                            <a type="button" class="btn btn-default" data-dismiss="modal">Cancel</a>
                            <input type="submit" class="btn btn-danger" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    
 


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"
    ></script>


    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


  </body>

</html>
