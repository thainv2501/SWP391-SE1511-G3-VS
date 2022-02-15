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
            <form method="post" action="register" onsubmit="return validateform()">
                <div class="form-icon">
                    <span><i class="icon icon-user"></i></span>
                </div>
                <div>
                    <div style="float: left; margin-left: 40px; font-size: 20px">
                        <input type="radio" id="buyer" name="role" value="1" checked="checked">
                        <label style="color: #1e7e34">Buyer</label>
                    </div>
                    <div style="float: right; margin-right: 40px; font-size: 20px">
                        <input type="radio" id="seller" name="role" value="2">
                        <label style="color: #1e7e34">Seller</label><br>
                    </div>
                </div>
                <p <c:if test = "${Account == null}">
                        style="display:none;"
                    </c:if>> Your account or password already exists! Please create another</p>
                <div class="form-group">
                    <input type="text" class="form-control item" name="user" placeholder="Username"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.username}"
                               </c:when>
                           </c:choose>>
                </div>



                <div class="form-group">
                    <input type="password" class="form-control item" name="password"  placeholder="Password"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.password}"
                               </c:when>
                           </c:choose>>
                </div>

                <div class="form-group">
                    <input type="password" class="form-control item" name="repass" placeholder="RePassword"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.password}"
                               </c:when>
                           </c:choose>>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-block create-account">Create Account</button>
                </div>
                <div class="form-group">
                    <button onclick="window.location.href='./login'" type="button" class="btn btn-block create-account">Login</button>
                </div>
            </form>
            <div class="social-media">
                <h5>Sign up with social media</h5>
                <div class="social-icons">
                    <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
                    <a href="#"><i class="icon-social-google" title="Google"></i></a>
                    <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
                </div>
            </div>
        </div>
        <script src="<c:url value="https://code.jquery.com/jquery-3.2.1.min.js" />"></script>
        <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js" />"></script>
        <script>
                            function validateform() {
                                var user = document.getElementsByName("user")[0].value;
                                var pass = document.getElementsByName("password")[0].value;
                                var repass = document.getElementsByName("repass")[0].value;
                                var btn = document.getElementById("seller");
                                if (user.trim() == "" || user.trim() == null) {
                                    alert("Username can't be blank");
                                    return false;
                                }
                                if (pass.trim().length < 6) {
                                    alert("Password must be at least 6 characters long and not blank");
                                    return false;
                                }
                                if (pass.trim() != repass.trim()) {
                                    alert("Repassword must be same!");
                                    return false;
                                }
                            }

        </script>
    </body>
</html>
