<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" > 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
    <!--Important link source from https://bootsnipp.com/snippets/ooa9M-->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />

<title>Gift Mania--Gift new reasons for joy and celebrations</title>
<style>
* {
	margin: 0;
	padding: 0;
}
/* -----logo image css ------*/
.logo {
	widows: 10%;
	display: block;
	justify-content: center;
	align-items: center;
	border: radius 50px;
}
/*navbar  */
.navbar {
	display: flex;
	cursor: pointer;
	top: 0;
	position: sticky;
	align-items: center;
	justify-content: center;
}

.btn-primary {
	margin-top: 0.7%;
	margin-bottom: -1%;
	height: 2%
}

.nav-list {
	width: 50%;
	background-color: rgb(180, 70, 90);
	display: flex;
	justify-content: center;
	align-items: center;
}

.nav-list li {
	list-style: none;
	padding: 15px;
}

.nav-list li a {
	text-decoration: none;
	color: white;
}

.nav-list li a:hover {
	text-decoration: none;
	color: black;
}

.rightNav {
	background-color: rgb(180, 70, 90);
	width: 50%;
	text-align: right;
	height: 60px;
	justify-content: center;
	align-items: center;
	padding: 0px 23px;
	display: inline-flex;
}

#Search {
	padding: 8px;
	font-size: 17px;
	border: 2px solid grey;
	border-radius: 9px;
	color: solid white;
}

.background {
	background: rgba(202, 73, 73, 0.7) url('../image/gift6.jpg');
	background-size: cover;
	background-blend-mode: soft-light;
}

.box-main {
	display: flex;
	justify-content: center;
	align-items: center;
	color: cornsilk;
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	font-size: medium;
	font-style: italic;
}

.smalltext {
	font-size: larger;
	text-indent: 35%;
	text-decoration: solid;
}

.bigtext {
	display: block;
	padding: 5px 2px;
	font-size: medium;
	text-transform: inherit;
	text-decoration: double;
}

.firstSection {
	height: 210vh;
}

.gifttext {
	font-style: italic;
	color: solid floralwhite;
	text-align: center;
}

.btn-sm {
	padding: 6px 10px;
	vertical-align: center;
	background: none;
	color: solid white;
	cursor: pointer;
	border: solid white;
	border-radius: 10%;
}

.wishPic img#newyear {
	border: 4px solid dimgrey;
	width: 400px;
	margin-right: 20%;
}

.secRight {
	display: flex;
	justify-content: center;
	align-items: center;
	color: solid gold;
	margin: 10%;
}

.wishing {
	font-style: italic;
	text-indent: 10px;
	align-items: left;
	font-size: large;
}

.wishes {
	font-size: x-large;
	font-style: italic;
	align-items: center;
	color: gold;
}

.contact {
	background-color: rgb(187, 119, 132);
	height: 620px;
}

.text-center {
	text-align: center;
	padding: 30px;
	font-family: Georgia, 'Times New Roman', Times, serif;
	font-size: 35px;
}

.form {
	max-width: 500px;
	margin: 42px auto;
}

