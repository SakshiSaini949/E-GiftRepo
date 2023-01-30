<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>In category Product List</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">ID</th>
				<th scope="row">Name</th>
				<th scope="row">Price</th>
				<th scope="row">Quantity</th>
				<th scope="row">Image</th>
				<th scope="row">Update</th>
				<th scope="row">Delete</th>
			</thead>
			<tbody>
				<c:forEach items="${prodList}" var="list">
				<c:set var="catID" value="${list.categories.id}"></c:set>
					<tr>
						<td>${list.id }</td>
						<td>${list.productName }</td>
						<td>${list.salePrice }</td>
						<td>${list.quantity }</td>
						<td>${list.image }</td>
						<td><spring:url value="/product/updateCatProduct/${list.id}"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL}" role="button">Update</a></td>
						<td><spring:url value="/product/deleteCatProduct/${catID}/${list.id}"
								var="deleteURL"  /> <a class="btn btn-primary"
							href="${deleteURL}" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<spring:url value="/product/addCatProduct/${catID}" var="addURL" />
		<a class="btn btn-primary" href="${addURL }" role="button">Add New
			Product</a>
	</div>
</body>
</html>