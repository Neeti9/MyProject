<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset=utf8>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Login</title>
</head>
<body>
ENTER USERNAME AND PASSWORD<br>

${error}
${logout}
${registrationSuccess}

	<div class="container-fluid">
		<form  name="loginForm" action="<c:url value="j_spring_security_check"></c:url>" method="post">
			<div class="form-input">
				<label for="text"><b>Username:</b></label>
				 <input type="text" name="j_username" placeholder=" Enter username ">
			</div>
			<div class="form-input">
				<label for="password"><b>Password:</b></label>
				 <input type="password" name="j_password" placeholder=" Enter password ">
			</div>
			<div class="checkbox">
				<label><input type="checkbox">Remember me</label>
			</div>
			
			<div>
				<input type="submit" value="submit">
			</div>
		</form>
	</div>

</body>
<%@ include file="footer.jsp"%>
</html>