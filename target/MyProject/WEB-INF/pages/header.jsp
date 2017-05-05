<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
      
	</head>
<body>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav ">
			<li><a href="home">Home</a></li>
			<li><a href="aboutUs">About Us</a></li>
			
		<c:url var="url" value="/admin/product/productForm"></c:url>
				<li><a href="${url}">Add New Product</a></li>
	<c:url var="allProducts" value="/all/product/getAllProducts"></c:url>		
			<li><a href="${allProducts}">Browse All Products</a></li>
			
			<li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
			Select By Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<!--c:url var="url1" value="/all/product/productsByCategory?searchCondition=New Arrival"></c:url>
			<li><a href="${url1}">New Arrivals</a></li>
			<c:url var="url2" value="/all/product/productsByCategory?searchCondition=General"></c:url>
			<li><a href="${url2}">General</a></li>
			<c:url var="url3" value="/all/product/productsByCategory?searchCondition=Special Discount"></c:url>
			<li><a href="${url3}">Special Discount</a></li>
			<c:url var="url4" value="/all/product/productsByCategory?searchCondition=Hot Sale"></c:url>
			<li><a href="${url4}">Hot Sale</a></li-->
			
			<c:forEach var="c" items="${categories}">
			<li>
			<a href="<c:url"></a>
			</ul>
			</li>
			
			<li><a>Welcome </a></li>
			
			
			<li><a href="">Cart</a></li>
			
			
			
			
			<li><a href="">logout</a>
			
			
			<li><a href="">Login</a></li>
			
			<li><a href="">Register</a></li>
			
			
		</ul>
	</div>
	</nav>

</body>
</html>