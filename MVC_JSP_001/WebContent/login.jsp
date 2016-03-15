<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Login</title>
</head>
<body>

<!-- Need to do Js (client-side) Validation yet -->
<!-- Below I create a UserBean, with userloginId captured if this is after a User-Creation redirect from the CreateLoginController servlet, else it defaults to empty -->

	
	<table>
		<thead>
			Login Here or Create a User Account
		</thead>
		<tbody>
			<tr>
				<td colspan="50%" style="background-color:#525252;">
					<form action="LoginAttempt" method="post">
						</br>Login Name: <input type="text" name="userId" value="" />
						</br>Password: <input type="password" name="userPass" />
						</br> <input type="submit" />
					</form>
				</td>
				<td colspan="50%" style="background-color:#FFFF00;">
					<form action="CreateLogin" method="post">
						</br>Login Name: <input type="text" name="userId" />
						</br>Password: <input type="password" name="userPass" />
						</br>Name: <input type="text" name="userName" />
						</br>Email: <input type="text" name="userEmail" />
						</br>Age: <input type="text" name="userAge" />
						</br> <input type="submit" />
					</form>
				</td>
			</tr>
		</tbody>
	</table>

</body>
</html>