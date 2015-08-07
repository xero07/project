package com.dailydate.web.vo;

import java.util.Date;

public class Board {
   private String code;      //코드
   private String subject;
   private String title;      //제목
   private Date regDate;      //등록일
   private String content;      //내용
   private int hit;         //조회수
   private String memberId;   //작성자ID(fk)
   
   
   public String getCode() {
      return code;
   }
   public void setCode(String code) {
      this.code = code;
   }
   
   public String getSubject() {
	return subject;
   }

   public void setSubject(String subject) {
	this.subject = subject;
   }

   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   public Date getRegDate() {
      return regDate;
   }
   public void setRegDate(Date regDate) {
      this.regDate = regDate;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
   public int getHit() {
      return hit;
   }
   public void setHit(int hit) {
      this.hit = hit;
   }
   public String getMemberId() {
      return memberId;
   }
   public void setMemberId(String memberId) {
      this.memberId = memberId;
   }
}