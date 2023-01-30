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
		<h2>Login List</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">ID</th>
				<th scope="row">Username</th>
				<th scope="row">Password</th>
				<th scope="row">Role</th>
				<th scope="row">Update</th>
				<th scope="row">Delete</th>
			</thead>
			<tbody>
				<c:forEach items="${loginList}" var="login">
					<tr>
						<td>${login.id }</td>
						<td>${login.username }</td>
						<td>${login.password }</td>
						<td>${login.role }</td>
						<td><spring:url value="/login/updateLogin/${login.id}"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL}" role="button">Update</a></td>
						<td><spring:url value="/login/deleteLogin/${login.id}"
								var="deleteURL" /> <a class="btn btn-primary"
							href="${deleteURL}" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<spring:url value="/login/addLogin/" var="addURL" />
		<a class="btn btn-primary" href="${addURL }" role="button">Add New
			Login</a>
	</div>
</body>
</html>