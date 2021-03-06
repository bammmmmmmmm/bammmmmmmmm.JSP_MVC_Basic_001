package com.hewlett_packard.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hewlett_packard.model_dtos.User;
import com.hewlett_packard.services.CreateUserService;
import com.hewlett_packard.services.LoginService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/CreateLogin")
public class CreateLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//Retrieve parameters passed to create new user
		String userLoginId =request.getParameter("_userId");
		String userPass =request.getParameter("_userPass");//Eventually shouldn't take this password
		String userName =request.getParameter("_userName");
		String userEmail =request.getParameter("_userEmail");
		String userAge =request.getParameter("_userAge");
		
		//Create Login Service and a new User
		CreateUserService createUserInstance = new CreateUserService();
		boolean userCreated = createUserInstance.isCreated(userLoginId, userPass, userName, userEmail, userAge);

		if(userCreated){
			System.out.println("User Creation Success");
			User theNewUser = createUserInstance.returnUserModel_DTO();
			request.getSession().setAttribute("newUser_DTO", theNewUser);//When not taking password, send email with autopassword
			response.sendRedirect("login.jsp");
			return;
		}else{
			response.sendRedirect("login.jsp");
			return;
		}
		
	}


}
