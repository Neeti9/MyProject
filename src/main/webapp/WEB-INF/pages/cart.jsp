<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>  
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>

</head>
<body>


<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId })">
<table class="table table-striped">
<thead>

<tr><td><a href="" class="btn btn-danger" class="pull-left" ng-click="clearCart()">
<span class="glyphicon glyphicon-remove">Clear Cart</span></a></td></tr>
<tr>
<th>Name</th><th>Quantity</th><th>Total Price</th>
</tr>
</thead>

<tr ng-repeat="cartItem in cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>

<td><a href="" class="btn btn-danger" class="pull-left" ng-click="removeFromCart">
<span class="glyphicon glyphicon-remove">Remove</span></a>
</tr>

</table>

Total Price:{{calculateGrandTotal()}}

</div>
</div>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>


</body>
</html>