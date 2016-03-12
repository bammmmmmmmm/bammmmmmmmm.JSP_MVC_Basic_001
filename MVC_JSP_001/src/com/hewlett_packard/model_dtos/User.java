package com.hewlett_packard.model_dtos;

public class User {

	private String userLoginId, userPassword, userName, userEmail, userAge;
	
	public User() {
		
	}

	public User(String userLoginId, String userPassword, String userName, String userEmail, String userAge) {
		this.userLoginId = userLoginId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userAge = userAge;
	}

	public String getUserLoginId() {
		return userLoginId;
	}

	public void setUserLoginId(String userLoginId) {
		this.userLoginId = userLoginId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAge() {
		return userAge;
	}

	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}

	@Override
	public String toString() {
		return "User [userLoginId=" + userLoginId + ", userPassword=" + userPassword + ", userName=" + userName + ", userEmail=" + userEmail + ", userAge=" + userAge + "]";
	}
	
	

}
