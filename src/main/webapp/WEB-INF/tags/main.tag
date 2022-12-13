<%@ tag pageEncoding="utf-8" %>
<%--<%@attribute name="css" fragment="true" required="false" %>--%>
<%--<%@attribute name="js" fragment="true" required="false" %>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>E-Newspaper Web Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%--    <jsp:invoke fragment="css" />--%>
</head>
<body>
<jsp:include page="../../Views/partials/NavBar.jsp" />
<div class="container-fluid mt-4 mb-3">
    <div class="row">
        <div class="col-sm-3">
            <jsp:include page="../../Views/partials/Left.jsp" />
        </div>
        <div class="col-sm-7">
            <jsp:doBody/>
        </div>
        <div class="col">
            <jsp:include page="../../Views/partials/Right.jsp" />
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<%--<jsp:invoke fragment="js"/>--%>
</body>
</html>
