package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.DiaryImage;

public interface DiaryImageDao {
	
	public List<DiaryImage> getDiaryImages(
			int page,
			String field, //�˻�����
			String query );//�˻���
	
	public List<DiaryImage> getDiaryImages(int page);
	public List<DiaryImage> getDiaryImages();
	
	public List<DiaryImage> getDiaryImagesOfDiary(String code);
	public int addDiaryImage(DiaryImage diaryImage);
	
	public int removeDiaryImage(String diaryCode);
	public DiaryImage getDiaryImage(String code);
	
//	public int updateDiary(String code);
	

}
