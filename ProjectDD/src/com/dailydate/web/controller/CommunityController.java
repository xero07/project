package com.dailydate.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dailydate.web.dao.BoardDao;
import com.dailydate.web.dao.RecoDao;
import com.dailydate.web.vo.Board;
import com.dailydate.web.vo.Recommend;

@Controller
@RequestMapping("/community/*")
public class CommunityController {

	private BoardDao boardDao;
	private RecoDao recoDao;

	@Autowired
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	
	
	@Autowired
	public void setRecoDao(RecoDao recoDao) {
		this.recoDao = recoDao;
	}


	@RequestMapping("Board")
	public String board(Model model) {
		List<Board> list = boardDao.getBoards(1,"","");

		model.addAttribute("list", list);

		return "community.Board";
	}

	@RequestMapping("BoardDetail")
	public String boardDetail(String c, Model model) {
		Board n = boardDao.getBoard(c);

		model.addAttribute("n", n);

		return "community.BoardDetail";
		//return "/WEB-INF/view/community/BoardDetail.jsp";
	}

	@RequestMapping(value = "BoardReg", method = RequestMethod.GET)
	public String BoardReg() {

		return "community.BoardReg";
		//return "/WEB-INF/view/community/BoardReg.jsp";
	}

	@RequestMapping(value = "BoardReg", method = RequestMethod.POST)
	public String BoardReg(Board n, HttpServletRequest request) {

		boardDao.addBoard(n);

		return "redirect:Board";
	}

	@RequestMapping("Reco")
	public String Recommend(Model model) {
		List<Recommend> list = recoDao.getRecommends(1,"","");

		model.addAttribute("list", list);

		return "community.Reco";
		//return "/WEB-INF/view/community/Reco.jsp";
	}

	@RequestMapping("RecoDetail")
	public String RecoDetail(String c, Model model) {
		Recommend n = recoDao.getRecommend(c);

		model.addAttribute("n", n);

		return "community.RecoDetail";
		//return "/WEB-INF/view/community/RecoDetail.jsp";
	}

	@RequestMapping(value = "RecoReg", method = RequestMethod.GET)
	public String RecoReg() {

		return "community.RecoReg";
		//return "/WEB-INF/view/community/RecoReg.jsp";
	}

	@RequestMapping(value = "RecoReg", method = RequestMethod.POST)
	public String RecoReg(Recommend n, HttpServletRequest request) {

		recoDao.addRecommend(n);

		return "redirect:Reco";
	}
	
}
