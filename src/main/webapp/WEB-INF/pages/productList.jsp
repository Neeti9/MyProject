<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
		"oSearch":{"sSearch":searchCondition}
	})
});
</script>


</head>
<body>
	

	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
				    <th>Image</th>
					<th>Product Name</th>
					<th>Description</th>
					<th>Category</th>
					<th>View/Edit/delete</th>
					
				</tr>
			</thead>          
            
			<c:forEach var="p" items="${productList}">
				<tr>
				    <td>
				    <c:url var="src" value="/resources/images/${p.id }.jpg"></c:url>
				    <img src=${src } />
				    </td>
					<td>${p.name }</td>
					<td>${p.description }</td>
					<td>${p.category.categoryDetails}</td>
					<c:url var="url" value="/all/product/viewProduct/${p.id }"></c:url>
					<td>
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a> 
					<c:url var="delete" value="/admin/product/deleteProduct/${p.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
					<c:url var="edit" value="/admin/product/editform/${p.id }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
				    </td>
				</tr>
			</c:forEach>
            
		</table>
	</div>
</body>
</html>