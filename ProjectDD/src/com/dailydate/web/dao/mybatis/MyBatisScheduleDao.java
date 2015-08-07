package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.ScheduleDao;
import com.dailydate.web.vo.Schedule;

public class MyBatisScheduleDao implements ScheduleDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<Schedule> getSchedules(int page, String field, String query) {
		ScheduleDao dao = session.getMapper(ScheduleDao.class);
		
		return dao.getSchedules(1, "", "");
	}

	@Override
	public Schedule getSchedule(String code) {
		ScheduleDao dao = session.getMapper(ScheduleDao.class);
		
		return dao.getSchedule(code);
	}

	@Override
	public int addSchedule(Schedule schedule) {
		int result=0;
		
		try{
			ScheduleDao dao = session.getMapper(ScheduleDao.class);
			result=dao.addSchedule(schedule);
			session.commit();
		}
		finally{
			session.rollback();
			session.close();
		}	
		return result;
	}
	
	@Override
	public int updateSchedule(String code) {
		int result=0;
		
		try{
			ScheduleDao dao = session.getMapper(ScheduleDao.class);
			result=dao.updateSchedule(code);
			session.commit();
		}
		finally{
			session.rollback();
			session.close();
		}	
		return result;
	}

	@Override
	public int removeSchedule(String code) {
		// TODO Auto-generated method stub
		return 0;
	}


}
