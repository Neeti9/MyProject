<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>   
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">

<c:url var="url" value="/all/registerCustomer">
</c:url>

<form:form action="${url}" commandName="customer">

<div class="form-group">
<form:label path="firstname">FIRST NAME</form:label>
<form:input path="firstname"/>
<form:errors path="firstname"></form:errors>
</div>

<div class="form-group">
<form:label path="lastname">LAST NAME</form:label>
<form:input path="lastname"/>
<form:errors path="lastname"></form:errors>
</div>

<div class="form-group">
<form:label path="email">EMAIL</form:label>
<form:input path="email"/>
<form:errors path="email"></form:errors>
</div>

<div class="form-group">
<form:label path="phonenumber">PHONE NUMBER</form:label>
<form:input path="phonenumber"/>
<form:errors path="phonenumber"></form:errors>
</div>

<div class="form-group">
<form:label path="users.username">USER-NAME</form:label>
<form:input path="users.username"/>
${duplicateUsername}
<form:errors path="users.username"></form:errors> 
</div>

<div class="form-group">
<form:label path="users.password">PASSWORD</form:label>
<form:input path="users.password" type="password"/>
<form:errors path="users.password"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.apartmentNumber">APARTMENT NUMBER</form:label>
<form:input path="billingAddress.apartmentNumber"/>
</div>

<div class="form-group">
<form:label path="billingAddress.streetName">STREETNAME</form:label>
<form:input path="billingAddress.streetName"/>
</div>

<div class="form-group">
<form:label path="billingAddress.city">CITY</form:label>
<form:input path="billingAddress.city"/>
</div>

<div class="form-group">
<form:label path="billingAddress.state">STATE</form:label>
<form:input path="billingAddress.state"/>
</div>

<div class="form-group">
<form:label path="billingAddress.country">COUNTRY</form:label>
<form:input path="billingAddress.country"/>
</div>

<div class="form-group">
<form:label path="billingAddress.zipcode">ZIPCODE</form:label>
<form:input path="billingAddress.zipcode"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.apartmentNumber">APARTMENT NUMBER</form:label>
<form:input path="shippingAddress.apartmentNumber"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.streetName">STREETNAME</form:label>
<form:input path="shippingAddress.streetName"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.city">CITY</form:label>
<form:input path="shippingAddress.city"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.state">STATE</form:label>
<form:input path="shippingAddress.state"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.country">COUNTRY</form:label>
<form:input path="shippingAddress.country"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.zipcode">ZIPCODE</form:label>
<form:input path="shippingAddress.zipcode"/>
</div>

<input type="submit" value="register">

</form:form></div></div>

</body>
</html>