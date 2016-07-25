<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.hewlett_packard.model_dtos.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%
		/**This 'login' page is the First Part of the View of this MVC
		*Here we give the user a screen to enter their loginId and Password, which we then send to the controller.
		*Once the controller gets this it creates an instance of the LoginService class, which is the Service that...
		*validates the User against an ArrayList of User objects. The validation is done solely against the two...
		*fields we have passed to the Controller. If the validation of the login is successful, the Controller...
		*requests the User Model from the Service, and redirects the application and the User Model (DTO) to the...
		*next View: The 'welcome' page
		*/
	%>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<!-- If IE use the latest rendering engine -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<!-- Set the page to the width of the device and set the zoon level -->
	<meta name="viewport" content="width = device-width, initial-scale = 1">
	
	<link rel="stylesheet" type="text/css"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	
	<style>
	/* To ensure space below the picture*/
	.container {
		margin-bottom: 2%;
		border: 0px;
	}
	/* For Login Tabs*/
	.jumbotron {
		color: #525252;
		float: center;
	}
	/* Adds borders for tabs */
	.tab-content {
		border: 0px;
		padding: 10px;
	}
	
	.nav-tabs {
		margin-bottom: 0;
	}
	
	.nav-pills{
		font-weight: bold;
	}
	</style>
	
	<jsp:useBean id="userModel_DTO"
		class="com.hewlett_packard.model_dtos.User" scope="session"></jsp:useBean>
	<title>Login</title>

</head>
<body style="background-color: #525252; color: white;">

	<!-- Need to do Js (client-side) Validation yet -->

	<!-- Below I create a UserBean, with userloginId captured if this is after a User-Creation redirect from the CreateLoginController servlet, else it defaults to empty -->
	<!-- Have not managed to set the User's IdLogin property value returned from a UserLoginController call with Bean tags, instead resorting to JSP tags-->

	<jsp:useBean id="newUser_DTO"
		class="com.hewlett_packard.model_dtos.User" scope="session">
		<jsp:setProperty name="newUser_DTO" property="userLoginId" value=""></jsp:setProperty>
	</jsp:useBean>




	<div class="container">
	

		<div class="text-center">
			<h1>Welcome to Life</h1>
			<p style="font-style:italic;">"A novel way to keep my life in one place"</p>
		</div>

		<!-- ROUNDED IMAGES -->
		<!-- Images marked as responsive have a max-width equal to the screen. You can add rounded corners with img-rounded, img-circle, and img-thumbnail. pull-left and pull-right will float images in the provided direction. center-block will place the image in the center. -->
		<img src="https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg" id="nttLogo" class="img-responsive img-thumbnail pull-center" alt="Responsive image">
	</div>

	<div class="container">
	<div class="row row-centered">
	<div class="col-lg-6 col-md-6 col-sm-9 col-xs-12 col-centered col-lg-offset-3 col-md-offset-3 col-sm-offset-1">
		
				
				<!-- Use nav-pills, nav-tabs. To center tabs add nav-justified to the class for ul -->
				<ul class="nav nav-pills">
					<li class="active"><a data-toggle="tab" href="#current">Current	User</a></li>
					<li><a data-toggle="tab" href="#new">New User</a></li>
				</ul>
		
				<div class="tab-content">
					<div id="current" class="tab-pane fade in active">
				
					
						<form action="LoginAttempt" method="post">
							<div class="input-group input-group-md">
		  						<span class="input-group-addon">Login Name</span><input type="text" required class="form-control" name="userId" value="<%=newUser_DTO.getUserLoginId()%>">
							</div><br>
							<div class="input-group input-group-md">
		  						<span class="input-group-addon">Password&nbsp;&nbsp;&nbsp;</span><input type="password" required class="form-control" name="userPass">
							</div><br>
							<br/><label><button type="submit" class = "btn-default btn-lg">Lets Go!</button></label>
						</form>
					</div>
					<div id="new" class="tab-pane fade">
						<form action="CreateLogin" method="post">
							<div class="input-group input-group-md">
		  						<span class="input-group-addon">Login Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="text" required class="form-control" name="userId">
								<!-- NEED AJAX CALL HERE TO CHECK NO EXISTING LoginNames MATCHING THIS -->
							</div><br>
							<div class="input-group input-group-md">
		  						<span class="input-group-addon">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="password" class="form-control" title="Password must contain at least 6 characters, including
		  															UPPER/lowercase and numbers." required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="userPass" onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
  																	if(this.checkValidity()) form.uPassConf.pattern = this.value"/>
							</div><br>
							<div class="input-group input-group-md">
		  						<span class="input-group-addon">Retype Password</span><input type="password" class="form-control" title="Please enter a password match to the above" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="uPassConf"
		  															onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"/>
							</div><br>
							<div class="input-group input-group-md">
		  						<span class="input-group-addon">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="text" required class="form-control" name="userName">
							</div><br>
							<div class="input-group input-group-md">
		  						<span class="input-group-addon">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="email" required class="form-control" name="userEmail">
							</div><br>
							<div class="input-group input-group-md">
		  						<span class="input-group-addon">Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="text" required class="form-control" name="userAge">
							</div><br>
							<br/><label><button type="submit" class = "btn-default btn-lg">Sign Me Up!</button></label>
						</form>
					</div>
				</div>
				
			<!-- NEXT:Write Login Cookie -->
	</div>
	</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>