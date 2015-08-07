package com.dailydate.web.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dailydate.web.dao.MemberDao;
import com.dailydate.web.vo.Member;

@Controller
@RequestMapping("/joinus/*")
public class JoinusController {

	private MemberDao memberDao;

	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@RequestMapping("adminMember")
	public String adminMember(Model model){
		
		List<Member> list = memberDao.getMembers();
		model.addAttribute("list", list);
		
		return "joinus.adminMember";
	}

	@RequestMapping("login")
	public String login() {
		return "joinus.login";
	}

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		return "joinus.join";
	}

	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(Member m, ServletRequest request) {
		
		memberDao.addMember(m);

		return "redirect:login";
	}
	
	@RequestMapping(value = "memberDelete", method = RequestMethod.POST)
	public String memberDelete(HttpServletRequest request){
		
		String[] delMember = request.getParameterValues("check");
		
		for(int i = 0; i < delMember.length; i++){
			
			String id = delMember[i];
			
			memberDao.removeMember(id);
		}
		
		
		return "redirect:adminMember";
		
	}
}
