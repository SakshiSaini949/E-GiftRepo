<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="js/addons/rating.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!--Important link source from https://bootsnipp.com/snippets/ooa9M-->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<title>Gift Mania--Gift new reasons for joy and celebrations</title>
<style>
.menu-bar {
	width: 40%;
	height: 57px;
	float: right;
}

.menu-bar ul {
	display: inline-flex;
	float: right;
}

.menu-bar ul li {
	border-left: 1px solid #fff;
	list-style-type: none;
	padding: 15px 35px;
	text-align: center;
	background-color: rgb(180, 70, 90);
	cursor: pointer;
}

.menu-bar ul li a {
	font-size: 16px;
	font-weight: bold;
	color: white;
	text-decoration: none;
}

body {
	font-family: sans-serif;
}

.top-nav-bar {
	height: 57px;
	top: 0;
	position: sticky;
	background: rgb(105, 53, 62);
	margin-bottom: 20px;
	border-bottom: 3px solid rgb(180, 70, 90);;
	z-index: 2;
}

.logo {
	height: 40px;
	margin: 5px 10px;
	padding-left: 20px;
}

.form-control {
	margin-top: 9px;
	margin-left: 30px;
	border: 1px solid rgb(180, 70, 90) !important;
	border-top-left-radius: 20px !important;
	border-bottom-left-radius: 20px !important;
	border-top-right-radius: 0 !important;
	border-bottom-right-radius: 0 !important;
	box-shadow: none !important;
}

.input-group-text {
	background: rgb(180, 70, 90) !important;
	border: 1px solid rgb(180, 70, 90) !important;
	margin: 8.5px 10px 3px 0 !important;
	border-top-left-radius: 0px !important;
	border-bottom-left-radius: 0px !important;
	border-top-right-radius: 20px !important;
	border-bottom-right-radius: 20px !important;
	cursor: pointer;
}

.background1 {
	background: rgba(202, 73, 73, 0.7) url('../image/gift5.jpg');
	background-blend-mode: soft-light;
	background-size: cover;
}

.search-box {
	display: inline-flex;
	width: 60%;
}

.for-search {
	color: white;
}
</style>
</head>
<body class="background1">
	<div class="top-nav-bar background">
		<div class="search-box">

			<img src="/image/logo2.png"
				class="logo rounded-top rounded-bottom rounded-left"> <input
				type="text" class="form-control">
			<button type="submit" class="btn btn-primary"
				formaction="Search.html">Search</button>
		</div>

		<div class="menu-bar">
			<ul>
				<%-- <li><a href="<spring:url value='/customer/finalCart'/>"><i
						class="fa fa-shopping-basket"></i> Cart</a></li>
				<li><a href="<spring:url value='/home/categories'/>"><i
						class="fa fa-bars" aria-hidden="true"></i> Categories</a></li> --%>
				<li><a href="#"><i class="fa fa-user-plus"></i> <c:if
							test="${sessionScope.login_details != null}">
    						${sessionScope.login_details.customers.firstName}</c:if> </a></li>
				<li><a href="/home/logout"><i class="fa fa-sign-out"></i>
						Logout</a></li>

			</ul>
		</div>
	</div>
<br><br>

<h1 class="text-center"><b><i><mark>Welcome Admin</mark></i></b></h1><br><br>
 <table class="table table-hover" border="1" cell padding="5">
 <thead class="text-center">
 <tr>
 <div class="text-center">
	<button class="btn btn-light btn-lg"><a href="<spring:url value='/customer/customerView'/>"><b>User Details</b></a></button><br><br>
	</div>
	</tr>
	
	
	<tr>
	<div class="text-center">
		<button class="btn btn-light btn-lg"><a href="<spring:url value='/product/categoryView'/>"><b>Category Details</b></a></button>
	</div>
	
	</tr>
	</thead>
	<!-- <button><a href="#">Order Details</a></button> -->
</body>
</html>