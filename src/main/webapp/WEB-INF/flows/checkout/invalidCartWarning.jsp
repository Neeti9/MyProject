<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/pages/header.jsp" %>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<h1>Invalid Cart!</h1>
</div>
</div>
</section>

<section>
<p><a href="<spring:url value="/product/productList"></spring:url>" class="btn btn-default">Products</a></p>
</section>
</div></div>

</body>

<%@ include file="/WEB-INF/pages/footer.jsp" %>
</html>