<%-- 
    Document   : navbar
    Created on : Jan 21, 2022, 11:38:46 AM
    Author     : taola
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <header>
      <nav class="navbar bg-dark navbar-dark text-light">
        <a href="#"> <img class="logo" src="img/onlinelogomaker-011922-2055-7830.png" alt="" /></a>
        <div class="option-link d-flex">
          <div class="dropdown mx-2">
            <a class="btn btn-dark dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
              Vehicle
            </a>
            <ul class="dropdown-menu " aria-labelledby="dropdownMenuLink">
              <li><a class="dropdown-item " href="#">Moto</a></li>
              <li><a class="dropdown-item" href="#">Car</a></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </div>
          <div class="dropdown mx-2">
            <a class="btn btn-dark dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown link
            </a>
          
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </div>
          <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
              <li><button class="dropdown-item" type="button">Another action</button></li>
              <li><button class="dropdown-item" type="button">Something else here</button></li>
            </ul>
          </div>
         
            <a class="btn mx-2 btn-dark link-light" href="#">Brand</a>

        </div>
        <div class="navlink login logout">
          <a class="nav-link link-light " href="#">Login</a>
          <a class="nav-link link-light " href="#">Login</a>
          <a class="nav-link link-light " href="#">Sign up</a>
      </div>
      </div>
    </nav>
  </header>
