package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.Recommend;

public interface RecoDao {
   
   public List<Recommend> getRecommends(
         int page,
         String field,
         String query); 
   public Recommend getRecommend(String code);  
   public int addRecommend(Recommend recommend);  
   public int removeRecommend(String code); 
   public int updateRecommend(String code);
}