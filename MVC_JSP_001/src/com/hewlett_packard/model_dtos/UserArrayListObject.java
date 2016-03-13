package com.hewlett_packard.model_dtos;

import java.util.ArrayList;
import java.util.Random;

public class UserArrayListObject {
	
	/**I don't synchronise any of the below as I will not be editing the ArrayList contents*/

	//Create a List for User Details, as we are not using a DB, as typical
	private static ArrayList<User> usersList=new ArrayList<User>();	
	
	//An Array of Names I'll use in populating the usersList. Haven't made this private so that I can JUnit test the Objects by names here
	public static String names[]={"David Jones","Tim Krul","Bobby Sans","Kevin McManaman","Tracy Lee","Alan Devlin","Donagh Twomey","Alan Bell"};
	
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
		
	//Private and static (NOTE: thought that private static ARE accessible?) instance of itself created, with private constructor too (Below)
	private static UserArrayListObject onlyInstance = new UserArrayListObject();
	
	private UserArrayListObject() {
	}

	
	//only way to get this single objects instance
	public static UserArrayListObject getOnlyInstance() {
		return onlyInstance;
	}
	
	public ArrayList<User> getUserList(){
		return usersList;
	}

}
