<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Login Form</title>
 <link rel="stylesheet" href="../resources/static/css/style.css" type="text/css" media="all">
</head>
<body>
 <div class="container">
  <spring:url value="/login/saveLogin" var="saveURL" />
  <h2>Login</h2>
  <form:form modelAttribute="loginForm" method="post" action="${saveURL }" cssClass="form" >
   <form:hidden path="id"/>
   <div class="form-group">
    <label>Username</label>
    <form:input path="username" cssClass="form-control" id="username" />
   </div>
   <div class="form-group">
    <label>Password</label>
    <form:input path="password" cssClass="form-control" id="password" />
   </div>
   <div class="form-group">
    <label>Role</label>
    <form:input path="role" cssClass="form-control" id="role" />
   </div>
   <button type="submit" class="btn btn-primary">Save</button>
  </form:form>
  
 </div>
</body>
</html>