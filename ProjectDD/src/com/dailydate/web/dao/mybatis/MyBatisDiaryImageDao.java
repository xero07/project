package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.DiaryDao;
import com.dailydate.web.dao.DiaryImageDao;
import com.dailydate.web.vo.DiaryImage;

public class MyBatisDiaryImageDao implements DiaryImageDao {

	@Autowired
	private SqlSession session;

	@Override
	public int addDiaryImage(DiaryImage diaryImage) {

		int result = 0;

		// try {
		DiaryImageDao dao = session.getMapper(DiaryImageDao.class);
		result = dao.addDiaryImage(diaryImage);
		/*
		 * session.commit(); } finally { session.rollback(); session.close(); }
		 */
		return result;

	}

	@Override
	public int removeDiaryImage(String diaryCode) {

		DiaryImageDao dao = session.getMapper(DiaryImageDao.class);

		return dao.removeDiaryImage(diaryCode);

	}

	@Override
	public List<DiaryImage> getDiaryImagesOfDiary(String code) {
		DiaryImageDao dao = (DiaryImageDao) session
				.getMapper(DiaryImageDao.class);
		List<DiaryImage> list = dao.getDiaryImagesOfDiary(code);

		return list;

	}

	@Override
	public DiaryImage getDiaryImage(String code) {
		DiaryImageDao dao = session.getMapper(DiaryImageDao.class);

		return dao.getDiaryImage(code);
	}

	@Override
	public List<DiaryImage> getDiaryImages(int page, String field, String query) {
		DiaryImageDao dao = session.getMapper(DiaryImageDao.class);

		return dao.getDiaryImages(1, "Title", "");
	}

	@Override
	public List<DiaryImage> getDiaryImages(int page) {
		return getDiaryImages(page, "Title", "");
	}

	@Override
	public List<DiaryImage> getDiaryImages() {
		return getDiaryImages(1, "Title", "");
	}
}
