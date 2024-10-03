<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<!-- css -->
<link rel="icon" href="data:,">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="css/NewFile.css"rel="stylesheet" type="text/css"/>
</head>
<body>
<%@include file="normalnavbar.jsp" %>

<main class="primary-background p-5">
<div class="container">
<div class="col-md-5 offset-md-3">
<div class="card">
<div class="card-header text-center">
<span class="fa fa-3x fa-user-circle"></span><br/>
Register here
</div>
<div class="card-body">
<form id="regform" action="Registerserv" method ="post">

<div class="form-group">
    <label for="username">Username</label>
    <input name="txtname" type="text" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter name">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input  name="txtemail" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="txtpass" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
   <div class="form-group">
    <label for="gender">Select Gender</label>
    <input type="radio" id="gender" name="gender" value="male">Male
     <input type="radio" id="gender" name="gender" value="female">FeMale
  </div>
  <div class="form-group">
  <textarea  name="about" class="form-control" id="" rows="3" col="1" placeholder="enter about yourself"></textarea>
  
  </div>
  
  <div class="form-check">
    <input  name="check"type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree terms and condition</label>
  </div><br/>
  <div class="container text-center" id="loader" style="display:none;">
  <span class="fa fa-refresh fa-3x fa-spin"></span><h3>Please wait...</h3></div><br/>
  <button type="submit"  id="submit-btn" class="btn btn-primary">Submit</button>
</form>
</div>


</div>

</div>
</div>


</main>
<!-- js -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script type="text/javascript" src="js/newjs.js"></script>
	<script>
$(document).ready(function(){
	
	console.log("loded...")
	$('#regform').on('submit',function(event){
	event.preventDefault();//usi page pr rage reload na ho
	let form=new FormData(this)//fromdata object which converrt value in key valare pair and send to ajex
	$("#submit-btn").hide();
	$("#loader").show();
	//send register servlet
	$.ajax({
		url:"Registerserv",
		type:'post',
		data:form,
		success:function(data,textStatus,jqXHR){
			console.log(data)
			$("#submit-btn").show();
			$("#loader").hide();
			if(data.trim() === 'done'){
			swal("Register successfully!...")
			.then((value) => {
			  window.location="login.jsp"
			});}
			else{
				swal(data);
			}
			
		},
		error: function (jqXHR,textStatus,errorThrown){
			console.log(jqXHR)
			$("#submit-btn").show();
			$("#loader").hide();
			swal("somthimg went wrong..try again");
		},
		processData:false,
		contentType:false,
	});
	
	
	
});
	});
	</script>
	
</body>
</html>