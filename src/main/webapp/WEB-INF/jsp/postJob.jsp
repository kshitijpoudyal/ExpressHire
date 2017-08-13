<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Job Post</title>
</head>
<body>
<div class="header-top container-fluid">
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
                <a class="nav-link active" href="#">Profile</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

</div>

<section class="container">
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
</section>
</body>

</html>