package com.dailydate.web.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.ScrapDao;
import com.dailydate.web.vo.Scrap;

public class MyBatisScrapDao implements ScrapDao{

	@Autowired
	private SqlSession session;

	@Override
	public int addScrap(Scrap scrap) {
		int result = 0;
		try{
			ScrapDao dao = session.getMapper(ScrapDao.class);
			result = dao.addScrap(scrap);
			session.commit();
		}
		finally{
			session.rollback();
			session.close();
		}
		return result;
	}
}