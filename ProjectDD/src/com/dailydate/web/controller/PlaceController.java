package com.dailydate.web.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Principal;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.dailydate.web.dao.PlaceCommentDao;
import com.dailydate.web.dao.PlaceDao;
import com.dailydate.web.dao.PlaceFileDao;
import com.dailydate.web.vo.Place;
import com.dailydate.web.vo.PlaceComment;
import com.dailydate.web.vo.PlaceFile;

@Controller
@RequestMapping("/place/*")
public class PlaceController 
{
	
	private PlaceDao placeDao;
	private PlaceCommentDao placeCommentDao;
	private PlaceFileDao placeFileDao;
	
	@Autowired
	public void setPlaceDao(PlaceDao placeDao) 
	{
		this.placeDao = placeDao;
	}
	
	@Autowired
	public void setPlaceCommentDao(PlaceCommentDao placeCommentDao) 
	{
		this.placeCommentDao = placeCommentDao;
	}
	
	@Autowired
	public void setPlaceFileDao(PlaceFileDao placeFileDao) {
		this.placeFileDao = placeFileDao;
	}

	@RequestMapping(value = "place", method = RequestMethod.GET)
	public String place(Model model)
	{
		List<Place> list = placeDao.getPlaces();
		model.addAttribute("list", list);
				
		return "place.place";
	}
	
	@RequestMapping(value = "place" , method = RequestMethod.POST)
	public String place(HttpServletRequest request)
	{
		String[] s = request.getParameterValues("checkbox"); 
		for(String c:s)
			placeDao.deletePlace(c);
		return "redirect:place";
	}
	
	@RequestMapping("placeDetail")
	public String placeDetail(String c, Model model)
	{
		//디테일
		Place place = placeDao.getPlace(c);
		model.addAttribute("p", place);
		//댓글
		List <PlaceComment> list = placeCommentDao.getPlaceComments(c);
		model.addAttribute("pc", list);
		
		PlaceFile placeFile = placeFileDao.getPlaceFile(c);
		model.addAttribute("pf", placeFile);
		
		return "place.placeDetail";
	}
	@RequestMapping(value = "placeReg", method = RequestMethod.GET)
	public String placeReg()
	{
		return "place.placeReg";
	}
	@RequestMapping(value = "placeReg", method = RequestMethod.POST)
	public String placeReg(Place place, HttpServletRequest request,MultipartFile file) throws IOException
	{
		String name = request.getParameter("name");
		String region = request.getParameter("region");
		String theme  = request.getParameter("theme");
		String address = request.getParameter("address")+","+request.getParameter("address_etc");
		int cost =Integer.parseInt(request.getParameter("cost"));
		
		place.setName(name);
		place.setRegion(region);
		place.setTheme(theme);
		place.setAddress(address);
		place.setCost(cost);
		
		placeDao.addPlace(place);
		
		String lastCode = placeDao.getLastCode();
		
		if(!file.isEmpty())
		{
			ServletContext application = request.getServletContext();
			String url = "/resource/upload/place";
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
			
			PlaceFile placeFile = new PlaceFile();
			placeFile.setName(fname);
			placeFile.setPlaceCode(lastCode);
			
			placeFileDao.addPlaceFile(placeFile);
		}
		
		return "redirect:place";
	}
	
	@RequestMapping(value = "placeDelete" ,method = RequestMethod.POST)
	public String placeDelete(String c, HttpServletRequest request)
	{
		/*String code = c;*/
		placeDao.deletePlace(c);
				
		return "redirect:place";
	}
	
	@RequestMapping(value = "placeEdit", method = RequestMethod.GET)
	public String placeEdit(String c, Model model)
	{
		Place place = placeDao.getPlace(c);
		model.addAttribute("p", place);
		
		return "place.placeEdit";
	}
	
	@RequestMapping(value = "placeEdit", method = RequestMethod.POST)
	public String placeEdit(Place place, HttpServletRequest request)
	{
		String code = request.getParameter("code");
		
		String name = request.getParameter("name");
		String region = request.getParameter("region");
		String theme  = request.getParameter("theme");
		String address = request.getParameter("address");
		int cost =Integer.parseInt(request.getParameter("cost"));
		
		place.setName(name);
		place.setRegion(region);
		place.setTheme(theme);
		place.setAddress(address);
		place.setCost(cost);
		
		placeDao.editPlace(place);
		
		return "redirect:place";
	}
	
	@RequestMapping(value ="placeCommentAdd", method = RequestMethod.POST )
	public String placeCommentAdd(PlaceComment placeComment, HttpServletRequest request,
			Principal principal, Model model)
	{	
		String placeCode = request.getParameter("placeCode");
		String memberId = principal.getName();
		String content = request.getParameter("content");
		
		placeComment.setPlaceCode(placeCode);
		placeComment.setMemberId(memberId);
		placeComment.setContent(content);
		
		placeCommentDao.addPlaceComment(placeComment);
		
		return placeDetail(placeCode, model);
	}
	
	@RequestMapping(value = "placeSearched", method = RequestMethod.GET)
	public String placeSearched(Model model, String c, Place place)
	{
		List<Place>list = placeDao.getPlaceSearched(c);
		model.addAttribute("ps", list);
				
		return "place.placeSearched";
	}
	
	
}
