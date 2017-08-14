<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup</title>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Express-Hire</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
                <a id="profile" class="nav-link" href="#">Profile</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<div id="login">
    <div class="container">
        <h2 class="text-center">Login</h2>
        <form>
            <div class="form-group row">
                <label for="firstName" class="col-sm-2">Email: </label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="login_email" placeholder="Email">
                </div>
            </div>
            <div class="form-group row">
                <label for="lastName" class="col-sm-2 col-form-label">Password: </label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="login_password" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <button id="login_btn" type="submit" class="btn btn-primary">Sign up</button>
            </div>
        </form>
        <hr>
        <br>
    </div>
</div>
<h2 class="text-center">Sign UP</h2>
<div id="#applicant_recruiter_option">
    <nav class="nav">
        <div class="container">
            <ul class="nav nav-tabs">
                <li  class="nav-item"><a id="profile_option" class="nav-link active profile_update_option" href="#">Profile</a></li>
                <li  class="nav-item"><a id="update_profile_option" class="nav-link profile_update_option" href="#">Update Profile</a></li>
            </ul>
        </div>
    </nav>

    <section id="applicant_profile_nav" class="container" style="margin-top: 65px;">
        <div class="row jumbotron">
            <header class="col-2">
                <img class="rounded" src="http://lorempixel.com/150/150">
            </header>
            <div class="col-10">
                <div class="row">
                    <p class="col-sm-2">FirstName: </p>
                    <p class="col-sm-10">${applicant.firstName}</p>
                </div>
                <div class="row">
                    <p class="col-sm-2">Last Name: </p>
                    <p class="col-sm-10">${applicant.lastName}</p>
                </div>
                <div class="row">
                    <p class="col-sm-2">Email</p>
                    <p class="col-sm-10">${applicant.email}</p>
                </div>
            </div>
        </div>
    </section>

    <div id="update_applicant_profile_nav">
        <div class="container">
            <form>
                <div class="form-group row">
                    <label for="firstName" class="col-sm-2">First Name: </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="firstName" placeholder="First Name">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="lastName" class="col-sm-2 col-form-label">Last Name: </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="lastName" placeholder="First Name">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="firstName" class="col-sm-2">Email: </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="applicant_email" placeholder="Email">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="firstName" class="col-sm-2">Password: </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="applicant_password" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <button id="applicant_update_btn" type="submit" class="btn btn-primary">Update Info</button>
                </div>
            </form>
        </div>
    </div>



</div>


</body>
</html>
