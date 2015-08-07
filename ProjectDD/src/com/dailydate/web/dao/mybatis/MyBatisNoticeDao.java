package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.NoticeDao;
import com.dailydate.web.vo.Notice;


public class MyBatisNoticeDao implements NoticeDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<Notice> getNotices(int page, String field, String query) {
		//SqlSession session = factory.openSession();
	    NoticeDao dao = session.getMapper(NoticeDao.class);
	      
	    return dao.getNotices(1, "Title", "");
	}

	@Override
	public Notice getNotice(String code) {
		//SqlSession session = factory.openSession();
	    NoticeDao dao = session.getMapper(NoticeDao.class);
	    
		return dao.getNotice(code);
	}

	@Override
	public int addNotice(Notice Notice) {
		 //SqlSession session = factory.openSession();
		 
	      int result = 0;
	         try{
	            NoticeDao dao = session.getMapper(NoticeDao.class);
	            result = dao.addNotice(Notice);
	            session.commit();
	         }
	         finally{
	            session.rollback();
	            session.close();
	         }
	         return result;
	}

	@Override
	public int removeNotice(String code) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateNotice(String code) {
		// TODO Auto-generated method stub
		return 0;
	}
}
