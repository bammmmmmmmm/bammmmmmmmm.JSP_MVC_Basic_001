<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.hewlett_packard.model_dtos.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:useBean id="userLogedIn" class="com.hewlett_packard.model_dtos.User"></jsp:useBean>
<title>Hello <%=userLogedIn.getUserName() %></title>
</head>
<body>

<p>Hello <%=userLogedIn.getUserName().substring(0,userLogedIn.getUserName().indexOf(' ')) %>, I see you are <%=userLogedIn.getUserAge() %> years old!



</body>
</html>