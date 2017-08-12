<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
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
            <li class="nav-item">
                <a class="nav-link" id="recruitersLink" href="/admin/recruiter">Recruiters</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="applicantLink" href="/admin/applicant">Applicants</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="/admin/profile">Profile</a>
            </li>
            <li class="nav-item">
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search User</button>
                </form>
            </li>
        </ul>
        <button type="button" class="btn btn-success btn-link">Logout</button>

    </div>
</nav>

<section id="adminProfile" class="container" style="margin-top: 65px;">
    <h3 id="applicant-head">List of Applicants</h3>
    <c:forEach var="admin" items="${adminProfile}">
    <div class="row jumbotron">
        <header class="col-2">
            <img class="rounded" src="http://lorempixel.com/150/150">
        </header>
        <div class="col-10">
            <div class="row">
                <p class="col-sm-2">Full Name</p>
                <p class="col-sm-10">${admin.fullName}</p>
            </div>
            <div class="row">
                <p class="col-sm-2">Email</p>
                <p class="col-sm-10">${admin.email}</p>
            </div>
            <div class="row">
                <p class="col-sm-2">AdminName</p>
                <p class="col-sm-10">${admin.adminName}</p>
            </div>
        </div>
    </div>
    </c:forEach>
</section>
</body>
</html>