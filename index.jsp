<%@page import="helper.Conp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="css/NewFile.css" rel="stylesheet" type="text/css" />
<style>

</style>
</head>
<body style="background-color:#17a2b8;">

	<!-- -navbar -->

	<%@include file="normalnavbar.jsp"%>
	<!-- banner -->
	<div class="container-fluid p-0 m-0">
		<div class="jumbotron  bg-info text-white">
			<div class="container">
				<h3 class="dispaly">Welcome to Tech blog</h3>

				<p>Welcome to Technical Blog welcome world of Technology.A
					programming language is a system of notation for writing computer
					programs</p>
				<p>In computer programming, a programming language
					implementation is a system for executing computer programs. There
					are two general approaches to programming language implementation:</p>
				<button class="btn btn-outline-light btn-lg">
					<span class="fa fa-sign-in fa-spin"></span>Quick start--
				</button>
				<a href="login.jsp" class="btn btn-outline-light btn-lg"><span
					class="fa fa-user-circle fa-spin"></span>Login</a>

			</div>
		</div>
	</div>
	
	<!-- cards -->
<div class="jumbotron-fulid">
  <img src="images/tech_blog_banner.jpg" class="img-fluid max-width:100% height:400px"/>

	</div>
	 <!-----footer-->
 <div class="container text-center text-white"><footer style="background-color:#17a2b8;">
 <ul style="float:float-left"><li style="float:float-left"><p><h3>contact us</h3></p></li>
 <p><h5>Address: G-13, 2nd Floor, Sec-3</h5></p>
 <p><h5>Contact No: 0120-4256464,180090234</h5><p>
<a href="#"> <p><h5 style="text-white">Terms and condition</h5></p></a>
 
 

 </footer></div>
	
			



	<!-- javascript -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script type="text/javascript" src="js/newjs.js"></script>
	<script></script>


</script>


</body>
</html>