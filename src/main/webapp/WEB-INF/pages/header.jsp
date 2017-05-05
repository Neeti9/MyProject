<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      
      <!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
      
	</head>
<body>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav ">
			<li><a href="<c:url value="/home"></c:url>">Home</a></li>
			<li><a href="aboutUs">About Us</a></li>
			
		<c:url var="url" value="/admin/product/productForm"></c:url>
		<c:if test="${pageContext.request.userPrincipal.name!=null }">
		
	<security:authorize access="hasRole('ROLE_ADMIN')">
				<li><a href="${url}">Add New Product</a></li>
	</security:authorize>
	
	<c:url var="allProducts" value="/all/product/getAllProducts"></c:url>		
			<li><a href="${allProducts}">Browse All Products</a></li>
			
			<li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
			Select By Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
	
			<c:forEach var="c" items="${categories}">
			<li>
			<a href="<c:url value="/all/product/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>">${c.categoryDetails}</a>
			</li>
			</c:forEach>
			</ul>
			</li>
			
			<li><a href="">Welcome, ${pageContext.request.userPrincipal.name }</a></li>
			</c:if>
			
			<security:authorize access="hasRole('ROLE_USERS')">
			<li><a href="<c:url value="/cart/getCartId"></c:url>">Cart</a></li>
			</security:authorize>
			
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name==null }">
			<li><a href="<c:url value="/login"></c:url>">Login</a></li>
			
			<li><a href="<c:url value="/all/registrationForm"></c:url>">Register</a></li>
			</c:if>
			
		</ul>
	</div>
	</nav>

</body>
</html>