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
                    <li  class="nav-item"><a id="applicant" class="nav-link active myOption" href="#">Applicant</a></li>
                    <li  class="nav-item"><a id="recruiter" class="nav-link myOption" href="#">Recruiter</a></li>
                </ul>
        </div>
    </nav>

    <div id="SignUpApplicant">
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
                    <button id="applicant_sign_up" type="submit" class="btn btn-primary">Sign up</button>
                </div>
            </form>
        </div>
    </div>

    <div id="signUpRecruiter">

        <div class="container">
            <form>
                <div class="form-group row">
                    <label for="firstName" class="col-sm-2">Company Name: </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="companyName" placeholder="Company Name">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="firstName" class="col-sm-2">Email: </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="recruiter_email" placeholder="Email">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="firstName" class="col-sm-2">Password: </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="recruiter_password" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <button id="recruiter_sign_up" type="submit" class="btn btn-primary">Sign up</button>
                </div>
            </form>
        </div>
    </div>

</div>


</body>
</html>
