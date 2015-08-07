package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.DiaryImage;

public interface DiaryImageDao {
	
	public List<DiaryImage> getDiaryImagesOfDiary(String code);
	public int addDiaryImage(DiaryImage diaryImage);
	
	public int removeDiaryImage(String diaryCode);
	public DiaryImage getDiaryImage(String code);
	
//	public int updateDiary(String code);
	

}
