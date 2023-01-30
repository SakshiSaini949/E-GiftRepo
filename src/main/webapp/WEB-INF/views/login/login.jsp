<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<title>Gift-Mania--Gift new reasons for joy and celebrations</title>
</head>
<body
	style="background-image: url('/image/link1.jfif'); width: 100%; height: 800px;">
	<div class="container">
		<h1 class="Login text-center" ><i>Login or Register</i></h1>
		<br>
		<br>

		<c:if test="${sessionScope.login_details.id == 0}">
			<font color="red">Invalid Login ! use correct username and
				password for login.</font>
		</c:if>

		<form class="form-horizontal" method="post" modelAttribute="logins">
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Username:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="username"
						id="username" placeholder="Enter Username"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Password:</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="password"
						name="password" placeholder="Enter password"><br>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-6">
					<div class="checkbox">
						<label><input type="checkbox"> Remember me</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-6">
					<button type="submit" class="btn btn-primary">Login</button>
					<button class="btn btn-primary" formaction="/home/register">Register</button>
				</div>
			</div>
		</form>

	</div>










</body>