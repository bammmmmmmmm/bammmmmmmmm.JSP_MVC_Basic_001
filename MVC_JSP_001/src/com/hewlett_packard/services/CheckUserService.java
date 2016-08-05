package com.hewlett_packard.services;

import java.util.ArrayList;
import java.util.Random;

import com.hewlett_packard.model_dtos.User;
import com.hewlett_packard.model_dtos.UserArrayListObject;

public class CheckUserService {

		//May use constructor later
		public CheckUserService() {
		}
		
		//Get the UserList Object from it's singleton class
		UserArrayListObject userListHolderClass = UserArrayListObject.getOnlyInstance();
		ArrayList<User> usersList=userListHolderClass.getUserList();
		
		
		
		//Validate User Check Attempt... successfulAttempt local variable remains false unless userLoginId match a User Object
		//NOTE: Usually this would be done to check a model from a DB, not an ArrayList
		public boolean isValidUser(String userLoginName){
			boolean successfulAttempt = false;
			
			for (User u: usersList){
				if(u.getUserLoginId().equals(userLoginName)){
					successfulAttempt=true;
					break;
				}
			}
			
			return successfulAttempt;
		}
		

}
