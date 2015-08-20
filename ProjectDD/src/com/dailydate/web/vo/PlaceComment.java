package com.dailydate.web.vo;

public class PlaceComment {
	private String code;
	private String MemberId;
	private String placeCode;
	private String regDate;
	private String content;
	private int starRating;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
	public String getMemberId() {
		return MemberId;
	}
	public void setMemberId(String memberId) {
		MemberId = memberId;
	}
	public String getPlaceCode() {
		return placeCode;
	}
	public void setPlaceCode(String placeCode) {
		this.placeCode = placeCode;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getStarRating() {
		return starRating;
	}
	public void setStarRating(int starRating) {
		this.starRating = starRating;
	}	

}
