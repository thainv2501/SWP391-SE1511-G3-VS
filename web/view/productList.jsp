<%-- 
    Document   : motoList
    Created on : Feb 7, 2022, 12:28:15 PM
    Author     : taola
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>Home page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="css/style.css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    </head>
    <body>
        <jsp:include page="navbar.jsp"></jsp:include>

            <!-- search sort filter -->
            <div class="row w-100">
                <div class="col search sort  ">
                    <p class="m-2 border-bottom text-center">Search and filter </p>
                    <form action="search" method="post">
                        <div class="input-group mb-3 ">
                            <input type="text" class="form-control" name="keyWord" placeholder="Key word" required="true" >
                            <button class="btn btn-outline-secondary" type="submit" >Search</button>
                        </div>
                    </form>

                    <form action="">
                        <select class="form-select" aria-label="Default select example">
                            <option selected>Open this select menu</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                        <button class="btn btn-outline-secondary w-100" type="submit" >Filter</button>
                    </form>
                    <div class="category border border-dark m-2 rounded">
                        <ul >
                            <li ><h6 class="dropdown-header border-bottom">Categori</h6></li>
                            <li class="active"><a class="dropdown-item border-bottom" href="#" >Action</a></li>
                            <li><a class="dropdown-item border-bottom" href="#">Another action</a></li>
                        </ul>

                    </div>
                </div>
                <!-- start list moto -->
                <div class="col-10 newest-moto-product bg-warning text-light">
                    <h3 class=" text-center text-dark pt-5 border-bottom"> ${vtName} Product</h3>
                <br>
                <div class="p-5">
                    <div class="row gy-5">
                        <c:forEach items="${availableProduct}" var="p">
                            <div class="col-sm-12 col-md-6 col-lg-4">
                                <div class="box rounded product bg-dark d-flex flex-column text-light p-4 h-100">
                                    <section class="card-img">
                                        <section class="text-end"><span class="vehicle__badge vehicle__badge--special">Special Value</span></section>

                                        <img class="product-img" src="${p.img}" alt="">
                                    </section>             
                                    <section class="vehicle-header">
                                        <h2 class="product-tiltle">${p.name}</h2>
                                        <h2 class="product-price"> ${p.price}$</h3>

                                    </section>
                                    <div class="mt-auto">
                                        <button type="button" class="btn btn-outline-secondary m-2"> <a href="#"></a>See more >> </button>
                                        <button type="button" class="btn btn-outline-secondary"> <a href="#"></a><i class="bi bi-cart-plus-fill"></i></button>
                                    </div>

                                </div>
                                123</div>
                            </c:forEach>



                    </div>
                </div>

                <!-- paging -->
                <div class="pt-3 d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- end newest moto -->
<!-- footer  -->
<footer class="bg-dark text-light">
    <div class="tiltle information">
        <h3  >More information</h3>
        <button type="button" class="btn btn-outline-secondary"> <a href="#"></a> <i class="bi bi-instagram"></i></button>
        <button type="button" class="btn btn-outline-success"> <a href="#"></a> <i class="bi bi-instagram"></i></button>
        <button type="button" class="btn btn-outline-success"> <a href="#"></a> <i class="bi bi-instagram"></i></button>
        <br>
    </div>
    <div class="tiltle address">
        <h3  >Address</h3>
        <p>SWP301-SE1511-JS</p>

    </div>
</footer>
<!-- end footer -->

<!-- script link -->
<script src="myjs.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>

