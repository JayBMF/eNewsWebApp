<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>404 #thang</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body{
            height: 100vh;

        }
    </style>
</head>
<body>

<div class="container-fluid h-100">
    <div class="row h-100 align-items-center">
        <div class="col-sm-12 w-50 mx-auto">
            <div class="card shadow w-50 mx-auto">
                <div class="card-body">
                    <h1 class="card-title">Ooooops!</h1>
                    <h2 class="text-danger">404. Page not found</h2>
                    <p class="card-text">
                        Sorry, an error has occured. The requested page not found.
                    </p>
                    <div>
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/Home" role="button">
                            <i class="fa fa-home" aria-hidden="true"></i>
                            Home
                        </a>
                        <a class="btn btn-success" href="#" role="button">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            Contact Support
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
