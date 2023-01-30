<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Gift Mania--Gift new reasons for joy and celebrations</title>
</head>
<body>
    <div class="container" style="background-image: url(/image/link1.jfif);  width: 100%; height:800px;">
    
		<spring:url value="/customer/saveCustomer" var="saveURL" />
		<h2 class="text-center text-muted" ><i>Update Details</i></h2>
		<form:form class="form-horizontal" modelAttribute="custForm" method="post"
			action="${saveURL }" cssClass="form">
			<form:hidden path="id" />
			<div class="form-group">
			
				<label class="control-label col-sm-2 text-muted" for="username" >Username:</label>
				<form:input path="username" cssClass="form-control" id="username" />
			
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="password">Password:</label>
				
				<form:input path="password" cssClass="form-control" id="password"/>
			
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="fname">First Name:</label>
				<form:input path="firstName" cssClass="form-control" id="fname"/>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="lname">Last Name</label>
				<form:input path="lastName" cssClass="form-control" id="lname"  />
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="email">Email:</label>
				<form:input type="email" path="email" cssClass="form-control" id="email"  />
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="cno">Contact No. :</label>
				<form:input path="contactNo" cssClass="form-control" id="cno"  />
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="gender">Gender:</label>
				<form:input path="gender" cssClass="form-control" id="gender" />
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="dob">Date of Birth:</label>
				<form:input type="date"  path="dob" cssClass="form-control" id="dob" />
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="addr">House Address:</label>
				<form:textarea path="houseAddress" cssClass="form-control" id="addr" />
			</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form:form>

	</div>
</body>
</html>