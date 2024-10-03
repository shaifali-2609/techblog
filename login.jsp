<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="entities.Messege" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="css/NewFile.css"rel="stylesheet" type="text/css"/>
<style>
.container-fluid{
clip-path: polygon(100% 0, 100% 92%, 82% 90%, 51% 93%, 27% 97%, 0 100%, 0 0);
</style>
</head>
<body >
<!-- navbar -->
<%@include file="normalnavbar.jsp" %>

<main class="primary-background p-3" >

<div class="container">
<div class="row">

<div class="col-md-5 offset-md-4">
<div class="card">
<div class="card-header text-center primary-background">
<span class="fa fa-user-plus fa-3x "></span><br/><p>Login here<p>
</div>
<% Messege m=(Messege)session.getAttribute("msg");
if(m!=null){
	%><div class="alert <%=m.getCssclass()%>" role="alert">
 <%=m.getContent()%>
</div>
	<% session.removeAttribute("msg");
}
%>
<div class="card-body" id="login-btn">

<form action="Loginservlet" method="post">

  <div class="form-group">
    <label for="exampleInputEmail1"></label>
    <input name=txtemail required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1"></label>
    <input name=txtpass required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <br/>
  <div class="container text-center">
  <button type="submit" class= "btn primary-background ">Submit</button></div>
</form>
</div>
</div>
</div>
</div>
</div>
</main>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script type="text/javascript" src="js/newjs.js"></script>

</body>
</html> 
