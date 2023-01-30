<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login List</title>
<link rel="stylesheet" href="../resources/static/css/style.css"
	type="text/css" media="all">
</head>
<body>
	<div class="container">
		<h2>Cart Details</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">Product Name</th>
				<th scope="row">Quantity</th>
				<th scope="row">Price</th>
				<th scope="row">Total price</th>
			</thead>
			<tbody>
				<c:forEach items="${cartItems}" var="cart">
					<tr>
						<td>${cart.products.productName}</td>
						<td>${cart.quantity}</td>
						<td>${cart.totalPrice}</td>
						<td>${cart.quantity*cart.totalPrice}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="<spring:url value='/customer/finalCart'/>">Next</a>
	</div>
</body>
</html>