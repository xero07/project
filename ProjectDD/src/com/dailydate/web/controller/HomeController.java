package com.dailydate.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home/*")
public class HomeController {
	
	@RequestMapping("main")
	public String main()
	{
		return "home.main";
	}
}
