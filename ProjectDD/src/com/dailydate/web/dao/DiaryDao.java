package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.Diary;

public interface DiaryDao {
	public List<Diary> getDiaries(
			int page,
			String field, //�˻�����
			String query );//�˻���
	
	public List<Diary> getDiaries(int page);
	public List<Diary> getDiaries();		
	
	public Diary getDiary(String code);
	
	public int addDiary(Diary diary);
	
	public int removeDiary(String code);
	
	public int updateDiary(String code);
	
	public String getLastCode();

}
