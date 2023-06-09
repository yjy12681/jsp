package com.coding404.user.model;

import java.sql.Timestamp;

public class UserVO {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String gender;
	private Timestamp regdate;
	
	public UserVO() {
		
	}
	
	public UserVO(String id, String pw, String name, String email, String gender, Timestamp regdate) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.regdate = regdate;
	}
	public UserVO(String id) {
		super();
		this.id=id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email + ", gender=" + gender
				+ ", regdate=" + regdate + "]";
	}
	
	
	

}
