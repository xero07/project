package com.dailydate.web.vo;

import java.util.Date;
import java.util.List;

public class Diary {
	private String code; // 다이어리 코드
	private String title; // 제목
	private String content; // 내용
	private String memberId; // 작성자 ID(fk)
	private Date regDate; // 등록일
	private String imgName;
	private List<DiaryImage> images;
	

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public List<DiaryImage> getImages() {
		return images;
	}

	public void setImages(List<DiaryImage> images) {
		this.images = images;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String member_Id) {
		this.memberId = member_Id;
	}
}