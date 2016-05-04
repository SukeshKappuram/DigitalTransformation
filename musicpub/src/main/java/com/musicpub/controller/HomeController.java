package com.musicpub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView; 

@Controller
public class HomeController {
	@RequestMapping(value={"/", "Home"})  
	 public ModelAndView Home() {  
	     System.out.print("Home");
	       return new ModelAndView("Home", "welcomeMessage","Hi Rajini!!");  
	 }
	@RequestMapping("/About")
	 public ModelAndView AboutUs() {  
	     System.out.print("About");
	       return new ModelAndView("Aboutus", "welcomeMessage","About Us!!");  
	 }
	@RequestMapping("/ProductInfo")
	 public ModelAndView Description() {  
	     System.out.print("Description");
	       return new ModelAndView("Description", "welcomeMessage","Description !!");  
	 }
	@RequestMapping("/Login")
	 public ModelAndView Login() {  
	     System.out.print("Login");
	       return new ModelAndView("Login", "welcomeMessage","Login Here!!");  
	 }
}