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
		
		response.setContentType("text/xml");
		
		PrintWriter responseText = response.getWriter();
		
		//Create Check User Service... We are looking to ensure UserId not in use already!!!
		CheckUserService loginServiceInstance = new CheckUserService();
		boolean loginAttempt = loginServiceInstance.isValidUser(userLoginId);
		
		//if in use
		if(loginAttempt){
			System.out.println("UserId Exists");
			responseText.print("\n<root>");
			responseText.print("This Id is already in Use. Please Choose again!");
			responseText.print("\n</root>");
			
			return;
		}else{
			System.out.println("UserId free");
			responseText.print("\n<root>");
			responseText.print("");
			responseText.print("\n</root>");
			return;
		}
		
	}


}

/*Should have status codes for success and errors also??*/