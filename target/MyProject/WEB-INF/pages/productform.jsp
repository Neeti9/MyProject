<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<form:form action="/admin/product/addProduct" commandName="product">

<div class="form-group">
<label for="id"></label>
<form:hidden path=""/></div>

<div class="form-group">
<label for="name">Product Name</label>
<form:input path="name" class="form-control"/>
</div>

<div class="form-group">
<label for="description">Description</label>
<form:input path="description" class="form-control"/>
</div>

<div class="form-group">
<label for="price">Price</label>
<form:input path="price" class="form-control"/>
</div>

<div class="form-group">
<label for="quantity">Quantity</label>
<form:input path="quantity" class="form-control"/>
</div>

<div class="form-group">
<label for="mfg">Mfg Date</label>
<form:input path="mfg" class="form-control"/>
</div>

<input type="submit" value="Add Product" class="btn btn-default">
</form:form>
</div>
</div>
</body>
</html>