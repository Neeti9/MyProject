<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/pages/header.jsp" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<section>
<div class="jumbotron">
<div class="container">
<h1>
  <em>Thank You !!!</em>
</h1>
<p> Your order will be shipped in two days!</p>
</div></div></section>

<section class="container">
<p><a href="<spring:url value="/" ></spring:url>" class="btn btn-default">OK</a></p>
</section>
</div></div>

</body>
<%@ include file="/WEB-INF/pages/footer.jsp" %>
</html>