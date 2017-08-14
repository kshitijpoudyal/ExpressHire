<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Express Hire</title>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Express-Hire</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="#">Profile</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
<section id="userProfile" class="container" style="margin-top: 65px;">
    <div class="row jumbotron">
        <header class="col-2">
            <img class="rounded" src="http://lorempixel.com/150/150">
        </header>
        <div class="col-10">
            <div class="row">
                <p class="col-sm-2">User Name</p>
                <p class="col-sm-10">[userName]</p>
            </div>
            <div class="row">
                <p class="col-sm-2">Full Name</p>
                <p class="col-sm-10">[firstName] [lastName]</p>
            </div>
            <div class="row">
                <p class="col-sm-2">Email</p>
                <p class="col-sm-10">[email]</p>
            </div>
            <div class="row">
                <p class="col-sm-2">Average Rating</p>
                <p class="col-sm-10">[averateRating]</p>
            </div>
        </div>
    </div>
    <%--<sec:authorize access="hasRole('APPLICANT')">--%>
        <section>
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
    <%--</sec:authorize>--%>
    <%--<sec:authorize access="hasRole('APPLICANT')">--%>
        <%--<section>--%>
            <%--<p>[Jobs Applied]</p>--%>
            <%--<div class="list-group" style="width: 100%;">--%>
                <%--<a class="list-group-item active" data-toggle="collapse"--%>
                   <%--data-target="#job1" style="color: #fff;">--%>
                    <%--Job Title - Status--%>
                <%--</a>--%>
                <%--<span id="job1" class="collapse">--%>
            <%--<a class="list-group-item list-group-item-action">--%>
            <%--<p>Job Description</p>--%>
            <%--</a>--%>
            <%--</span>--%>
            <%--</div>--%>
        <%--</section>--%>
    <%--</sec:authorize>--%>
</section>
</body>
</html>