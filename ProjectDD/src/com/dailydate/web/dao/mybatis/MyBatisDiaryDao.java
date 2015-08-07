package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.DiaryDao;
import com.dailydate.web.vo.Diary;


public class MyBatisDiaryDao implements DiaryDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<Diary> getDiaries(int page, String field, String query) {
		DiaryDao dao = session.getMapper(DiaryDao.class);
		
		return dao.getDiaries(1, "Title", "");
	}

	@Override
	public List<Diary> getDiaries(int page) {
		return getDiaries(page, "Title", "");
	}

	@Override
	public List<Diary> getDiaries() {
		return getDiaries(1, "Title", "");
	}

	@Override
	public Diary getDiary(String code) {
		DiaryDao dao = session.getMapper(DiaryDao.class);
		
		return dao.getDiary(code);
	}

	@Override
	public int addDiary(Diary diary) {
		int result = 0;
		
		DiaryDao dao = session.getMapper(DiaryDao.class);
		result = dao.addDiary(diary);
		
		return result;
	}

	@Override
	public int removeDiary(String code) {
		DiaryDao dao = session.getMapper(DiaryDao.class);
		
		return dao.removeDiary(code);
	}

	@Override
	public int updateDiary(String code) {
		DiaryDao dao = session.getMapper(DiaryDao.class);
		
		return dao.updateDiary(code);
	}

	@Override
	public String getLastCode() {
		DiaryDao dao = session.getMapper(DiaryDao.class);
		
		return dao.getLastCode();
	}
}
