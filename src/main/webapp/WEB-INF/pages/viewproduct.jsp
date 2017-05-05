<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

</head>
<body ng-app="app1" ng-controller="ProductController">

	<div>
		<div class="page-header">

			<b>PRODUCT DETAILS</b>

		</div>

		<table class="table">
			<tr>
				<td>Product Name:</td>
				<td>${product.name}</td>
			</tr>

			<tr>
				<td>Product Description:</td>
				<td>${product.description}</td>
			</tr>

			<tr>
				<td>Product Price:</td>
				<td>${product.price}</td>
			</tr>

			<tr>
				<td>Category Details:</td>
				<td>${product.category.categoryDetails}</td>
			</tr>

			<tr>
				<td>Manufacturing Date:</td>
				<td>${product.mfg}</td>
				
			</tr>
			<tr>
			
			<td>Add to Cart:</td>
			<td><a href="" ng-click="addToCart(${product.id})"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
			</tr>
		</table>

	</div>
	

</body>
<%@ include file="footer.jsp"%>
</html>