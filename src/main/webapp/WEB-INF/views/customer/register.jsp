<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
    <div class="container" style="background-image: url(../image/link1.jfif);  width: 100%; height:800px;">
    <h2 class="text-center text-muted" ><i>Registration Page</i></h2>
    <form class="form-horizontal" method="post" modelAttribute="customers">
        <div class="form-group">
          <label class="control-label col-sm-2 text-muted" for="username">Username:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="username" id="username" placeholder="Enter username" required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2 text-muted" for="pwd">Password:</label>
          <div class="col-sm-8">
            <input type="password" class="form-control" name="password" id="password" placeholder="Enter password" required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2 text-muted" for="fnm">First Name:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="firstName" id="fnm" placeholder="Enter First Name" required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2 text-muted" for="lnm">Last Name:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="lastName" id="lnm" placeholder="Enter Last Name"  required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2 text-muted" for="email">Email:</label>
          <div class="col-sm-8">
            <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email"  required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2 text-muted" for="contact">Contact No.:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="contactNo" id="contact" placeholder="Enter Contact Number"  required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2 text-muted" for="dob">Date of Birth:</label>
          <div class="col-sm-8">
            <input type="date" class="form-control" name="dob" id="dob" placeholder="Enter Date of Birth"  required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2 text-muted" for="gender">Gender:</label>
          <div class="col-sm-8">
            <input type="radio"  name="gender" id="gender" value="male" checked="checked" > Male
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio"  name="gender" id="gender" value="female"  > Female
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2 text-muted" for="contact">House Address:</label>
          <div class="col-sm-8">
            <textarea class="form-control" name="houseAddress" id="addr" placeholder="Enter House Address"></textarea>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Register</button>
          </div>
        </div>
      </form>
    </div>
</body>