<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ include file="/WEB-INF/pages/header.jsp" %>
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
<div class="page-header">

<h1>Customer</h1>

<p class="lead">Customer Details:</p>

</div>

<form:form commandName="order" class="form-horizontal">

<h3>Basic Information:</h3>

<div class="form-group">
<label for="firstname">First Name</label>
<form:input path="cart.customer.firstname" id="firstname" class="form-control"/>
</div>

<div class="form-group">
<label for="lastname">Last Name</label>
<form:input path="cart.customer.lastname" id="lastname" class="form-control"/>
</div>

<div class="form-group">
<label for="email">Email</label>
<form:input path="cart.customer.email" id="email" class="form-control"/>
</div>

<div class="form-group">
<label for="phone">Phone</label>
<form:input path="cart.customer.phonenumber" id="phonenumber" class="form-control"/>
</div>

<br/>

<h3>Billing Address:</h3>

<div class="form-group">
<label for="billingStreet">Street Name</label>
<form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control" />
</div>

<div class="form-group">
<label for="billingApartmentNumber">Street Name</label>
<form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
</div>

<div class="form-group">
<label for="billingCity">City</label>
<form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-control"/>
</div>

<div class="form-group">
<label for="billingState">State</label>
<form:input path="cart.customer.billingAddress.state" id="billingState" class="form-control"/>
</div>

<div class="form-group">
<label for="billingCountry">Country</label>
<form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-control"/>
</div>

<div class="form-group">
<label for="billingZip">Zipcode</label>
<form:input path="cart.customer.billingAddress.zipcode" id="billingZip" class="form-control"/>
</div>

<input type="hidden" name="_flowExecutionKey" />
<br/><br/>

<input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />

<button class="btn btn-default" name="_eventId_cancel">Cancel</button>



</form:form>
</div></div>

</body>
<%@ include file="/WEB-INF/pages/footer.jsp" %>
</html>