<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

	<div id="loginSingUpContainer">
		<div id="profileContainer" class="container well">
			<legend> My Profile Information </legend>
			<form action="update" method="post">
				<div class="form-group">
					<label for="firstName">Company Name:</label> <input type="text"
						class="form-control" id="firstName" placeholder="First Name"
						name="firstName" required value="${recruiter.companyName }">
				</div>
				<button id="updateProfile" class="btn btn-lg btn-primary btn-block" type="submit">Update</button>
			</form>
		</div>
	</div>
</body>
</html>