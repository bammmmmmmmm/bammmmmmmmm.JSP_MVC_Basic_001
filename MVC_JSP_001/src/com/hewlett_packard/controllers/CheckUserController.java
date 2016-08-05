package com.hewlett_packard.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hewlett_packard.model_dtos.User;
import com.hewlett_packard.services.CheckUserService;
import com.hewlett_packard.services.LoginService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/CheckUser")
public class CheckUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//Retrieve parameter passed when form submitted here
		String userLoginId =request.getParameter("_userId");
		
/*		//For JUnit Testing
		System.out.println(userLoginId);*/
		
		response.setContentType("text/plain");
		
		PrintWriter responseText = response.getWriter();
		
		//Create Check User Service... We are looking to ensure UserId not in use already!!!
		CheckUserService loginServiceInstance = new CheckUserService();
		boolean loginAttempt = loginServiceInstance.isValidUser(userLoginId);
		
		//if in use
		if(loginAttempt){
			System.out.println("UserId Exists");
			responseText.write("This Id is already in Use. Please Choose again!");
			
			return;
		}else{
			System.out.println("UserId free");
			responseText.write("This Id is is free. Good choice");
			return;
		}
		
	}


}

/*Should have status codes for success and errors also*/