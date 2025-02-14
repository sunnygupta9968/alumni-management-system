package com.entity;

public class Admin {
	private int id;
	private String fullname;
	private String email;
	private String password;
	private String profile_img;
	
	
	public Admin() {
		
	}
	
	
	
	public Admin(String fullname, String email, String password, String profile_img) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.password = password;
		this.profile_img = profile_img;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String work) {
		this.password = work;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	
}
