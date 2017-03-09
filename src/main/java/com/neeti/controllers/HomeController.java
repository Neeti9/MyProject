package com.neeti.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String home(){
		return "home";
	}
	
	@RequestMapping("/aboutUs")
	public String aboutUs(){
		return "aboutUs";
	}
	

}
