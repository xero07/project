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

import com.dailydate.web.dao.DiaryDao;
import com.dailydate.web.dao.DiaryImageDao;
import com.dailydate.web.vo.Diary;
import com.dailydate.web.vo.DiaryImage;

@Controller
@RequestMapping("/diary/*")
public class DiaryController {

	private DiaryDao diaryDao;
	private DiaryImageDao diaryImageDao;

	@Autowired
	public void setDiaryDao(DiaryDao diaryDao) {
		this.diaryDao = diaryDao;
	}

	@Autowired
	public void setDiaryImageDao(DiaryImageDao diaryImageDao) {
		this.diaryImageDao = diaryImageDao;
	}

	@RequestMapping("diary")
	public String diary(Model model) {

		List<Diary> list = diaryDao.getDiaries();
		model.addAttribute("list", list);

		return "diary.diary";
	}

	@RequestMapping("diaryDetail")
	public String diaryDetail(String c, Model model) {

		DiaryImage di = diaryImageDao.getDiaryImage(c);
		Diary d = diaryDao.getDiary(c);

		model.addAttribute("d", d);
		model.addAttribute("di", di);

		return "diary.diaryDetail";
	}

	@RequestMapping(value = "diaryReg", method = RequestMethod.GET)
	public String diaryReg() {
		return "diary.diaryReg";
	}

	@RequestMapping(value = "diaryReg", method = RequestMethod.POST)
	public String diaryReg(Diary d, MultipartFile file, Principal principal,
			HttpServletRequest request) throws IOException {

				
		d.setMemberId(principal.getName());
		
		diaryDao.addDiary(d);

		if (!file.isEmpty()) {
			ServletContext application = request.getServletContext();

			String url = "/resource/upload/diary";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf('\\') + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath); // 저장

			byte[] bigData = new byte[1024];
			int len = 0;

			while ((len = ins.read(bigData, 0, 1024)) >= 0)
				outs.write(bigData, 0, len);

			outs.flush();
			outs.close();
			ins.close();

			DiaryImage diaryImage = new DiaryImage();
			diaryImage.setName(fname);
			diaryImage.setDiaryCode(diaryDao.getLastCode());
			diaryImageDao.addDiaryImage(diaryImage);
		}
		return "redirect:diary";
	}

	@RequestMapping(value = "diaryDelete", method = RequestMethod.POST)
	public String diaryDelete(String c, String dc) {

		diaryDao.removeDiary(c);
		if(c.equals(dc)){
		diaryImageDao.removeDiaryImage(dc);
		}

		return "redirect:diary";
	}
	
	@RequestMapping(value="diaryUdtReg", method = RequestMethod.GET)
	public String diaryUdtReg(String c, Model model){
		
		DiaryImage di = diaryImageDao.getDiaryImage(c);
		Diary d = diaryDao.getDiary(c);

		model.addAttribute("d", d);
		model.addAttribute("di", di);
		
		return "diary.diaryUdtReg";
	}
	
	@RequestMapping(value = "diaryUdtReg", method = RequestMethod.POST)
	public String diaryUdtReg(Diary d, String c, MultipartFile file, Principal principal,
			HttpServletRequest request) throws IOException{
		
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		d.setMemberId(principal.getName());
		d.setTitle(title);
		d.setContent(content);
		
		diaryDao.updateDiary(c);
		
	/*	if (!file.isEmpty()) {
			ServletContext application = request.getServletContext();

			String url = "/resource/diary/upload";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf('\\') + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath); // 저장

			byte[] bigData = new byte[1024];
			int len = 0;

			while ((len = ins.read(bigData, 0, 1024)) >= 0)
				outs.write(bigData, 0, len);

			outs.flush();
			outs.close();
			ins.close();

			DiaryImage diaryImage = new DiaryImage();
			diaryImage.setName(fname);
			diaryImage.setDiaryCode(diaryDao.getLastCode());
			diaryImageDao.addDiaryImage(diaryImage);
		}*/
		return "redirect:diary";
	}
}
