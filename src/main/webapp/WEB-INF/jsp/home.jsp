<%--
  Created by IntelliJ IDEA.
  User: kcp
  Date: `0/7/17
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Express Hire</title>

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
                <a class="nav-link active" href="#">Profile</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
<section class="container">
    <div class="row">
        <div class="col-10 jumbotron" style="margin: 0 auto;">
            <header class="row">
                <div class="col-2">
                    <img src="http://lorempixel.com/50/50" alt="user-image" class="rounded-circle">
                </div>
                <div class="col-10">
                    <h5>[Job Title] > <small>[Category]</small></h5>
                    <p>Offered By: [Username] in [Address]</p>
                </div>
            </header>
            <hr>
            <div>
                [description] Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
            </div>
            <hr>

            <hr>
        </div>
    </div>
</section>
</body>
</html>

