<%-- 
    Document   : motoList
    Created on : Feb 7, 2022, 12:28:15 PM
    Author     : taola
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

 
  <div class="container">
    
<!-- start list moto -->
<div class="newest-moto-product bg-warning text-light">
        <h3 class=" text-center text-dark pt-5"> Moto Product</h3>
        <br>
        <div class="p-5">
          <div class="row gy-5">
            <div class="col-sm-12 col-md-6 col-lg-4">
              <div class="box product bg-dark d-flex flex-column text-light p-4 h-100">
                <div class="card-img">
                  <img class="product-img" src="img/logo/onlinelogomaker-011922-2055-7830.png" alt="">
                </div>             
                <p class="discount-text">discount</p>
                  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Numquam iste earum veritatis ab aut, exercitationem unde quia eaque harum dolorum qui vel quisquam excepturi accusantium adipisci officia perferendis maxime officiis?</p>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, debitis minima. Velit quis laboriosam soluta hic quasi dignissimos sapiente et magni. Rem, et? Accusamus dolores, nesciunt atque labore quia facere!</p>
               <div class="mt-auto">
                <button type="button" class="btn btn-outline-secondary m-2"> <a href="#"></a>See more >> </button>
              <button type="button" class="btn btn-outline-secondary"> <a href="#"></a><i class="bi bi-cart-plus-fill"></i></button>
              </div>

          </div>
    123</div>
        
           
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
      
      <!-- end newest moto -->
      
    <!-- end container part -->
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
  </body>
</html>

