package com.dailydate.web.vo;

import java.util.Date;

public class Member {
	private String id;			//회원 아이디
	private String img;			//회원 이미지
	private String email;		//이메일
	private String password;	//비밀번호
	private String gender;			//성별
	private String age;			//나이
	private Date regDate;		//등록일
	private String coupleId;	//커플아이디(fk)
	private String defaultRole;
	
		
	public String getDefaultRole() {
		return defaultRole;
	}
	public void setDefaultRole(String defaultRole) {
		this.defaultRole = defaultRole;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getCoupleId() {
		return coupleId;
	}
	public void setCoupleId(String coupleId) {
		this.coupleId = coupleId;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
}