package com.dailydate.web.vo;

import java.util.Date;

public class Event {
	private String code;			//코드
	private String name;			//이름
	private Date startDate;			//시작일
	private Date endDate;			//종료일
	private String address;			//주소
	private String host;			//주최자
	private String hostContact;		//주최자 연락처
	private String admin_Id;
	private String image;
	

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
	}
	public String getHostContact() {
		return hostContact;
	}
	public void setHostContact(String hostContact) {
		this.hostContact = hostContact;
	}
	public String getAdmin_Id() {
		return admin_Id;
	}
	public void setAdmin_Id(String admin_Id) {
		this.admin_Id = admin_Id;
	}
	
	
}
