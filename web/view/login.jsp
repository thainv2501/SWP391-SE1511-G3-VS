<%-- 
    Document   : Register
    Created on : Feb 6, 2022, 10:02:00 PM
    Author     : levan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" />" crossorigin="anonymous">
        <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="css/styleRegisterandLogin.css" />" rel="stylesheet">
    </head>
    <body>
        <!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->

        <div class="registration-form">
            <form action="login" method="post"> 
                <div class="form-icon">
                    <span><i class="icon icon-user"></i></span>
                </div>
                <p <c:if test = "${Account == null}">
                        style="display:none;"
                    </c:if>> Your account or password wrong! Please reenter</p>
                <div class="form-group">
                    <input type="text" class="form-control item" name="username" placeholder="Username"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.username}"
                               </c:when>
                           </c:choose>>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control item" name="password" placeholder="Password"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.password}"
                               </c:when>
                           </c:choose>>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-block create-account">Login</button>
                </div>
                <p> or </p>
                <div class="form-group">
                    <button onclick="window.location.href='./register'" type="button" class="btn btn-block create-account">Register</button>
                </div>
            </form>
            <div class="social-media">
                <h5>Sign in with social media</h5>
                <div class="social-icons">
                    <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
                    <a href="#"><i class="icon-social-google" title="Google"></i></a>
                    <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
                </div>
            </div>
        </div>
        <script src="<c:url value="https://code.jquery.com/jquery-3.2.1.min.js" />"></script>
        <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js" />"></script>
    </body>
</html>
