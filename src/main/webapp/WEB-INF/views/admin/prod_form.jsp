<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<link rel="stylesheet" href="../resources/static/css/style.css"
	type="text/css" media="all">
</head>
<body>
	<div class="container">
		<spring:url value="/product/saveProduct" var="saveURL" />
		<h2>Product Form</h2>
		<form:form modelAttribute="prodForm" method="post"
			action="${saveURL }" cssClass="form">
			<form:hidden path="id" />
			<form:hidden path="categories"/>
			<div class="form-group">
				<label>product Name</label>
				<form:input path="productName" cssClass="form-control" id="productName" />
			</div>
			<div class="form-group">
				<label>Price</label>
				<form:input path="salePrice" cssClass="form-control" id="salePrice" />
			</div>
			<div class="form-group">
				<label>Quantity</label>
				<form:input path="quantity" cssClass="form-control" id="quantity" />
			</div>
			<div class="form-group">
				<label>Image</label>
				<form:input type="text" path="image" cssClass="form-control" id="image" />
			</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form:form>

	</div>
</body>
</html>