package com.musichub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView;  

@Controller
public class HomeController{
	@RequestMapping(value={"", "/", "Home"})  
	 public ModelAndView Home() {  
	     System.out.print("Home");
	       return new ModelAndView("Home", "welcomeMessage","Hi Chennai!!");  
	 }
	@RequestMapping("/about")
	 public ModelAndView AboutUs() {  
	     System.out.print("About");
	       return new ModelAndView("aboutUs", "welcomeMessage","Hi Chennai!!");  
	 }
	@RequestMapping("/Login")
	 public ModelAndView Login() {  
	     System.out.print("Login");
	       return new ModelAndView("Login", "welcomeMessage","Hi Chennai!!");  
	 }
}