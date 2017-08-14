<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Express Hire</title>
</head>
<body>
<div class="header-top container-fluid">
    <nav class="navbar navbar-toggleable-md fixed-top navbar-light bg-faded">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">Express-Hire</a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link active" id="userProfileLink" href="#">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" id="jobPostLink" href="#">JobPost</a>
                </li>

            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search">
                <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
            </form>
            <button form="logout" type="submit" class="btn btn-success btn-link">Logout</button>
        </div>
        <form id="logout" action="/logout" method="post">
        </form>
    </nav>

</div>
<section id="userProfile" class="container">
    <%--<div class="row jumbotron">--%>
        <%--<header class="col-2">--%>
            <%--<img class="rounded" src="http://lorempixel.com/150/150">--%>
        <%--</header>--%>
        <%--<div class="col-10">--%>
            <%--<div class="row">--%>
                <%--<p class="col-sm-2">User Name</p>--%>
                <%--<p class="col-sm-10">[userName]</p>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
                <%--<p class="col-sm-2">Full Name</p>--%>
                <%--<p class="col-sm-10">[firstName] [lastName]</p>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
                <%--<p class="col-sm-2">Email</p>--%>
                <%--<p class="col-sm-10">[email]</p>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
                <%--<p class="col-sm-2">Average Rating</p>--%>
                <%--<p class="col-sm-10">[averateRating]</p>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

        <div>
            <nav class="nav">
                <div class="container">
                    <ul class="nav nav-tabs">
                        <li  class="nav-item"><a id="profile_option" class="nav-link active profile_update_option" href="#">Profile</a></li>
                        <li  class="nav-item"><a id="update_profile_option" class="nav-link profile_update_option" href="#">Update Profile</a></li>
                    </ul>
                </div>
            </nav>

            <section id="profile_nav" class="container" style="margin-top: 65px;">
                <div class="row jumbotron">
                    <header class="col-2">
                        <img class="rounded" src="http://lorempixel.com/150/150">
                    </header>
                    <div class="col-10">
                        <div class="row">
                            <p class="col-sm-2">Company Name: </p>
                            <p class="col-sm-10">${recruiter.companyName}</p>
                        </div>
                        <div class="row">
                            <p class="col-sm-2">Email</p>
                            <p class="col-sm-10">${recruiter.email}</p>
                        </div>
                    </div>
                </div>
            </section>

            <div id="update_profile_nav">
                <div class="container">
                    <form>
                        <div class="form-group row">
                            <label for="companyName" class="col-sm-2">Company Name: </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="companyName"
                                       value="${recruiter.companyName}" placeholder="Company Name">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="recruiter_email" class="col-sm-2">Email: </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="recruiter_email"
                                       value="${recruiter.email}" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="recruiter_password" class="col-sm-2">Password: </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="recruiter_password" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <button id="recruiter_update_btn" type="submit" class="btn btn-primary">Update Info</button>
                        </div>
                    </form>
                </div>
            </div>



        </div>

        <%--<div id="loginSingUpContainer">--%>
            <%--<div id="profileContainer" class="container well">--%>
                <%--<legend> My Profile Information </legend>--%>
                <%--<form action="update" method="post">--%>
                    <%--<div class="form-group">--%>
                        <%--<label for="firstName">Company Name:</label> <input type="text"--%>
                                                                            <%--class="form-control" id="firstName" placeholder="First Name"--%>
                                                                            <%--name="firstName" required value="${recruiter.companyName }">--%>
                    <%--</div>--%>
                    <%--<button id="updateProfile" class="btn btn-lg btn-primary btn-block" type="submit">Update</button>--%>
                <%--</form>--%>
            <%--</div>--%>
        <%--</div>--%>
</section>

<section class="container" id="jobPost" style="display: none">
    <form action="jobPost" method="post">
        <div class="form-group left" >
            <label for="job-title">Job Title</label>
            <input type="text" class="form-control" id="job-title"  name="title">
        </div>
        <div class="form-group right">
            <label for="job-type">Job Type</label>
            <input type="text" class="form-control" id="job-type"  name="type">
        </div>
        <div class="form-group left">
            <label for="location">Location</label>
            <input type="text" class="form-control" id="location"  name="location">
        </div>
        <div class="form-group right">
            <label for="category">Category</label>
            <input type="text" class="form-control" id="category"  name="category">
        </div>
        <div class="form-group left">
            <label for="duration">Duration</label>
            <input type="text" class="form-control" id="duration"  name="duration">
        </div>
        <div class="form-group right">
            <label for="rate">Hourly Rate</label>
            <input type="text" class="form-control" id="rate"  name="hourlyRate">
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" rows="10" id="description"  name="description"> </textarea>
        </div>

        <button type="submit" class="btn btn-default">Submit</button>
    </form>

    <p>[Jobs Posted]</p>
    <div class="list-group" style="width: 100%;">
        <a class="list-group-item active" data-toggle="collapse"
           data-target="#job" style="color: #fff;">
            Job Title - Status
        </a>
        <span id="job" class="collapse">
            <a class="list-group-item list-group-item-action">
                <p>Job Description</p>
            </a>
            <a class="list-group-item list-group-item-action">
                    <form class="clearfix" style="width: 100%" action="/recruiter/job/reviewRating" method="POST">
                                    <input type="hidden" name="episode_id" value="applicantId"/>
                                    <input type="number" name="rating" placeholder="Rate out of 10"/>
                                    <textarea class="form-control" name="comment" type="text"
                                              placeholder="Review..."></textarea>
                                    <br>
                                    <input class="btn btn-outline-primary float-right" type="submit" value="Post"/>
                            </form>
            </a>
        </span>
    </div>
</section>
<script>
    $(function () {
        $('#jobPostLink').click(function (e) {
            e.preventDefault();
            $("#jobPost").delay(100).fadeIn(100);
            $("#userProfile").fadeOut(100);
            $('#userProfileLink').removeClass('active');
            $(this).addClass('active');
        });

        $('#userProfileLink').click(function (e) {
            $("#userProfile").delay(100).fadeIn(100);
            $("#jobPost").fadeOut(100);
            $('#jobPostLink').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });

    });
</script>
</body>
</html>