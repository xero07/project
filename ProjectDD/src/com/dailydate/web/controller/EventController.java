package com.dailydate.web.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dailydate.web.dao.EventDao;
import com.dailydate.web.vo.Event;

@Controller
@RequestMapping("/event/*")
public class EventController {
	private EventDao eventDao;
	
	@Autowired
	public void setEventDao(EventDao eventDao) {
		this.eventDao = eventDao;
	}

	//행사 검색
	@RequestMapping("eventSearch")
	public String eventSearch(String c, Model model) {
		
		List<Event> list = eventDao.searchEvents(c);

		model.addAttribute("list", list);

		return "event.eventSearch";
	}
	//event페이지 로드
	@RequestMapping(value="event", method=RequestMethod.GET)
	public String event(Model model) {
		
		List<Event> list = eventDao.getEvents();

		model.addAttribute("list", list);

		return "event.event";
	}
	//체크박스 선택된 것 삭제
	@RequestMapping(value="event", method=RequestMethod.POST)
	public String event(HttpServletRequest request){
		String[] s = request.getParameterValues("checkbox");
		for (String c: s)
			eventDao.removeEvent(c);
		
		return "redirect:event";
	}
	/*@RequestMapping(value="event", method=RequestMethod.POST)
	public String event(Model model, HttpServletRequest request) {
		
		String[] type = request.getParameterValues("checkbox");
		List<Event> list = eventDao.getEvents();

		model.addAttribute("list", type);

		return "/WEB-INF/view/customer/eventee.jsp";
	}*/
	
	@RequestMapping(value="eventReg", method=RequestMethod.GET)
	public String eventReg(){
		return "event.eventReg";
	}
	@RequestMapping(value="eventReg", method=RequestMethod.POST)
	public String eventReg(Model model, HttpServletRequest request){
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String sDate = request.getParameter("startDate");
		String eDate = request.getParameter("endDate");
		String host = request.getParameter("host");
		String hostContact = request.getParameter("hostContact");
		//String -> Date 형변환
		DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = null, endDate = null;
		try {
			startDate = sdFormat.parse(sDate);
			endDate = sdFormat.parse(eDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Event event = new Event();
		
		event.setName(name);
		event.setAddress(address);;
		event.setStartDate(startDate);
		event.setEndDate(endDate);
		event.setHost(host);
		event.setHostContact(hostContact);
		
		eventDao.addEvent(event);
		
		return "redirect:event";
	}
	
	@RequestMapping("eventDetail")
	public String eventDetail(String c, Model model){
		Event e = eventDao.getEvent(c);

		model.addAttribute("e",e);
		
		return "event.eventDetail";
	}
	
	@RequestMapping(value="eventUpdate", method=RequestMethod.GET)
	public String eventUpdate(String c, Model model){
		Event e = eventDao.getEvent(c);
		
		model.addAttribute("e", e);
		
		return "event.eventUpdate";
	}
	@RequestMapping(value="eventUpdate", method=RequestMethod.POST)
	public String eventUpdate(Event event, HttpServletRequest request){
		String code = request.getParameter("code");
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String sDate = request.getParameter("startDate");
		String eDate = request.getParameter("endDate");
		String host = request.getParameter("host");
		String hostContact = request.getParameter("hostContact");
		//String -> Date 형변환
		DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = null, endDate = null;
		try {
			startDate = sdFormat.parse(sDate);
			endDate = sdFormat.parse(eDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		event.setCode(code);
		event.setName(name);
		event.setAddress(address);;
		event.setStartDate(startDate);
		event.setEndDate(endDate);
		event.setHost(host);
		event.setHostContact(hostContact);
		
		eventDao.updateEvent(event);
		
		return "redirect:event";
	}
	
	@RequestMapping("eventDelete")
	public String eventDelete(String c){
		eventDao.removeEvent(c);
		
		return "redirect:event";
	}
}