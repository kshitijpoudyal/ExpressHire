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
    <%--<h2>Login</h2>--%>
    <%--<div class="row">--%>
        <%--<div class="jumbotron col-center col-sm-6 text-center">--%>
            <%--<img class="rounded-circle" src="http://lorempixel.com/150/150">--%>
            <%--<form method="post" action="/login">--%>
                <%--&lt;%&ndash;<div class="form-group">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<select name="userType" class="form-control">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<option value="ADMIN">ADMIN</option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<option value="APPLICANT">APPLICANT</option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<option value="RECRUITER">RECRUITER</option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--<div class="form-group">--%>
                    <%--<input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Email"--%>
                           <%--name="username">--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<input type="password" class="form-control" placeholder="Password" name="password">--%>
                <%--</div>--%>
                <%--<button type="submit" class="btn btn-success">Login</button>--%>
            <%--</form>--%>
        <%--</div>--%>
    <%--</div>--%>
        <div>
            <div class="container">
                <h2 class="text-center">Login</h2>
                <form method="post" action="/login">
                    <div class="form-group row">
                        <label for="login_email" class="col-sm-2">Email: </label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="login_email" name="email" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login_password" class="col-sm-2 col-form-label">Password: </label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" name="password" id="login_password" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <button id="login_btn" type="submit" class="btn btn-primary">Login</button>
                    </div>
                </form>
                <hr>
                <br>
            </div>
        </div>
</section>
<section id="signup" class="container text-center" style="display: none;">
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
                        <label for="applicant_sign_up_email" class="col-sm-2">Email: </label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="applicant_sign_up_email" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="applicant_sign_up_password" class="col-sm-2">Password: </label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" id="applicant_sign_up_password" placeholder="Password">
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
                        <label for="companyName" class="col-sm-2">Company Name: </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="companyName" placeholder="Company Name">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="recruiter_sign_up_email" class="col-sm-2">Email: </label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="recruiter_sign_up_email" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="recruiter_sign_up_password" class="col-sm-2">Password: </label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" id="recruiter_sign_up_password" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <button id="recruiter_sign_up" type="submit" class="btn btn-primary">Sign up</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
    <%--<h2>Sign Up</h2>--%>
    <%--<div class="row">--%>
        <%--<div class="jumbotron text-center col-center col-sm-6">--%>
            <%--<form id="signupForm" method="post">--%>
                <%--<div class="form-group">--%>
                    <%--<select id="selectRole" name="userType" class="form-control">--%>
                        <%--<option value="APPLICANT">APPLICANT</option>--%>
                        <%--<option value="RECRUITER">RECRUITER</option>--%>
                        <%--<option value="ADMIN">ADMIN</option>--%>
                    <%--</select>--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<input name="email" type="email" class="form-control" placeholder="Email" required>--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<input name="fullName" type="text" class="form-control" placeholder="Full Name" required>--%>
                <%--</div>--%>
                <%--<div class="form-group recruiter">--%>
                    <%--<input name="fullName" type="text" class="form-control" placeholder="Company Name">--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<input name="password" type="password" class="form-control" placeholder="Password" required>--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<input name="re-password" type="password" class="form-control" placeholder="Re-Password" required>--%>
                <%--</div>--%>
                <%--<button type="submit" class="btn btn-primary">Sign Up</button>--%>
            <%--</form>--%>
        <%--</div>--%>
    <%--</div>--%>
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