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
<br><br>
 <div class="container" style="background-image: url(/image/link1.jfif);  width: 100%; height:800px;">
		
		<spring:url value="/product/saveCategory" var="saveURL" />
		 <h2 class="text-center text-muted" ><i> Product Update</i></h2>
		<form:form class="form-horizontal" modelAttribute="catForm" method="post"
			action="${saveURL }" cssClass="form">
			<form:hidden path="id" />
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="categoryname">Category Name:</label>
				<form:input path="categoryName" cssClass="form-control" id="categoryName" />
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2 text-muted" for="description">Category Description:</label>
				<form:input path="description" cssClass="form-control" id="description" />
			</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form:form>

	</div>
</body>
</html>