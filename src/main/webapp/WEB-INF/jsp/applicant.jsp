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
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">Express-Hire</a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link active" id="userProfileLink" href="#">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" id="jobListLink" href="#">JobList</a>
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

<section id="userProfile" class="container" style="margin-top: 65px;">
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

    <p>applicant profile here</p>
    <section>
        <c:forEach var="appliedJob" items="${applicantProfile.appliedJobs}">
            <div class="jumbotron">
                <div class="list-group" style="width: 100%;">
                    <a class="list-group-item active" data-toggle="collapse"
                       data-target="#job1" style="color: #fff;">
                            ${appliedJob.title} - Status
                    </a>
                    <span id="job1" class="collapse">

                    <a class="list-group-item list-group-item-action">
                        <ul>
                            <li>${appliedJob.title} - Status</li>
                            <li>${appliedJob.type}</li>
                            <li>${appliedJob.location}</li>
                            <li>${appliedJob.category}</li>
                            <li>${appliedJob.description}</li>
                        </ul>
                    </a>
                </span>
                </div>
            </div>
        </c:forEach>
    </section>

</section>

<section class="container" id="jobList" style="display: none">
    <section>
        <c:forEach var="job" items="${jobs}">
            <div class="jumbotron">
                <ul>
                    <li>${job.type}</li>
                    <li>${job.location}</li>
                    <li>${job.category}</li>
                    <li>${job.description}</li>
                </ul>
                <form method="post" action="applicant/applyJob">
                    <input type="hidden" name="job_id" value="${job.id}">
                    <input type="submit">
                </form>
            </div>
            </div>
        </c:forEach>
    </section>
</section>
<script>
    $(function () {
        $('#jobListLink').click(function (e) {
            e.preventDefault();
            $("#jobList").delay(100).fadeIn(100);
            $("#userProfile").fadeOut(100);
            $('#userProfileLink').removeClass('active');
            $(this).addClass('active');
        });

        $('#userProfileLink').click(function (e) {
            $("#userProfile").delay(100).fadeIn(100);
            $("#jobList").fadeOut(100);
            $('#jobListLink').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });

    });
</script>
</body>
</html>