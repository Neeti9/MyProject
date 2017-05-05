package com.neeti.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neeti.service.CategoryService;

@Controller
public class HomeController {
	
	@Autowired
	private CategoryService categoryService;
	
	public HomeController(){
		System.out.println("INSTANTIATING HOMECONTROLLER");
	}
	
	@RequestMapping("/home")
	public String home(HttpSession session){
		session.setAttribute("categories", categoryService.getCategories());
		
		//categories in header.jsp not in home.jsp we havent used model instead used session
		return "home";
	}
	
	@RequestMapping("/aboutUs")
	public String aboutUs(){
		return "aboutUs";
	}
	
	//login?error, login?logout, login
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout,
			Model model)
	{
		if(error!=null)
		model.addAttribute("error","Invalid username and password..Please enter valid username and password");
		if(logout!=null)
			model.addAttribute("logout","LOgged out Successfully..");
		
		return "login";
	}

}
