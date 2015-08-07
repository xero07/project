package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.RecoImageDao;
import com.dailydate.web.vo.RecoImage;

public class MyBatisRecoImageDao implements RecoImageDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<RecoImage> getRecoImagesOfReco(String code) {
		RecoImageDao dao = (RecoImageDao)session.getMapper(RecoImageDao.class);
		List<RecoImage> list = dao.getRecoImagesOfReco(code);
		
		return list;
	}
	
	@Override
	public int addRecoImage(RecoImage recoImage) {
	      int result = 0;
	      RecoImageDao dao = session.getMapper(RecoImageDao.class);
	      result = dao.addRecoImage(recoImage);
	         /*try{
	            session.commit();
	         }
	         finally{
	            session.rollback();
	            session.close();
	         }*/
	         return result;
	}

	@Override
	public int removeRecoImage(String code) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateRecoImage(String code) {
		// TODO Auto-generated method stub
		return 0;
	}


}
