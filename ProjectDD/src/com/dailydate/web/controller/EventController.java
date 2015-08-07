package com.dailydate.web.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.dailydate.web.dao.EventDao;
import com.dailydate.web.vo.Event;

@Controller
@RequestMapping("/customer/*")
public class EventController {
	private EventDao eventDao;
	
	@Autowired
	public void setEventDao(EventDao eventDao) {
		this.eventDao = eventDao;
	}
	@RequestMapping(value="test", method=RequestMethod.GET)
	public String test(){
		return "/customer/test.jsp";
	}
	//행사 검색
	@RequestMapping("eventSearch")
	public String eventSearch(String c, Model model) {
		
		List<Event> list = eventDao.searchEvents(c);

		model.addAttribute("list", list);

		return "/WEB-INF/view/customer/eventSearch.jsp";
	}
	//체크박스 선택된 것 삭제
	@RequestMapping(value="eventSearch", method=RequestMethod.POST)
	public String eventSearch(HttpServletRequest request){
		String[] s = request.getParameterValues("checkbox");
		for (String c: s)
			eventDao.removeEvent(c);
		
		return "redirect:event";
	}
	
	//event페이지 로드
	@RequestMapping(value="event", method=RequestMethod.GET)
	public String event(Model model) {
		
		List<Event> list = eventDao.getEvents();

		model.addAttribute("list", list);

		return "/WEB-INF/view/customer/event.jsp";
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
		return "/WEB-INF/view/customer/eventReg.jsp";
	}
	@RequestMapping(value="eventReg", method=RequestMethod.POST)
	public String eventReg(Model model, HttpServletRequest request, MultipartFile file) throws IOException{
		
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
		
		if(!file.isEmpty())
		{
			ServletContext application = request.getServletContext();
			String url = "/resource/upload/event";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf("\\")+1);
			String fpath = path + "\\" + fname;
			
			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);
			
			byte[] 대야 = new byte[1024];
			int len = 0;
			
			while((len = ins.read(대야, 0, 1024)) >= 0)
				outs.write(대야, 0, len);
			
			outs.flush();
			outs.close();
			ins.close();
			
			event.setImage(fname);
		}
		
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
		
		return "/WEB-INF/view/customer/eventDetail.jsp";
	}
	
	@RequestMapping(value="eventUpdate", method=RequestMethod.GET)
	public String eventUpdate(String c, Model model){
		Event e = eventDao.getEvent(c);
		
		model.addAttribute("e", e);
		
		return "/WEB-INF/view/customer/eventUpdate.jsp";
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