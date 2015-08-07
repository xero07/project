package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.Event;

public interface EventDao {
	public List<Event> getEvents(String page, String field, String query); 
	public List<Event> getEvents(String page);
	public List<Event> getEvents();
	public int addEvent(Event event);
	public int removeEvent(String code);
	public Event getEvent(String code);
	public int updateEvent(Event event);
	public String getLastCode();
	public List<Event> searchEvents(String key);
}
