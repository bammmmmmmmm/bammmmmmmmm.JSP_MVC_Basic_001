package com.hewlett_packard.services;

import java.util.ArrayList;
import java.util.Random;

import com.hewlett_packard.model_dtos.User;
import com.hewlett_packard.model_dtos.UserArrayListObject;

public class CreateUserService {

		//May use constructor later
		public CreateUserService() {
		}
		
		//Get the UserList Object from it's singleton class
		UserArrayListObject userListHolderClass = UserArrayListObject.getOnlyInstance();
		ArrayList<User> usersList=userListHolderClass.getUserList();
		
		private User successfulUser;
		
		//Validate User Login Attempt... successfulAttempt local variable remains false unless userLoginId and userPassword match a User Object
		//NOTE: Usually this would be done to retrieve a model from a DB, not an ArrayList
		public boolean isCreated(String userLoginId, String userPass, String userName, String userEmail, String userAge){
			boolean successfulAttempt = false;
			User potentialUser=new User(userLoginId, userPass, userName, userEmail, userAge);
			
			//if user doesn't exist create... else return false
			if(!usersList.contains(potentialUser)){
				userListHolderClass.addUser(potentialUser);
				successfulUser=potentialUser;
				//validated as true if item not in list and addUser called
				successfulAttempt=true;
			}
			
			return successfulAttempt;
		}
		
		
		// return this user (empty if validation failed)
		public User returnUserModel_DTO(){
			return successfulUser;
		}

}
