<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
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


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <a class="navbar-brand" href="/admin">Admin Panel</a>
            <li class="nav-item">
                <a class="nav-link active" id="profileLink" href="#">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="recruitersLink" href="#">Recruiters</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="applicantLink" href="#">Applicants</a>
            </li>
        </ul>
        <form action="/logout" method="post">
            <button type="submit" class="btn btn-success btn-link">Logout</button>
        </form>
    </div>
</nav>

<div style="margin-top: 75px;"></div>
<section class="container">
    <section id="adminProfile">
        <h3>Profile</h3>
        <div class="row jumbotron">
            <header class="col-2">
                <img class="rounded" src="http://lorempixel.com/150/150">
            </header>
            <div class="col-10">
                <div class="row">
                    <p class="col-sm-2">Full Name</p>
                    <p class="col-sm-10">${adminProfile.fullName}</p>
                </div>
                <div class="row">
                    <p class="col-sm-2">Email</p>
                    <p class="col-sm-10">${adminProfile.email}</p>
                </div>
            </div>
        </div>
    </section>

    <section id="applicantList" style="display: none">
        <h3>List of Applicants</h3>
        <%--<c:forEach var="applicant" items="applicantList">--%>
            <div class="row jumbotron">
                <header class="col-2">
                    <img class="rounded" src="http://lorempixel.com/150/150">
                </header>
                <div class="col-8">
                    <div class="row">
                        <p class="col-sm-2">Name</p>
                        <p class="col-sm-10">Kshitij Chandra</p>
                    </div>
                    <div class="row">
                        <p class="col-sm-2">Email</p>
                        <p class="col-sm-10">kshitij@kshitij</p>
                    </div>
                    <div class="row">
                        <p class="col-sm-2">Address</p>
                        <p class="col-sm-10">Fairfield, Iowa</p>
                    </div>
                    <div class="row">
                        <p class="col-sm-2">Average Rating</p>
                        <p class="col-sm-10">4.5</p>
                    </div>
                </div>
                <div class="col-2">
                    <form method="post" action="#">
                    <%--<form method="post" action="/admin/removeUser">--%>
                        <button type="submit" class="btn btn-danger">Delete Applicant</button>
                    </form>

                    <form method="post" action="#">
                    <%--<form method="post" action="/admin/blackListUser">--%>
                        <button type="submit" class="btn btn-dark">Add to BlackList</button>
                    </form>
                </div>

                <div class="list-group" style="margin:15px; width: 100%;">
                    <a class="list-group-item active" data-toggle="collapse"
                       data-target="#job2" style="color: #fff;">
                        Job Title | Rating - 4.5
                    </a>
                    <span id="job2" class="collapse">
                <a class="list-group-item list-group-item-action">
                    <p>Job Description</p>
                </a>
            </span>
                </div>
            </div>
        <%--</c:forEach>--%>
    </section>

    <section id="recruiterList" style="display: none">
        <h3>List of Recruiter</h3>
        <%--<c:forEach var="recruiter" items="recruiterList">--%>
            <div class="row jumbotron">
                <header class="col-2">
                    <img class="rounded" src="http://lorempixel.com/150/150">
                </header>
                <div class="col-8">
                    <div class="row">
                        <p class="col-sm-2">Name</p>
                        <p class="col-sm-10">Kshitij Chandra Poudyal</p>
                    </div>
                    <div class="row">
                        <p class="col-sm-2">Email</p>
                        <p class="col-sm-10">kcpoudyal@gmail.com</p>
                    </div>
                    <div class="row">
                        <p class="col-sm-2">Address</p>
                        <p class="col-sm-10">Fairfield, Iowa</p>
                    </div>
                </div>
                <div class="col-2">
                    <button type="button" class="btn btn-danger">Delete Recruiter</button>
                    <p></p>
                    <button type="button" class="btn btn-dark">Add to BlackList</button>
                </div>

                <div class="list-group" style="margin:15px; width: 100%;">
                    <a class="list-group-item active" data-toggle="collapse"
                       data-target="#job" style="color: #fff;">
                        Job Title
                    </a>
                    <span id="job" class="collapse">
                <a class="list-group-item list-group-item-action">
                    <p>Job Description</p>
                </a>
            </span>
                </div>
            </div>
        <%--</c:forEach>--%>
    </section>
</section>

<script>
    $(function () {
        $('#profileLink').click(function (e) {
            $("#adminProfile").delay(100).fadeIn(100);
            $("#applicantList").fadeOut(100);
            $("#recruiterList").fadeOut(100);
            $('#applicantLink').removeClass('active');
            $('#recruitersLink').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });

        $('#applicantLink').click(function (e) {
            $("#applicantList").delay(100).fadeIn(100);
            $("#adminProfile").fadeOut(100);
            $("#recruiterList").fadeOut(100);
            $('#profileLink').removeClass('active');
            $('#recruitersLink').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });

        $('#recruitersLink').click(function (e) {
            $("#recruiterList").delay(100).fadeIn(100);
            $("#applicantList").fadeOut(100);
            $("#adminProfile").fadeOut(100);
            $('#applicantLink').removeClass('active');
            $('#profileLink').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });

    });
</script>
</body>
</html>