package com.hewlett_packard.services;

import java.util.ArrayList;
import java.util.Random;

import com.hewlett_packard.model_dtos.User;
import com.hewlett_packard.model_dtos.UserArrayListObject;

public class LoginService {

		//May use constructor later
		public LoginService() {
		}
		
		//Get the UserList Object from it's singleton class
		UserArrayListObject userListHolderClass = UserArrayListObject.getOnlyInstance();
		ArrayList<User> usersList=userListHolderClass.getUserList();
		
		private User successfulUser;
		
		//Validate User Login Attempt... successfulAttempt local variable remains false unless userLoginId and userPassword match a User Object
		//NOTE: Usually this would be done to retrieve a model from a DB, not an ArrayList
		public boolean isValidLoginAttempt(String userLoginName, String userPass){
			boolean successfulAttempt = false;
			
			for (User u: usersList){
				if(u.getUserLoginId().equals(userLoginName) && u.getUserPassword().equals(userPass)){
					successfulAttempt=true;
					successfulUser=u;
					break;
				}
			}
			
			return successfulAttempt;
		}
		
		
		// return this user (empty if validation failed)
		public User returnUserModel_DTO(){
			return successfulUser;
		}

}
