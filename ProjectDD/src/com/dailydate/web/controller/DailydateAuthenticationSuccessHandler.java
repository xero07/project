package com.dailydate.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.dailydate.web.dao.MemberDao;
import com.dailydate.web.vo.Member;

public class DailydateAuthenticationSuccessHandler implements AuthenticationSuccessHandler{
	
	
	private MemberDao memberDao;
	
	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}


	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication) throws IOException,
			ServletException {
		
		String id = authentication.getName();
		
		Member m = memberDao.getMember(id);
		String type = m.getDefaultRole();
		
		String targetUrl = "/home/main";
		
		if(type.equals("ROLE_ADMIN"))
			targetUrl = "/joinus/adminMember";
		
		RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
		redirectStrategy.sendRedirect(request, response, targetUrl);
		
	}

}
