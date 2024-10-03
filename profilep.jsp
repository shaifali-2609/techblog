<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="entities.User" %>
  <%@page errorPage="error.jsp" %>
    <%@page import="entities.Messege" %>
 
  <% 
User user = (User) session.getAttribute("currentobj");
if (user == null || user.getName() == null) {
    response.sendRedirect("login.jsp");
}
%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="css/NewFile.css" rel="stylesheet" type="text/css" />
<style>
.container-fluid {
	clip-path: polygon(100% 0, 100% 92%, 82% 90%, 51% 93%, 27% 97%, 0 100%, 0 0);
}</style>
</head>
<body>
<!-- navbar -->
<nav class="navbar navbar-expand-lg navbar-light primary-background">
  <a class="navbar-brand" href="index.jsp"><span class="fa fa-briefcase"></span>Techblog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-book"></span>Learn code <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="fa fa-check-circle"></span>Programming language
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Java</a>
          <a class="dropdown-item" href="#">Html</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Css</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><span class="fa fa-phone"></span>Contact us</a>
      </li>
     
       
    </ul>
   <ul class="navbar-nav mr-right">
   <li class="nav-item text-dark">
   <a class="nav-link" href="#!"data-toggle="modal" 
   data-target="#profile-modal"><span class="fa fa-user-circle"></span><%=user.getName() %></a>
 
      </li>
      <li class="nav-item text-dark">
   <a class="nav-link" href="Logoutservlet"><span class="fa fa-user-plus"></span>Logout</a>
 
      </li>
   </ul>
  </div>
</nav>

<!-- end of nav bar -->
<!-- banner -->
<div class="container-fluid p-0 m-0">
		<div class="jumbotron  bg-info text-white">
			<div class="container">
				<a href="index.jsp"><><h3 class="dispaly">Welcome to Tech blog</h3></a>

				<p>Welcome to Technical Blog welcome world of Technology.A
					programming language is a system of notation for writing computer
					programs</p>
				<p>In computer programming, a programming language
					implementation is a system for executing computer programs. There
					are two general approaches to programming language implementation:</p>
				<button class="btn btn-outline-light btn-lg">
					<span class="fa fa-sign-in"></span>Quick start--
				</button>
				
			</div>
		</div>
	</div>
	<!-- cards -->
<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card"">

					<div class="card-body">
						<h3 class="card-title  ">JAVA</h3>
						<p class="card-text">SJava is a programming language and a platform. Java is a high level, 
						robust, object-oriented and secure programming language.</p>
						<a href="https://www.w3schools.com/" class="btn primary-background text-white">Readmore</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card"">

					<div class="card-body">
						<h3 class="card-title">PYTHONE</h3>
						<p class="card-text">Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability
						 with the use of significant indentation. </p>
						<a href="https://www.w3schools.com/" class="btn primary-background text-white">Readmore</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card"">

					<div class="card-body">
						<h3 class="card-title">HTML</h3>
						<p class="card-text">HTML is the standard markup language for Web pages.

With HTML you can create your own Website.</p>
						<a href="https://www.w3schools.com/" class="btn primary-background text-white">Readmore</a>
					</div>
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="card"">

					<div class="card-body">
						<h3 class="card-title">JAVASCRIPT</h3>
						<p class="card-text">JavaScript is the world's most popular programming language.

JavaScript is the programming language of the Web.</p>
						<a href="https://www.w3schools.com/" class="btn primary-background text-white">Readmore</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card"">

					<div class="card-body">
						<h3 class="card-title">PHP</h3>
						<p class="card-text">PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.</p>
						<a href="https://www.w3schools.com/" class="btn primary-background text-white">Readmore</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card"">

					<div class="card-body">
						<h3 class="card-title">.NET</h3>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
<a href="https://www.w3schools.com/" class="btn primary-background text-white">Readmore</a>					
					</div>
				</div>
			</div>

		</div>


	</div>

<% Messege m=(Messege)session.getAttribute("msg");
if(m!=null){
	%><div class="alert <%=m.getCssclass()%>" role="alert">
 <%=m.getContent()%>
</div>
	<% session.removeAttribute("msg");
}
%>

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white">
        <h5 class="modal-title" id="exampleModalLabel">Techblog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
       <div class="container text-center">
      <img src="pics/<%=user.getProfile()%>" class="img-fluid" style="border-radius:50%; max-width:120px;"><br/>
       <h5 class="modal-title  mt-3" id="exampleModalLabel"><%=user.getName() %></h5>
       </div>
       <div id="profile-details">
      <table class="table">
 
  <tbody>
    <tr>
      <th scope="row" ml-3>ID:</th>
      <td><%=user.getId() %></td>
     
    </tr>
    <tr>
      <th scope="row">Email:</th>
      <td><%=user.getEmail() %></td>
      
    </tr>
    <tr>
      <th scope="row">Gender:</th>
      <td><%=user.getGender() %></td>
      
    </tr>
     <tr>
      <th scope="row">Status:</th>
      <td><%=user.getAbout() %></td>
      
    </tr>
     <tr>
      <th scope="row">Register on:</th>
      <td><%=user.getDatetime().toString() %></td>
      
    </tr>
  </tbody>
</table>
      </div></div>
       <!-- profile edit -->
      <div id="profile-edit"style="display:none">
      <h3 class ="mt-2">Please Edit carefully</h3>
      <form action="Editservlet" method="post" enctype="multipart/form-data">
      <table class="table">
      <tr>
      <td>Id:</td>
       <td> <%=user.getId() %></td>
      </tr>
       <tr>
      <td>Email:</td>
       <td><input type="email" class="form-control"name="usemail" value="<%=user.getEmail()%>"></td>
       
      </tr>
       <tr>
      <td>Name:</td>
       <td><input type="text" class="form-control"name="usname" value="<%=user.getName() %>"></td>
       
      </tr>
       <tr>
      <td>Password:</td>
      
       <td><input type="password" class="form-control"name="uspass" value="<%=user.getPassword()%>"></td>
       
      </tr>
      
       <tr>
      <td>About:</td>
      
       <td><textarea class="form-control" name="uabout"><%=user.getAbout() %></textarea></td>
       
      </tr>
      <tr>
      <td>gender:</td>
       <td><%=user.getGender().toUpperCase() %></td>
      </tr>
      <tr>
      <td>photo:</td>
       <td><input type="file" class="form-control" name="image"></td>
      </tr>
      
      
      </table>
       <div class="container text-center">
      <button type="submit" class="btn btn-outline-primary ">save</button>
      </div>
      </form>
     
      
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button  id="edit-profile-button"type="button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>



   
<!--java Script-->
    
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
	<Script>

$(document).ready(function(){
	let editStatus=false;
	$('#edit-profile-button').click(function(){
		if(editStatus==false){
			$("#profile-details").hide()
			$("#profile-edit").show();
			editStatus=true;
			$(this).text("back")
			
		}
		else{
			$("#profile-details").show()
			$("#profile-edit").hide();
			editStatus=false;
			$(this).text("Edit")
		}
		
		
		
		
		
		
		
	})
	
	
	
	
	
});
</Script>





</body>
</html>