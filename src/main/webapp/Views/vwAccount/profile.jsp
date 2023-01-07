<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    #Thang
<%--<jsp:useBean id="authUser" scope="session" type="com.example.enewswebapp.beans.User"/>--%>
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
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/Account/profile">Thông tin người dùng <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active d-flex">
                    <i class="fa fa-plus mt-3 " aria-hidden="true"></i>
<%--                    <a class="nav-link" href="#">Đăng bài <span class="sr-only">(current)</span></a>--%>
                    <a class="btn btn-lg btn-info btn-block" href="${pageContext.request.contextPath}/MiscServlet/Upload" role="button">
                        Đăng bài
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<div>
    <c:choose>
        <c:when test="${auth}">
            <table class="table">
                <tbody>
                <tr>
                    <th scope="row">Họ tên</th>
                    <td>${auther.username}</td>
                </tr>
                <tr>
                    <th scope="row">Bút Danh</th>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Email</th>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Ngày sinh</th>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <table class="table">
                <tbody>
                <tr>
                    <th scope="row">Họ tên</th>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Bút Danh</th>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Email</th>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Ngày sinh</th>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </c:otherwise>
    </c:choose>
    <div class="flex-fill ml-1">
        <a class="btn btn-lg btn-info btn-block" href="${pageContext.request.contextPath}/Account/changepass" role="button">
            Đổi mật khẩu
        </a>
    </div>

</div>



<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>