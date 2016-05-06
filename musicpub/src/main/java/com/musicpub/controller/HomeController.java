package com.musicpub.controller;
import com.musicpub.dao.*;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.*;

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
		ProductDAO product=new ProductDAOImpl();
		Gson gson = new Gson();
		System.out.print("Description");
		return new ModelAndView("Description", "data",gson.toJson(product.getProducts()));
	 }
	@RequestMapping("/Login")
	 public ModelAndView Login() {  
	     System.out.print("Login");
	       return new ModelAndView("Login", "welcomeMessage","Login Here!!");  
	 }
	@RequestMapping("/product")
	 public ModelAndView product(HttpServletRequest request, HttpServletResponse response) {
	     System.out.print("Login");
	       return new ModelAndView("Details", "product",request.getParameter("p")+".jpg");  
	 }
}