package com.dailydate.web.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.PlaceFileDao;
import com.dailydate.web.vo.PlaceFile;

public class MyBatisPlaceFileDao implements PlaceFileDao {
	
	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session)
	{
		this.session = session;
	}


	@Override
	public int addPlaceFile(PlaceFile placeFile) 
	{
		int result = 0;
		
		PlaceFileDao placeFileDao = session.getMapper(PlaceFileDao.class);
		result = placeFileDao.addPlaceFile(placeFile);
		
		return result;
	}


	@Override
	public PlaceFile getPlaceFile(String placeCode){
		PlaceFileDao placeFileDao = session.getMapper(PlaceFileDao.class);
		return placeFileDao.getPlaceFile(placeCode);
	}

}
