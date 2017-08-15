<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Express Hire</title>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light bg-faded fixed-top">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand text-success" href="/">Express Hire</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        </ul>
        <a href="#" class="nav-link" id="loginLink">Login</a>
        <a href="#" class="nav-link" id="signupLink">SignUp</a>

    </div>
</nav>
<div style="margin-top: 65px;"></div>
<section id="login" class="container text-center">
    <h2>Login</h2>
    <div class="row">
        <div class="jumbotron col-center col-sm-6 text-center">
            <img class="rounded-circle" src="http://lorempixel.com/150/150">
            <form method="post" action="/login">
                <div class="form-group">
                    <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Email"
                           name="username">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" name="password">
                </div>
                <button type="submit" class="btn btn-success">Login</button>
            </form>
        </div>
    </div>
</section>
<section id="signup" class="container text-center" style="display: none;">
    <h2>Sign Up</h2>
    <div class="row">
        <div class="jumbotron col-center col-sm-6 text-center">
            <div id="#applicant_recruiter_option">
                <nav class="nav justify-content-center">
                    <ul class="nav nav-tabs">
                        <li class="nav-item"><a id="applicant" class="nav-link active myOption" href="#">Applicant</a></li>
                        <li class="nav-item"><a id="recruiter" class="nav-link myOption" href="#">Recruiter</a></li>
                        <li class="nav-item"><a id="admin" class="nav-link myOption" href="#">Admin</a></li>
                    </ul>
                </nav>

                <div id="SignUpApplicant">
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" id="firstName" placeholder="First Name">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="lastName" placeholder="First Name">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="applicant_sign_up_email"
                                   placeholder="Email">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="applicant_sign_up_password"
                                   placeholder="Password">
                        </div>
                        <div class="form-group">
                            <button id="applicant_sign_up" type="submit" class="btn btn-primary">Sign up</button>
                        </div>
                    </form>
                </div>

                <div id="signUpRecruiter">

                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" id="companyName" placeholder="Company Name">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="recruiter_sign_up_email"
                                   placeholder="Email">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="recruiter_sign_up_password"
                                   placeholder="Password">
                        </div>
                        <div class="form-group">
                            <button id="recruiter_sign_up" type="submit" class="btn btn-primary">Sign up</button>
                        </div>
                    </form>
                </div>

                <div id="signUpAdmin">
                    <form id="signupForm" method="post" action="/admin/signup">
                        <div class="form-group">
                            <input name="email" type="email" class="form-control" placeholder="Email" required>
                        </div>
                        <div class="form-group">
                            <input name="fullName" type="text" class="form-control" placeholder="Full Name"
                                   required>
                        </div>
                        <div class="form-group">
                            <input name="password" type="password" class="form-control" placeholder="Password"
                                   required>
                        </div>
                        <div class="form-group">
                            <input name="re-password" type="password" class="form-control" placeholder="Re-Password"
                                   required>
                        </div>
                        <button type="submit" class="btn btn-primary">Sign Up</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>

    $(function () {
        $('#loginLink').click(function (e) {
            $("#login").delay(100).fadeIn(100);
            $("#signup").fadeOut(100);
            $('#signupLink').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });
        $('#signupLink').click(function (e) {
            $("#signup").delay(100).fadeIn(100);
            $("#login").fadeOut(100);
            $('#loginLink').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });

        $('#selectRole').change(function () {
            if ($("#selectRole").val() === "ADMIN") {
                $(".admin").show();
                $(".applicant").hide();
                //$(".applicant input").disabled;
                $('.applicant input').attr('disabled', 'disabled');
                $(".recruiter").hide();
                $('.recruiter input').attr('disabled', 'disabled');
                // $(".recruiter input").disabled();
                $("#signupForm").attr("action", "/admin/signup");

            } else if ($("#selectRole").val() === "APPLICANT") {

                $(".admin").hide();
                $(".admin input").disabled;
                $(".applicant").show();
                $(".recruiter").hide();
                $(".recruiter input").disabled;
                $("#signupForm").attr("action", "/applicantuser/signup");
            } else {
                $(".admin").hide();
                $(".admin input").disabled;
                $(".applicant").hide();
                $(".recruiter").show();
                $("#signupForm").attr("action", "/recruiteruser/signup");
            }
        });
    });
</script>
</body>
</html>