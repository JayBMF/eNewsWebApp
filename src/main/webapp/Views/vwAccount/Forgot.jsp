<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Báo điện tử</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            height: 100vh;
        }
    </style>
</head>
<body>
<div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ">
                <li class="nav-item active d-flex btn btn-lg btn-info btn-block">
                    <i class="fa fa-home mt-3" aria-hidden="true"></i>
                    <a class="nav-link" href="${pageContext.request.contextPath}/Home">Home <span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<div class="container-fluid h-100">
    <div class="row h-100 justify-content-center align-items-center">
        <div class="col-sm-4">
            <form action="../Views/vwAccount/otp/process.jsp" method="post">
                <div class="form-group">
                    <label class="sr-only" for="txtUsername">Username</label>
                    <div class="input-group">
                        <input type="text" class="form-control form-control-lg border-right-0" id="txtUsername" name="username" autofocus placeholder="Username">
                        <div class="input-group-append">
                            <span class="input-group-text bg-white">
                              <i class="fa fa-user" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="sr-only" for="txtUsername">Email</label>
                    <div class="input-group">
                        <input type="email" class="form-control form-control-lg border-right-0" id="txtEmail" name="email" autofocus placeholder="Email">
                        <div class="input-group-append">
                            <span class="input-group-text bg-white">
                              <i class="fa fa-user" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="sr-only" for="txtcodeotp">Mã OTP</label>
                    <div class="input-group">
                        <input type="text" class="form-control form-control-lg border-right-0" id="txtcodeotp" name="Code_opt" placeholder="Mã OTP">
                        <div class="input-group-append">
                            <span class="input-group-text bg-white">
                              <i class="fa fa-key" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group d-flex">
                    <div class="flex-fill ml-1">
                        <button type="submit" class="btn btn-lg btn-info btn-block">
                            <i class="fa fa-sign-in" aria-hidden="true"></i>
                            Lấy mã
                        </button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>