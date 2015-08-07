package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.Notice;

public interface NoticeDao {
   
   public List<Notice> getNotices(
         int page,
         String field,
         String query); 
   public Notice getNotice(String code);  
   public int addNotice(Notice Notice);  
   public int removeNotice(String code); 
   public int updateNotice(String code);
}