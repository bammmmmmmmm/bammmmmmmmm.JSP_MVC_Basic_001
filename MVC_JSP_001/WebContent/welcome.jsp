<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.hewlett_packard.model_dtos.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:useBean id="userModel_DTO" class="com.hewlett_packard.model_dtos.User" scope="session"></jsp:useBean>
<title>Hello <jsp:getProperty property="userName" name="userModel_DTO"/></title>
</head>
<body>

<p>Hello <jsp:getProperty property="userName" name="userModel_DTO"/>, I see you are <jsp:getProperty property="userAge" name="userModel_DTO"/> years old!

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


</body>
</html>