<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Job List</title>
</head>
<body>
<div class="container">
    <c:forEach var="job" items="${jobs}">
    <ul class="list-group">
        <li class="list-group-item">${job.title}</li>
        <li class="list-group-item">${job.type}</li>
        <li class="list-group-item">${job.location}</li>
        <li class="list-group-item">${job.category}</li>
        <li class="list-group-item">${job.description}</li>
    </ul>
    </c:forEach>
    <div></div>
</div>

</body>
</html>