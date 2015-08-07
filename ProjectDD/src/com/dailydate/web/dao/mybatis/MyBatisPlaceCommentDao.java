package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.PlaceCommentDao;
import com.dailydate.web.vo.PlaceComment;

public class MyBatisPlaceCommentDao implements PlaceCommentDao
{
	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) 
	{
		this.session = session;
	}

	@Override
	public List<PlaceComment> getPlaceComments(String placeCode) 
	{
		PlaceCommentDao placeCommentDao = session.getMapper(PlaceCommentDao.class);
		List<PlaceComment> list = placeCommentDao.getPlaceComments(placeCode);
		
		return list;
	}

	@Override
	public int addPlaceComment(PlaceComment placeComment) 
	{
		int result = 0;
		
		PlaceCommentDao placeCommentDao = session.getMapper(PlaceCommentDao.class);
		result = placeCommentDao.addPlaceComment(placeComment);
		
		return result;
	}

}
