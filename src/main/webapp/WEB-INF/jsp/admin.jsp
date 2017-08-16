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
            <header class="col-2 text-center">
                <img class="rounded" src="../profileImages/${adminProfile.imageLink}">
                <input style="margin-top: 10px; width:100%;" type="button" class="btn btn-success" value="Edit Profile"
                       data-toggle="modal" data-target="#exampleModal">
                <%--<div class="form-group">--%>
                <%--<label for="exampleFormControlFile1">Edit Profile Picture</label>--%>
                <%--<input type="file" class="form-control-file" id="exampleFormControlFile1">--%>
                <%--</div>--%>
            </header>
            <div class="col-10">
                <div class="row">
                    <p class="col-sm-2">Name</p>
                    <p class="col-sm-10">${adminProfile.fullName}</p>
                </div>
                <div class="row">
                    <p class="col-sm-2">Email</p>
                    <p class="col-sm-10">${adminProfile.email}</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Profile</h5>
                </div>
                <div class="modal-body container">
                    <form id="updateForm" method="post" action="/admin/editProfile" modelAttribute="admin" enctype="multipart/form-data">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="fullName" value="${adminProfile.fullName}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" name="email" value="${adminProfile.email}" required>
                            </div>
                        </div>
                        <%--<div class="form-group row">--%>
                            <%--<label class="col-sm-2 col-form-label">Address</label>--%>
                            <%--<div class="col-sm-10">--%>
                                <%--<input type="text" class="form-control" name="street" placeholder="Street"/>--%>
                                <%--<input type="text" class="form-control" name="city" placeholder="City"/>--%>
                                <%--<input type="text" class="form-control" name="state" placeholder="State"/>--%>
                                <%--<input type="text" class="form-control" name="country" placeholder="Country"/>--%>
                                <%--<input type="text" class="form-control" name="zipCode" placeholder="ZipCode"/>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <input type="hidden" name="id" value="${adminProfile.id}">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Profile Picture</label>
                            <div class="col-sm-10">
                                <input type="file" name="image" class="form-control-file">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button form="updateForm" type="submit" class="btn btn-primary">Update</button>
                </div>
            </div>
        </div>
    </div>

    <section id="applicantList" style="display: none">
        <h3>List of Applicants</h3>
        <c:forEach var="applicant" items="${applicantList}">
        <c:choose>
        <c:when test="${applicant.enabled == true}">
        <div class="row jumbotron alert-success">
            </c:when>
            <c:otherwise>
            <div class="row jumbotron alert-danger">
                </c:otherwise>
                </c:choose>
                <header class="col-2">
                    <img class="rounded" src="http://lorempixel.com/150/150">
                </header>
                <div class="col-8">
                    <div class="row">
                        <p class="col-sm-2">Name</p>
                        <p class="col-sm-10">${applicant.firstName} ${applicant.lastName}</p>
                    </div>
                    <div class="row">
                        <p class="col-sm-2">Email</p>
                        <p class="col-sm-10">${applicant.email}</p>
                    </div>
                    <div class="row">
                        <p class="col-sm-2">Address</p>
                        <p class="col-sm-10">Fairfield, Iowa</p>
                    </div>
                    <div class="row">
                        <p class="col-sm-2">Average Rating</p>
                        <p class="col-sm-10">
                            <c:forEach var="i" begin="1" end="${applicant.averageRating}">
                                &nbsp;<img style="width: 20px;" src="../img/star.png">
                            </c:forEach>
                        </p>
                    </div>
                </div>
                <div class="col-2">
                    <form method="post" action="/admin/deleteApplicant">
                        <input type="hidden" name="applicant_id" value="${applicant.id}">
                        <input type="submit" class="btn btn-danger" value="Delete Applicant">
                    </form>
                    <c:choose>
                        <c:when test="${applicant.enabled == true}">
                            <form method="post" action="/admin/blackListApplicant">
                                <input type="hidden" name="applicant_id" value="${applicant.id}">
                                <input type="submit" class="btn btn-dark" value="Disable Applicant">
                            </form>
                        </c:when>
                        <c:otherwise>
                            <form method="post" action="/admin/removeFromBlackListApplicant">
                                <input type="hidden" name="applicant_id" value="${applicant.id}">
                                <input type="submit" class="btn btn-dark" value="Enable Applicant">
                            </form>
                        </c:otherwise>
                    </c:choose>
                </div>
                <c:forEach var="job" items="${applicant.appliedJobs}">

                    <%--<c:if test="${job.approvedApplicant.id == applicant.id}">--%>
                    <div class="list-group" style="margin:15px; width: 100%;">
                        <div class="list-group-item active clearfix" data-toggle="collapse"
                             data-target="#job-${job.id}-applicant" style="color: #fff;">
                            <span class="lead"><strong>${job.title} </strong></span>&nbsp; | &nbsp;<span
                                class="lead text-right" data-toggle="tooltip" data-placement="right"
                                title="Category"> ${job.category}</span>


                        </div>
                        <span id="job-${job.id}-applicant" class="collapse">
                            <div class="list-group-item list-group-item-action" style="padding-top: 20px">
                                <div class="row" style="width: 100%">
                                    <div class="col-3 lead" data-toggle="tooltip" data-placement="left"
                                         title="Job Address"><img
                                            src="../img/location.png"/> ${applicant.address.street}, ${applicant.address.city}, ${applicant.address.state}, ${applicant.address.country}</div>
                                    <div class="col-3 lead" data-toggle="tooltip" data-placement="top"
                                         title="Duration"><img src="../img/time.png"/> ${job.duration} Hour(s)</div>
                                    <div class="col-3 lead" data-toggle="tooltip" data-placement="bottom"
                                         title="Rate"><img src="../img/dollar.png"/> ${job.duration} / Hour(s)</div>
                                    <div class="col-3 lead" data-toggle="tooltip" data-placement="right" title="Rating">
                                        <c:forEach var="i" begin="1" end="${job.reviewRating.rating}">
                                            &nbsp;<img style="width: 20px;" src="../img/star.png">
                                        </c:forEach>
                                    </div>
                                    <div class="col-12" data-toggle="tooltip" data-placement="left" title="Description"><hr>
                                            ${job.description}</div>
                                </div>
                                <hr>

                            </div>
                        </span>
                    </div>
                    <%--</c:if>--%>
                </c:forEach>
            </div>
            </c:forEach>
    </section>

    <section id="recruiterList" style="display: none">
        <h3>List of Recruiter</h3>
        <c:forEach var="recruiter" items="${recruiterList}">
        <c:choose>
        <c:when test="${recruiter.enabled == true}">
        <div class="row jumbotron alert-success">
            </c:when>
            <c:otherwise>
            <div class="row jumbotron alert-danger">
                </c:otherwise>
                </c:choose>
                <header class="col-2">
                    <img class="rounded" src="http://lorempixel.com/150/150">
                </header>
                <div class="col-8">
                        <%--<div class="row">--%>
                        <%--<p class="col-sm-2">Name</p>--%>
                        <%--<p class="col-sm-10">${recruiter.name}</p>--%>
                        <%--</div>--%>
                    <div class="row">
                        <p class="col-sm-2">Email</p>
                        <p class="col-sm-10">${recruiter.email}</p>
                    </div>
                    <div class="row">
                        <p class="col-sm-2">Address</p>
                        <p class="col-sm-10">Fairfield, Iowa</p>
                    </div>
                </div>
                <div class="col-2">
                    <form method="post" action="/admin/deleteRecruiter">
                        <input type="hidden" name="recruiter_id" value="${recruiter.id}">
                        <input type="submit" class="btn btn-danger" value="Delete Applicant">
                    </form>
                    <c:choose>
                        <c:when test="${recruiter.enabled == true}">
                            <form method="post" action="/admin/blackListRecruiter">
                                <input type="hidden" name="recruiter_id" value="${recruiter.id}">
                                <input type="submit" class="btn btn-dark" value="Disable Recruiter">
                            </form>
                        </c:when>
                        <c:otherwise>
                            <form method="post" action="/admin/removeFromBlackListRecruiter">
                                <input type="hidden" name="recruiter_id" value="${recruiter.id}">
                                <input type="submit" class="btn btn-dark" value="Enable Recruiter">
                            </form>
                        </c:otherwise>
                    </c:choose>
                </div>
                <c:forEach var="job" items="${recruiter.postedJobs}">

                    <%--<c:if test="${job.approvedApplicant.id == applicant.id}">--%>
                    <div class="list-group" style="margin:15px; width: 100%;">
                        <div class="list-group-item active clearfix" data-toggle="collapse"
                             data-target="#job-${job.id}-applicant" style="color: #fff;">
                            <span class="lead"><strong>${job.title} </strong></span>&nbsp; | &nbsp;<span
                                class="lead text-right" data-toggle="tooltip" data-placement="right"
                                title="Category"> ${job.category}</span>


                        </div>
                        <span id="job-${job.id}-applicant" class="collapse">
                            <div class="list-group-item list-group-item-action" style="padding-top: 20px">
                                <div class="row" style="width: 100%">
                                    <div class="col-3 lead" data-toggle="tooltip" data-placement="left"
                                         title="Job Address"><img
                                            src="../img/location.png"/> ${applicant.address.street}, ${applicant.address.city}, ${applicant.address.state}, ${applicant.address.country}</div>
                                    <div class="col-3 lead" data-toggle="tooltip" data-placement="top"
                                         title="Duration"><img src="../img/time.png"/> ${job.duration} Hour(s)</div>
                                    <div class="col-3 lead" data-toggle="tooltip" data-placement="bottom"
                                         title="Rate"><img src="../img/dollar.png"/> ${job.duration} / Hour(s)</div>
                                    <div class="col-3 lead" data-toggle="tooltip" data-placement="right"
                                         title="Rating Given">
                                        <c:forEach var="i" begin="1" end="${job.reviewRating.rating}">
                                            &nbsp;<img style="width: 20px;" src="../img/star.png">
                                        </c:forEach>
                                    </div>
                                    <div class="col-12" data-toggle="tooltip" data-placement="left" title="Description"><hr>
                                            ${job.description}</div>
                                </div>
                                <hr>

                            </div>
                        </span>
                    </div>
                    <%--</c:if>--%>
                </c:forEach>
            </div>
            </c:forEach>
    </section>
</section>

<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
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