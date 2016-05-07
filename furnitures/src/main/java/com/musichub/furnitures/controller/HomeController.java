package com.musichub.furnitures.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView;
import com.musichub.furnitures.dao.*;
import com.google.gson.Gson;
import com.musichub.furnitures.model.*;
import com.musichub.furnitures.service.*;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@RequestMapping(value={"/", "Home"})  
	 public ModelAndView Home() {  
	       return new ModelAndView("Home", "Title","Furzu");  
	 }
	@RequestMapping(value={"classified"})  
	 public ModelAndView Categories() {  
	       return new ModelAndView("Categories", "Title","Furzu");  
	 }
	@RequestMapping(value={"ProductInfo"})  
	 public ModelAndView ProductInfo() {
		ProductDAO product=new ProductDAOImpl();
		Gson gson=new Gson();
	       return new ModelAndView("Product", "data",gson.toJson(product.getProducts()));  
	 }
	@RequestMapping(value={"product"})  
	 public ModelAndView Product() {
		return new ModelAndView("Description", "Title","Furzu");  
	 }
	
	@RequestMapping(value={"UserLogin"})  
	 public ModelAndView Login() {
		return new ModelAndView("Login", "Title","Furzu");  
	 }
	
	 @RequestMapping(value = "/UserRegister", method = RequestMethod.GET)
	   public ModelAndView User() {
	      return new ModelAndView("User", "command", new User());
	 } 
	
	 @RequestMapping(value = "/addUser", method = RequestMethod.POST)
	   public ModelAndView addStudent(@ModelAttribute("SpringWeb")User user, 
	   ModelMap model) {
		 	model.addAttribute("name", user.getName());
		 	model.addAttribute("phone", user.getPhone());
		 	model.addAttribute("mailId", user.getMailId());
		 	UserService us=new UserServiceImpl();
		 	us.save(user);
	      return new ModelAndView("Home", "command", user);
	   }
	 
	 @RequestMapping(value={"Administrator"})  
	 public ModelAndView Admin() {
		return new ModelAndView("Admin", "Title","Furzu");  
	 }
}