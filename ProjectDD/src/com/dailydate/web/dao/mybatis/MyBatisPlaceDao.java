package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.PlaceDao;
import com.dailydate.web.vo.Place;

public class MyBatisPlaceDao implements PlaceDao 
{
	
	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) 
	{
		this.session = session;
	}

	@Override
	public List<Place> getPlaces() 
	{
		PlaceDao placeDao = session.getMapper(PlaceDao.class);
		List<Place> list = placeDao.getPlaces();
		return list;
	}
	
	/*@Override
	public List<Place> getPlaces(String page)
	{
	}*/
	
	@Override
	public Place getPlace(String code) 
	{
		PlaceDao placeDao = session.getMapper(PlaceDao.class);
		return placeDao.getPlace(code);
	}
	
	@Override
	public int addPlace(Place place) 
	{
		int result = 0;
		
		try
		{
			PlaceDao placeDao = session.getMapper(PlaceDao.class);
			result = placeDao.addPlace(place);
			//session.commit();
		}
		finally
		{
			//session.rollback();
			//session.close();
		}
		return result;
	}

	@Override
	public int deletePlace(String code) 
	{
		int result = 0;
		
		//try{
			PlaceDao dao = session.getMapper(PlaceDao.class);
			result = dao.deletePlace(code);
			
		/*	session.commit();
		}finally{
			session.rollback();
			session.close();*/
		//}
			
		return result;
	}

	@Override
	public int editPlace(Place place) 
	{
		int result = 0;
			
		//try{
			PlaceDao dao = session.getMapper(PlaceDao.class);
			result = dao.editPlace(place);
			
		/*	session.commit();
		}finally{
			session.rollback();
			session.close();*/
		//}
		
		return result;
	}

	@Override
	public String getLastCode() 
	{
		PlaceDao dao = session.getMapper(PlaceDao.class);
		return dao.getLastCode();
	}

	@Override
	public List<Place> getPlaceSearched(String value) 
	{
		PlaceDao placeDao = session.getMapper(PlaceDao.class);
		List<Place> list = placeDao.getPlaceSearched(value);
		return list;
	}

	
	

}
