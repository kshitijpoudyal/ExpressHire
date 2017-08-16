<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Express Hire | Recruiter</title>
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
                <li class="nav-item">
                    <a class="nav-link active" id="jobListLink" href="#">Posted Jobs</a>
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
<div class="container">
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

        <p>recruiter profile</p>

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
    <form action="/jobPost" method="post">
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

        <input type="hidden" name="recruiter_id" value="${recruiterProfile.id}">

        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</section>
<section id="jobList" style="display: none">
    <p>Jobs Posted</p>
        <c:forEach var="postedJob" items="${recruiterProfile.postedJobs}">
        <div class="list-group" style="width: 100%;">
            <a class="list-group-item active" data-toggle="collapse" id="title_${postedJob.id}"
               data-target="#job_${postedJob.id}" style="color: #fff;">
                ${postedJob.title} - ${postedJob.jobStatus}
            </a>
            <span id="job_${postedJob.id}" class="collapse">
            <a class="list-group-item list-group-item-action">
                <p>${postedJob.description}</p>
            </a>
                <ul>
                <li class="applicant">Applicants :</li>
                <form action="/recruiter/approvedJobs" method="post">
                <c:forEach var="app" items="${postedJob.applicants}">
                    <input type="hidden" name="job_id" value="${postedJob.id}"/>
                    <input type="hidden" name="applicantId" value="${app.id}"/>


                    <a href="#"><li class="list-group">${app.firstName}></a> <input class="btn btn-outline-primary " type="submit" value="Approve"/> </li>

                </c:forEach>
                    </form>

                    </ul>
                    <c:choose>
                    <c:when test="${postedJob.jobStatus =='COMPLETED'}">
            <a class="list-group-item list-group-item-action">
                    <form class="clearfix" style="width: 100%" action="/reviewRating" method="POST">
                                    <input type="hidden" name="job_id" value="${postedJob.id}"/>
                                    <input type="number" name="rating" placeholder="Rate out of 10"/>
                                    <textarea class="form-control" name="comment" type="text"
                                              placeholder="Review..."></textarea>
                                    <br>
                                    <input class="btn btn-outline-primary float-right" type="submit" value="Post"/>
                            </form>
            </a>
                    </c:when>
                    </c:choose>
        </span>
        </div>
    </c:forEach>
</section>
</div>
<script>
    $(function () {
        $('#jobPostLink').click(function (e) {
            e.preventDefault();
            $("#jobPost").delay(100).fadeIn(100);
            $("#userProfile").fadeOut(100);
            $("#jobList").fadeOut(100);
            $('#userProfileLink').removeClass('active');
            $('#jobListLink').removeClass('active');
            $(this).addClass('active');
        });

        $('#userProfileLink').click(function (e) {
            $("#userProfile").delay(100).fadeIn(100);
            $("#jobPost").fadeOut(100);
            $("#jobList").fadeOut(100);
            $('#jobPostLink').removeClass('active');
            $('#jobListLink').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });

        $('#jobListLink').click(function (e) {
            $("#jobList").delay(100).fadeIn(100);
            $("#jobPost").fadeOut(100);
            $("#userProfile").fadeOut(100);
            $('#jobPostLink').removeClass('active');
            $('#userProfileLink').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });

       <%--$('#title_${postedJob.id}').click(function (e) {--%>
            <%--$('#job_${postedJob.id}').removeClass('collapse');--%>
           <%--$(this).addClass('active');--%>
           <%--$('.list-group span').css("display", "block");--%>
           <%--e.preventDefault();--%>

        <%--});--%>


    });
</script>
</body>
</html>