<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="../css/adminLogincss.css">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light bg-faded fixed-top">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="/admin">Admin Panel</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        </ul>
        <button type="button" class="btn btn-success btn-link" onclick="login()">Login</button>
        <button type="button" class="btn btn-success btn-link" onclick="signup()">SignUp</button>

    </div>
</nav>
<div style="margin-top: 65px;"></div>
<section id="adminLogin" class="container text-center">
    <h2>Login for Admin</h2>
    <div class="row jumbotron">
        <form method="post" action="admin/login" class="col-sm-6" style="margin: 0 auto;">
            <div class="form-group">
                <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="AdminName">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-success">Login</button>
        </form>
    </div>
</section>
<section id="adminSignup" class="container text-center" style="display: none;">
    <h2>Signup for Admin</h2>
    <div class="row jumbotron">
        <form method="post" action="admin/signup" class="col-sm-6" style="margin: 0 auto;">
            <div class="form-group">
                <input name="email" type="email" class="form-control" placeholder="Email" required>
            </div>
            <div class="form-group">
                <input name="adminName" type="text" class="form-control" placeholder="AdminName" required>
            </div>
            <div class="form-group">
                <input name="fullName" type="text" class="form-control" placeholder="Full Name" required>
            </div>
            <div class="form-group">
                <input name="password" type="password" class="form-control" placeholder="Password" required>
            </div>
            <div class="form-group">
                <input name="re-password" type="password" class="form-control" placeholder="Re-Password" required>
            </div>
            <button type="submit" class="btn btn-primary">Signup</button>
        </form>
    </div>
</section>
<script>
function login(){
        $("#adminSignup").hide();
        $("#adminLogin").show();
}

function signup(){
    $("#adminSignup").show();
    $("#adminLogin").hide();
}
</script>
</body>
</html>