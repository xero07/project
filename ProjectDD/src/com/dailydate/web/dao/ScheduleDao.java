package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.Schedule;

public interface ScheduleDao {
	public List<Schedule> getSchedules(int page, String field, String query);
	public Schedule getSchedule(String code);
	public int addSchedule(Schedule schedule);
	public int removeSchedule(String code);
	public int updateSchedule(String code);
}
