package com.hewlett_packard.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hewlett_packard.model_dtos.User;
import com.hewlett_packard.services.LoginService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginAttempt")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//Retrieve parameters passed when form submitted here
		String userLoginId =request.getParameter("userId");
		String userPass =request.getParameter("userPass");
		
		//For JUnit Testing
		System.out.println(userLoginId+" "+userPass);
		
		//Create Login Service 
		LoginService loginServiceInstance = new LoginService();
		boolean loginAttempt = loginServiceInstance.isValidLoginAttempt(userLoginId, userPass);
		
		if(loginAttempt){
			System.out.println("LoginAttempt Entered");
			User theValidUser = loginServiceInstance.returnUserModel_DTO();
			request.getSession().setAttribute("userModel_DTO", theValidUser);
			response.sendRedirect("welcome.jsp");
		}else{
			response.sendRedirect("login.jsp");
		}
		
	}


}