.form input {
	width: 85%;
	font-size: 19px;
	border: 2px solid grey;
	border-radius: 6px;
	margin: 8px 0px;
	padding: 3px 3px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.btn-dark {
	color: solid black;
	border: 2px solid gray;
	border-radius: 5px;
	width: 10%;
	flex-wrap: wrap;
	display: flex;
}

.form-input {
	font-size: 15px;
	border: 2px solid grey;
	border-radius: 6px;
	padding: 3px 3px;
	margin: 8px 0px;
}

.text-footer {
	text-align: center;
	padding: 30px;
	font-family: Georgia, 'Times New Roman', Times, serif;
	font-size: 20px;
}

.Login {
	font-style: italic;
	text-decoration-color: solid black;
	font-family: Georgia, 'Times New Roman', Times, serif;
	text-align: center;
	padding-top: 20px;
}

.navbar1 {
	display: flex;
	cursor: pointer;
	top: 0;
	position: sticky;
	align-items: center;
	justify-content: center;
	padding: 5px 5px;
}

.log {
	color: solid black;
	border: 2px solid gray;
	border-radius: 5px;
	width: 6%;
	height: 4%;
	flex-wrap: wrap;
	display: flex;
	justify-content: center;
	padding: 3px 3px;
	margin: 1%;
	margin-left: 45%;
}

.reg {
	color: solid black;
	border: 2px solid gray;
	border-radius: 5px;
	width: 6%;
	height: 4%;
	flex-wrap: wrap;
	display: flex;
	justify-content: center;
	padding: 3px 3px;
	margin: 1%;
	margin-left: 45%;
}

.background1 {
	background: rgba(202, 73, 73, 0.7) url('../image/gift6.jpg');
	background-blend-mode: soft-light;
	background-size: cover;
}

.User input {
	width: 30%;
	font-size: 20px;
	border: 2px solid grey;
	border-radius: 6px;
	margin: 1%;
	padding: 3px 2px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	align-content: center;
	margin-left: 35%;
}

.User {
	background: rgba(202, 73, 73, 0.7) url('../image/gift6.jpg');
	background-blend-mode: soft-light;
	background-size: cover;
	height: 720px;
	margin: 4%;
}

.search {
	margin-left: 45%;
}

* {
	box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

/* Style the container/contact section */
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
	float: left;
	width: 50%;
	margin-top: 6px;
	padding: 20px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.column, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}
/* ---------------------------------------------------------------------------------------------------------------- */
.top-nav-bar {
	height: 57px;
	top: 0;
	position: sticky;
	background: #fff;
	margin-bottom: 20px;
	border-bottom: 3px rgb(180, 70, 90);
	z-index: 2;
}

.search-box {
	display: inline-flex;
	width: 50%;
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
/* =-------------------------------------------------------------------------------------- */
.footer {
	margin-top: 18%;
	color: solid black;
}

.carousel img {
	margin-right: 10%;
	max-width: 100%;
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

.search-box {
	display: inline-flex;
	width: 60%;
}

.for-search {
	color: white;
}

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

.fa-shopping-basket {
	margin-right: 5px;
}

.footer-widget p {
	margin-bottom: 27px;
}

body {
	color: solid grey
}

p {
	font-family: 'Nunito', sans-serif;
	font-size: 16px;
	color: solid black;
	line-height: 28px;
}

.animate-border {
	position: relative;
	display: block;
	width: 115px;
	height: 3px;
	background: #007bff;
}

.animate-border:after {
	position: absolute;
	content: "";
	width: 35px;
	height: 3px;
	left: 0;
	bottom: 0;
	border-left: 10px solid #fff;
	border-right: 10px solid #fff;
	-webkit-animation: animborder 2s linear infinite;
	animation: animborder 2s linear infinite;
}

@
-webkit-keyframes animborder { 0% {
	-webkit-transform: translateX(0px);
	transform: translateX(0px);
}

100




%
{
-webkit-transform




:




translateX


(




113px




)


;
transform




:




translateX


(




113px




)


;
}
}
@
keyframes animborder { 0% {
	-webkit-transform: translateX(0px);
	transform: translateX(0px);
}

100




%
{
-webkit-transform




:




translateX


(




113px




)


;
transform




:




translateX


(




113px




)


;
}
}
.animate-border.border-white:after {
	border-color: #fff;
}

.animate-border.border-yellow:after {
	border-color: #F5B02E;
}

.animate-border.border-orange:after {
	border-right-color: #007bff;
	border-left-color: #007bff;
}

.animate-border.border-ash:after {
	border-right-color: #EEF0EF;
	border-left-color: #EEF0EF;
}

.animate-border.border-offwhite:after {
	border-right-color: #F7F9F8;
	border-left-color: #F7F9F8;
}

/* Animated heading border */
@
keyframes primary-short { 0% {
	width: 15%;
}

50




%
{
width




:




90


%;
}
100




%
{
width




:




10


%;
}
}
@
keyframes primary-long { 0% {
	width: 80%;
}

50




%
{
width




:




0


%;
}
100




%
{
width




:




80


%;
}
}
.dk-footer {
	padding: 75px 0 0;
	background-color: rgb(180, 70, 90);
	position: relative;
	z-index: 2;
}

.dk-footer .contact-us {
	margin-top: 0;
	margin-bottom: 30px;
	padding-left: 80px;
	color: solid black;
}

.dk-footer .contact-us .contact-info {
	margin-left: 50px;
	color: solid black;
}

.dk-footer .contact-us.contact-us-last {
	margin-left: -80px;
}

.dk-footer .contact-icon i {
	font-size: 24px;
	top: -15px;
	position: relative;
	color: #007bff;
}

.dk-footer-box-info {
	position: absolute;
	top: -122px;
	background: #202020;
	padding: 40px;
	z-index: 2;
}

.dk-footer-box-info .footer-social-link h3 {
	color: solid blue;
	font-size: 24px;
	margin-bottom: 25px;
}

.dk-footer-box-info .footer-social-link ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.dk-footer-box-info .footer-social-link li {
	display: inline-block;
}

.dk-footer-box-info .footer-social-link a i {
	display: block;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	text-align: center;
	line-height: 40px;
	background: #000;
	margin-right: 5px;
	color: #fff;
}

.dk-footer-box-info .footer-social-link a i.fa-facebook {
	background-color: #3B5998;
}

.dk-footer-box-info .footer-social-link a i.fa-twitter {
	background-color: #55ACEE;
}

.dk-footer-box-info .footer-social-link a i.fa-google-plus {
	background-color: #DD4B39;
}

.dk-footer-box-info .footer-social-link a i.fa-linkedin {
	background-color: #0976B4;
}

.dk-footer-box-info .footer-social-link a i.fa-instagram {
	background-color: #B7242A;
}

.footer-awarad {
	margin-top: 285px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 100%;
	-moz-box-flex: 0;
	-ms-flex: 0 0 100%;
	flex: 0 0 100%;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-moz-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.footer-awarad p {
	color: solid black;
	font-size: 24px;
	font-weight: 700;
	margin-left: 20px;
	padding-top: 15px;
}

.footer-info-text {
	margin: 26px 0 32px;
	color: solid white;
}

.footer-left-widget {
	padding-left: 80px;
}

.footer-widget .section-heading {
	margin-bottom: 35px;
}

.footer-widget h3 {
	font-size: 24px;
	color: solid blue;
	position: relative;
	margin-bottom: 15px;
	max-width: -webkit-fit-content;
	max-width: -moz-fit-content;
	max-width: fit-content;
}

.footer-widget ul {
	width: 50%;
	float: left;
	list-style: none;
	margin: 0;
	padding: 0;
}

.footer-widget li {
	margin-bottom: 18px;
}

.footer-widget p {
	margin-bottom: 27px;
}

.footer-widget a {
	color: solid black;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.footer-widget a:hover {
	color: #007bff;
}

.footer-widget:after {
	content: "";
	display: block;
	clear: both;
}

.dk-footer-form {
	position: relative;
}

.dk-footer-form input[type=email] {
	padding: 14px 28px;
	border-radius: 50px;
	background: whitesmoke;
	border: 1px solid #2E2E2E;
	width: 80%;
	height: 15px
}

.dk-footer-form input::-webkit-input-placeholder, .dk-footer-form input::-moz-placeholder,
	.dk-footer-form input:-ms-input-placeholder, .dk-footer-form input::-ms-input-placeholder,
	.dk-footer-form input::-webkit-input-placeholder {
	color: #878787;
	font-size: 14px;
}

.dk-footer-form input::-webkit-input-placeholder, .dk-footer-form input::-moz-placeholder,
	.dk-footer-form input:-ms-input-placeholder, .dk-footer-form input::-ms-input-placeholder,
	.dk-footer-form input::placeholder {
	color: #878787;
	font-size: 14px;
}

.dk-footer-form button[type=submit] {
	position: absolute;
	top: 0;
	right: 0;
	margin-top: 2px;
	padding: 12px 24px 12px 17px;
	border-top-right-radius: 25px;
	border-bottom-right-radius: 25px;
	border: 1px solid #007bff;
	background: #007bff;
	color: #fff;
}

.dk-footer-form button:hover {
	cursor: pointer;
}

/* ==========================

    Contact

=============================*/
.contact-us {
	position: relative;
	z-index: 2;
	margin-top: 65px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-moz-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.contact-icon {
	position: absolute;
}

.contact-icon i {
	font-size: 36px;
	top: -5px;
	position: relative;
	color: #007bff;
}

.contact-info {
	margin-left: 75px;
	color: solid black;
}

.contact-info h3 {
	font-size: 20px;
	color: solid black;
	margin-bottom: 0;
}

.copyright {
	padding: 28px 0;
	margin-top: 55px;
	background-color: rgb(180, 70, 90);
}

.copyright span, .copyright a {
	color: #878787;
	-webkit-transition: all 0.3s linear;
	-o-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.copyright a:hover {
	color: #007bff;
}

.copyright-menu ul {
	text-align: right;
	margin: 0;
}

.copyright-menu li {
	display: inline-block;
	padding-left: 20px;
}

.back-to-top {
	position: relative;
	z-index: 2;
}

.back-to-top .btn-dark {
	width: 35px;
	height: 35px;
	border-radius: 50%;
	padding: 0;
	position: fixed;
	bottom: 20px;
	right: 20px;
	background: #2e2e2e;
	border-color: #2e2e2e;
	display: none;
	z-index: 999;
	-webkit-transition: all 0.3s linear;
	-o-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.back-to-top .btn-dark:hover {
	cursor: pointer;
	background: #FA6742;
	border-color: #FA6742;
}

* {
	box-sizing: border-box;
}

@media screen and (max-width: 600px) {
	.column {
		width: 100%;
		display: block;
		margin-bottom: 20px;
	}
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	/* this adds the "card" effect */
	padding: 16px;
	text-align: center;
	background-color: #f1f1f1;
	margin-left: 2%;
}

.sidebar {
	margin: 0;
	padding: 0;
	width: 200px;
	background-color: #f1f1f1;
	position: fixed;
	height: 100%;
	overflow: auto;
}

.sidebar a {
	display: block;
	color: black;
	padding: 16px;
	text-decoration: none;
}

.sidebar a.active {
	background-color: rgba(202, 73, 73, 0.7);
	color: solid black;
}

.sidebar a:hover:not(.active) {
	background-color: rgb(187, 72, 91);
	color: white;
}

div.content {
	margin-left: 200px;
	padding: 1px 16px;
	height: 1000px;
}

@media screen and (max-width: 700px) {
	.sidebar {
		width: 100%;
		height: auto;
		position: relative;
	}
	.sidebar a {
		float: left;
	}
	div.content {
		margin-left: 0;
	}
}

@media screen and (max-width: 400px) {
	.sidebar a {
		text-align: center;
		float: none;
	}
}
</style>
</head>
<body class="background">
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
				<!-- <li><a href="/customer/finalCart"><i
						class="fa fa-shopping-basket"></i> Cart</a></li> -->
				<%-- <li><a href="<spring:url value='/home/categories'/>"><i
						class="fa fa-bars" aria-hidden="true"></i> Categories</a></li> --%>
				<li><a href="<spring:url value='/home/login'/>"><i
						class="fa fa-user-plus"></i> Login</a></li>
				<li><a href="/home/logout"><i class="fa fa-sign-out"></i>
						Logout</a></li>

			</ul>
		</div>
	</div>
	<%-- <c:if test="${sessionScope.login_details != null}">
    	Welcome, ${sessionScope.login_details.customers.firstName}
		</c:if> --%>

	<section class="background firstSection">
		<div class="box-main">
			<div class="firstHalf">
				<p class="smalltext">The future of online gift shopping is here</p>

				<p class="bigtext" align="center">Give a moment of your life to
					choose best gifts for your loved ones and make them feel special
					with our gifts which are specially packed and prepared with love
					and emotions.</p>
				<br>
			</div>

		</div>

		<div class="slider">
			<div id="slider" class="carousel slide carousel-fade"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="/image/gift6.jpg" class="d-block w-100" height="500">
					</div>
					<div class="carousel-item">
						<img src="/image/wallpaper.jpg" class="d-block w-100" height="500">
					</div>
					<div class="carousel-item">
						<img src="/image/flower.jpg" class="d-block w-100" height="500">
					</div>
				</div>
				<ol class="carousel-indicators">
					<li data-bs-target="#slider" data-bs-slide-to="0" class="active"></li>
					<li data-bs-target="#slider" data-bs-slide-to="1"></li>
					<li data-bs-target="#slider" data-bs-slide-to="2"></li>
				</ol>
			</div>
		</div>

		<div class="secRight">
			<div class="wishSection">
				<p class="wishes">Wishes From Team</p>
				<p class="wishing">Our Gift Mania team wishes you all Merry
					Christmas and A Very Happy New Year.Like the jingling bells of
					Christmas makes the most beautiful sound, and the twinkling lights
					of New Year beautifies the surroundings. Our customers are the one
					who encourages us to make our gifts with lots of love ,feelings and
					emotions. Keep shopping with us and keep appreciating us for our
					work.</p>
			</div>
			<div class="wishPic">
				<img src="/image/new1.jpg" id="newyear">
			</div>
		</div>
		</div>
		<footer id="dk-footer" class="dk-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-4">
						<div class="dk-footer-box-info">
							<a href="Home.html" class="footer-logo"> <img
								src="/image/logo.jpeg" alt="footer_logo" class="img-fluid">
							</a>
							<p class="footer-info-text" style="color: white">Gift-Mania
								making your loved ones feel special</p>
							<div class="footer-social-link">
								<h3 style="color: white">Follow us</h3>
								<ul>
									<li><a
										href="https://www.facebook.com/search/top?q=customized%20gifts%20for%20u">
											<i class="fa fa-facebook"></i>
									</a></li>
									<li><a href="https://twitter.com/?lang=en"> <i
											class="fa fa-twitter"></i>
									</a></li>
									<li><a
										href="https://accounts.google.com/ServiceLogin/identifier?elo=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin">
											<i class="fa fa-google-plus"></i>
									</a></li>

									<li><a href="https://www.instagram.com/"> <i
											class="fa fa-instagram"></i>
									</a></li>
								</ul>
							</div>
							<!-- End Social link -->
						</div>
						<!-- End Footer info -->
						<div class="footer-awarad">
							<img src="image/icon/best.png" alt="">
							<p>Best Design Company 2019</p>
						</div>
					</div>
					<!-- End Col -->
					<div class="col-md-12 col-lg-8">
						<div class="row">
							<div class="col-md-6">
								<div class="contact-us">
									<div class="contact-icon">
										<i class="fa fa-map-o" aria-hidden="true"></i>
									</div>
									<!-- End contact Icon -->
									<div class="contact-info">
										<h3>Mumbai India</h3>
										<p>24 Suncity Apartments Avenue Juhu</p>
									</div>
									<!-- End Contact Info -->
								</div>
								<!-- End Contact Us -->
							</div>
							<!-- End Col -->
							<div class="col-md-6">
								<div class="contact-us contact-us-last">
									<div class="contact-icon">
										<i class="fa fa-volume-control-phone" aria-hidden="true"></i>
									</div>
									<!-- End contact Icon -->
									<div class="contact-info">
										<h3>95 711 9 5353</h3>
										<p>Give us a call</p>
									</div>
									<!-- End Contact Info -->
								</div>
								<!-- End Contact Us -->
							</div>
							<!-- End Col -->
						</div>
						<!-- End Contact Row -->
						<div class="row">
							<div class="col-md-12 col-lg-6">
								<div class="footer-widget footer-left-widget">
									<div class="section-heading">
										<h3>Useful Links</h3>
										<span class="animate-border border-black"></span>
									</div>
									<ul>
										<li><a href="About.html">About Us</a></li>


										<li><a href="Team.html">Our Team</a></li>
									</ul>
									<ul>
										<li><a href="Contact.html">Contact us</a></li>
										<li><a href="https://www.youtube.com/watch?v=MpFBneXmNVs">Blog</a>
										</li>

									</ul>
								</div>
								<!-- End Footer Widget -->
							</div>
							<!-- End col -->
							<div class="col-md-12 col-lg-6">
								<div class="footer-widget">
									<div class="section-heading">
										<h3>Subscribe</h3>
										<span class="animate-border border-black"></span>
									</div>
									<p>
										<!-- Don’t miss to subscribe to our new feeds, kindly fill the form below. -->
										Since you get more joy out of giving joy to others, you should
										put a good deal of thought into the happiness that you are
										able to give
									</p>
									<form action="#">
										<div class="form-row">
											<div class="col dk-footer-form">
												<input type="email" class="form-control"
													placeholder="Email Address">
												<button type="submit">
													<i class="fa fa-send"></i>
												</button>
											</div>
										</div>
									</form>
									<!-- End form -->
								</div>
								<!-- End footer widget -->
							</div>
							<!-- End Col -->
						</div>
						<!-- End Row -->
					</div>
					<!-- End Col -->
				</div>
				<!-- End Widget Row -->
			</div>
			<!-- End Contact Container -->


			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<span>Copyright © 2019, All Right Reserved Gift-Mania</span>
						</div>
						<!-- End Col -->
						<div class="col-md-6">
							<div class="copyright-menu">
								<ul>
									<li><a href="Home.html">Home</a></li>
									<li><a href="Contact.html">Contact</a></li>
								</ul>
							</div>
						</div>
						<!-- End col -->
					</div>
					<!-- End Row -->
				</div>
				<!-- End Copyright Container -->
			</div>
			<!-- End Copyright -->
			<!-- Back to top -->
			<div id="back-to-top" class="back-to-top">
				<button class="btn btn-dark" title="Back to Top"
					style="display: block;">
					<i class="fa fa-angle-up"></i>
				</button>
			</div>
			<!-- End Back to top -->
		</footer>

	</section>
</body>
</html>