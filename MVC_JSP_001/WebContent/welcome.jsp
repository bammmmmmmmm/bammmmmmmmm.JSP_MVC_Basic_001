<jsp:include page="header.jsp"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.hewlett_packard.model_dtos.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<!-- If IE use the latest rendering engine -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<!-- Set the page to the width of the device and set the zoom level -->
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
	
	<!-- ^^MOVE TO CSS FILE... ALSO STOP USING CDN & DOWNLOAD BOOTSTRAP BINARIES -->



<jsp:useBean id="userModel_DTO" class="com.hewlett_packard.model_dtos.User" scope="session"></jsp:useBean>
<title>Hello <jsp:getProperty property="userName" name="userModel_DTO"/></title>
</head>
<body>

<p><jsp:getProperty property="userName" name="userModel_DTO"/></a></p><p>Your Account</p>

<br>

<!-- Put this in another jsp... Make this content frame --><!--DropDownFor Logout-->
<p>BUILD COOKIE INTO CONTROLLER, to store Login details... Means I also need a logout button in like a jsf header/footer</p>

<h1>Widget/ SubPage Ideas</h1>
<p>Event List, with countdown</p>
<p>New Pics Pulled from Facebook API?</p>
<p>Write API for all Users, and each user... make RESTful... Can I base this on Observer Pattern?</p>
<p>Read From My API to GoogleCharts and display in divs</p>
<p>Friend Group Schema Tool</p>
<p>Acrynom Repo</p>
<p>Like to my Career Stuff</p>
<p>Incorporate Strategy Pattern</p>



<!-- Problem is it prevents xs screen-size atm, have wrap like text -->
<div class="container">
<div class="row">
  <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
    <div class="thumbnail">
      <img src="https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg" alt="...">
      <div class="caption">
        <h3>Hamburger</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        <p><a href="#" class="btn btn-primary" role="button">Add to Cart</a></p>
      </div>
      </div>
  </div>
  <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
    <div class="thumbnail">
      <img src="https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg" alt="...">
      <div class="caption">
        <h3>Polenta</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        <p><a href="#" class="btn btn-primary" role="button">Add to Cart</a></p>
      </div>
    </div>
  </div>
  <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
    <div class="thumbnail">
      <img src="https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg" alt="...">
      <div class="caption">
        <h3>Meatball Sub</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        <p><a href="#" class="btn btn-primary" role="button">Add to Cart</a></p>
      </div>
    </div>
  </div>
  <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
    <div class="thumbnail">
      <img src="https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg" alt="...">
      <div class="caption">
        <h3>Eggplant</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        <p><a href="#" class="btn btn-primary" role="button">Add to Cart</a></p>
      </div>
    </div>
  </div>
</div>
</div>




	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>