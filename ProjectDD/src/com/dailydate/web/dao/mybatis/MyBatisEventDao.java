package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.EventDao;
import com.dailydate.web.vo.Event;

public class MyBatisEventDao implements EventDao{
	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<Event> getEvents(String page, String field, String query) {
		// TODO Auto-generated method stub
		EventDao dao = session.getMapper(EventDao.class);
		List<Event> list = dao.getEvents(page, field, query);
		
		return list;
	}
	
	@Override
	public List<Event> getEvents(String page) {
		// TODO Auto-generated method stub
		EventDao dao = session.getMapper(EventDao.class);
		List<Event> list = dao.getEvents(page);
		
		return list;
	}

	@Override
	public List<Event> getEvents() {
		// TODO Auto-generated method stub
		return getEvents("1","","");
	}

	@Override
	public int addEvent(Event event) {
		// TODO Auto-generated method stub
		
		int result;
		
		try{
			EventDao dao = session.getMapper(EventDao.class);
			
			result=dao.addEvent(event);
			//session.commit();
		}finally{
			//session.rollback();
			//session.close();
		}
		return result;
	}

	@Override
	public int removeEvent(String code) {
		// TODO Auto-generated method stub
		int result;
		
		try{
			EventDao dao = session.getMapper(EventDao.class);
			
			result=dao.removeEvent(code);
			//session.commit();
		}finally{
			//session.rollback();
			//session.close();
		}
		return result;
	}

	@Override
	public Event getEvent(String code) {
		// TODO Auto-generated method stub
		EventDao dao = session.getMapper(EventDao.class);
		
		return dao.getEvent(code);
	}

	@Override
	public int updateEvent(Event event) {
		// TODO Auto-generated method stub

		int result;
		
		try{
			EventDao dao = session.getMapper(EventDao.class);
			
			result=dao.updateEvent(event);
			//session.commit();
		}finally{
			//session.rollback();
			//session.close();
		}
		return result;
	}

	@Override
	public String getLastCode() {
		// TODO Auto-generated method stub
		EventDao dao = session.getMapper(EventDao.class);// DAO는 오버로드 불가.
		return dao.getLastCode();
	}

	@Override
	public List<Event> searchEvents(String key) {
		// TODO Auto-generated method stub
		EventDao dao = session.getMapper(EventDao.class);
		List<Event> list = dao.searchEvents(key);
		
		return list;
	}

}
