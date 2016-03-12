package com.hewlett_packard.services;

import java.util.ArrayList;
import java.util.Random;

import com.hewlett_packard.model_dtos.User;

public class LoginService {

		//May use constructor later
		public LoginService() {
		}
		
		//Create a List for User Details, as we are not using a DB, as typical
		static ArrayList<User> usersList=new ArrayList<User>();
		
		//An Array of Names I'll use in populating the usersList
		static String names[]={"David Jones","Tim Krul","Bobby Sans","Kevin McManaman","Tracy Lee","Alan Devlin","Donagh Twomey","Alan Bell"};
		
		static Random rn = new Random();
		
		//Populating the array on class load
		static {
			for (int i =0; i<names.length;i++){
				//userLoginId is name with lower-case & no spaces, password is firstname lower-case, user name is in name, name is userLoginId+i, and age is randome between 0-100
				usersList.add(new User(names[i].replaceAll(" ", "").toLowerCase(), names[i].toLowerCase().substring(0,names[i].indexOf(' ')), names[i], names[i].replaceAll(" ", "").toLowerCase()+i+"@gmail.com", String.valueOf(rn.nextInt(100))));
			}
			
			for (User u: usersList)
				System.out.println(u.toString());
		}
		
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
