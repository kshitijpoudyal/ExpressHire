<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup</title>
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
                <a class="nav-link" href="#">Profile</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<div >
    <nav class="nav">
        <div class="container">

            <!-- Collect the nav links, forms, and other content for toggling -->

                <ul class="nav nav-tabs">
                    <li  id="applicant" class="nav-item active"><a class="nav-link active" href="#">Applicant</a></li>
                    <li id="recruiter" ><a class="nav-link" href="#">Recruiter</a></li>
                </ul>

            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid --> </nav>

    <div id="SignUp">

    </div>
</div>

<section class="container">
   <div style="margin: 0 auto">
       <form>
           <div class="form-group row">
               <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
               <div class="col-sm-10">
                   <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
               </div>
           </div>
           <div class="form-group row">
               <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
               <div class="col-sm-10">
                   <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
               </div>
           </div>
           <div class="form-group row">
               <div class="col-sm-10">
                   <button type="submit" class="btn btn-primary">Sign in</button>
               </div>
           </div>
       </form>
   </div>
</section>



<section class="container">
    Signup
    <div style="margin: 0 auto">
        <form>
            <div class="form-group row">
                <label for="inputEmail33" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail33" placeholder="Email">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword33" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword33" placeholder="Password">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Sign in</button>
                </div>
            </div>
        </form>
    </div>
</section>
</body>
</html>
