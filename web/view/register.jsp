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
                <p <c:if test = "${Account == null}">
                        style="display:none;"
                    </c:if>> Your account or password already exists! Please create another</p>
                <div class="form-group">
                    <input type="text" class="form-control item" name="user" placeholder="Username"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.user}"
                               </c:when>
                           </c:choose>>
                </div>



                <div class="form-group">
                    <input type="password" class="form-control item" name="password"  placeholder="Password"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.pass}"
                               </c:when>
                           </c:choose>>
                </div>

                <div class="form-group">
                    <input type="password" class="form-control item" name="repass" placeholder="RePassword"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.pass}"
                               </c:when>
                           </c:choose>>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control item" name="email" placeholder="Email"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.email}"
                               </c:when>
                           </c:choose>>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control item" name="dis" placeholder="Displayname"
                           <c:choose>
                               <c:when test="${Account != null}">
                                   value="${Account.displayname}"
                               </c:when>
                           </c:choose>>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-block create-account">Create Account</button>
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
                    var email = document.getElementsByName("email")[0].value;
                    var dis = document.getElementsByName("dis")[0].value;
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

                    let regexEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                    if (!email.trim().match(regexEmail)) {
                        alert("email invalid!");
                        return false;
                    }

                    if (dis.trim() == "" || dis.trim() == null) {
                        alert("Displayname can't be blank");
                        return false;
                    }
                }
        </script>
    </body>
</html>
