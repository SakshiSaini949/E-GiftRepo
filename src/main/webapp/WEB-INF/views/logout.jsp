<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${sessionScope.login_details != null}">
    	<h5>Hello , ${sessionScope.login_details.customers.firstName} </h5>
	</c:if>
	<%
		session.invalidate();
	%>
	<h5>You have logged out Successfully....</h5>
	<h5>
	
		<a href="<spring:url value='/home/index'/>">Visit Again</a>
	</h5>
</body>
</html>