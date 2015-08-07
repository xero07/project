package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.RecoImage;

public interface RecoImageDao {
   
   public List<RecoImage> getRecoImagesOfReco(String code);
   public int addRecoImage(RecoImage recoImage);  
   public int removeRecoImage(String code); 
   public int updateRecoImage(String code);
}