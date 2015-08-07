package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.RecoDao;
import com.dailydate.web.vo.Recommend;

public class MyBatisRecoDao implements RecoDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public List<Recommend> getRecommends(int page, String field, String query) {
	    RecoDao dao = session.getMapper(RecoDao.class);
	    
		return dao.getRecommends(1, "", "");
	}

	@Override
	public Recommend getRecommend(String code) {
	    RecoDao dao = session.getMapper(RecoDao.class);
	    
		return dao.getRecommend(code);
	}

	@Override
	public int addRecommend(Recommend recommend) {
		 
	      int result = 0;
	         try{
	        	RecoDao dao = session.getMapper(RecoDao.class);
	            result = dao.addRecommend(recommend);
	            session.commit();
	         }
	         finally{
	            session.rollback();
	            session.close();
	         }
	         return result;
	}

	@Override
	public int removeRecommend(String code) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateRecommend(String code) {
		// TODO Auto-generated method stub
		return 0;
	}

}
