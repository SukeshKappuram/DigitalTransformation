package com.dt.ekart.controller;

import java.io.*;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dt.ekart.model.*;
import com.dt.ekart.service.*;

@Controller
public class HomeController {
	

	@Autowired(required=true)
	ICustomerService iCustomerService;
	
	@Autowired(required=true)
	IProductService iProductService;
	
	//=======Home Operations
	
	@RequestMapping(value = { "/", "/Home" })
    public ModelAndView index() {  
        String message = "index page called";  
        System.out.println(message);
        return new ModelAndView("index", "Title", "Furzu");  
    }  
	
	@RequestMapping("/UserRegister")  
    public ModelAndView signUp() {  
        String message = "Sign Up Page called";  
        System.out.println(message);
        return new ModelAndView("SignUp", "command", new Customer());  
    }  
	
	@RequestMapping("/Details")  
    public ModelAndView getProduct(HttpServletRequest request, HttpServletResponse response) {  
        String message = "Description Page called";  
        System.out.println(message);
        String id=request.getParameter("p");
        return new ModelAndView("/flows/Description", "product",iProductService.getProduct(Integer.parseInt(id)));  
    }  
	 
	 @RequestMapping("/AboutUs")  
    public ModelAndView aboutUs() {  
        String message = "about us page called";  
        System.out.println(message);
        return new ModelAndView("AboutUs",  "Title", "Furzu");  
    }  
	 
	 @RequestMapping("/classified")  
	    public ModelAndView categories() {  
	        return new ModelAndView("Categories","products",getProducts(""));  
	    }
	 
	 //=======Loging Operations
	 
	 @RequestMapping(value="/logoff")
     public ModelAndView logoutPage () {
		 System.out.println("logout");
        return new ModelAndView("logout", "Title", "Furzu");
     }
	 
	 @RequestMapping(value="/login", method = RequestMethod.GET)  
    public String login(HttpServletRequest request, HttpServletResponse response) {  
	        String message = "login page called";  
	        System.out.println(message);
	        return "SignIn";  
    } 
	 
	 @RequestMapping("/accessdenied")  
    public ModelAndView Denied() {  
        String message = "Denied page called";  
        System.out.println(message);
        return new ModelAndView("SignIn",  "message", "Incorrect User Credentials");  
    } 
	 
	 @RequestMapping("/store")
	  public ModelAndView store(HttpServletRequest request,ModelMap model,@Valid @ModelAttribute("ekart") Customer u,BindingResult result)
	    {
		 if(result.hasErrors()){
			 List<ObjectError> errors=result.getAllErrors();
			 return new ModelAndView("SignUp", "command", u).addObject("messages", errors);
		 }
	    	u.setEnabled(true);
	    	iCustomerService.addCustomer(u);
	    	return new ModelAndView("SignIn", "user", u);
	    }
	 
	 //========Admin Operations
	 
	@RequestMapping(value = "/admin", method = RequestMethod.GET)  
    public ModelAndView Admin(ModelMap model,Principal princpal) {  
        String message = "Admin page called";  
        System.out.println(message);
        return new ModelAndView("Admin/Admin",  "products", getProducts("")).addObject("Title", "Furzu");  
    }  
	
 	@RequestMapping("/addProduct")  
    public ModelAndView addProduct() {  
        String message = "addProduct page called";  
        System.out.println(message);
        return new ModelAndView("Admin/NewProduct",  "command", new Product());  
    } 
 	
    @RequestMapping("/ProductInfo")  
    public ModelAndView product(HttpServletRequest request,HttpServletResponse response) {  
    	System.out.println("products Page Called");
    	String type="",content="";
    	try{
    	int pid=Integer.parseInt(request.getParameter("p"));
    	switch(pid){
    	case 101:type="Bed";break;
    	case 102:type="Dining";break;
    	case 103:type="Study";break;
    	case 104:type="Sofa";break;
    	default :type=" ";
    	}
    	content=type;
    	}catch(Exception e){type=" ";content="All Product";}
        return new ModelAndView("Product","product",getProducts(type)).addObject("about", content).addObject("count",iProductService.viewAllProducts(type).size());
    }
    
    @RequestMapping("/viewProduct")  
    public ModelAndView viewProducts() {  
        return new ModelAndView("Admin/viewProducts","products",getProducts(""));  
    }
    
    
    
    @RequestMapping("/Product")  
    public ModelAndView retriveProduct(HttpServletRequest request,HttpServletResponse response) {  
        String message = "retrive Product page called";  
        System.out.println(message);
        int pid=Integer.parseInt(request.getParameter("p"));
        return new ModelAndView("Admin/NewProduct",  "command", iProductService.getProduct(pid));  
    }
    
    //=====CRUD Operations
    
    @RequestMapping("/add")
    ModelAndView storeproduct(HttpServletRequest request,@RequestParam("file") MultipartFile file,@ModelAttribute("ekart") Product p,BindingResult result)
    {
    	if(result.hasErrors()){
			 List<ObjectError> errors=result.getAllErrors();
			 return new ModelAndView("Admin/NewProduct", "command", p).addObject("messages", errors);
		 }
    	System.out.println(p.getManufacture());
    	String fileName = null,error="";
	    	if (!file.isEmpty()) {
	            try {
	                fileName = file.getOriginalFilename();
	                byte[] bytes = file.getBytes();
	                BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File("E:/Sukesh/DIGINXT/ekart/src/main/webapp/resources/images/" + fileName)));
	                buffStream.write(bytes);
	                buffStream.close();
	                error= "You have successfully uploaded " + fileName;
	            } catch (Exception e) {
	            	error="You failed to upload " + fileName + ": " + e.getMessage();
	            }
	        } else {
	        	error="Unable to upload. File is empty.";
	        }
	    	iProductService.addProduct(p); 
	    	File oldName = new File("E:/Sukesh/DIGINXT/ekart/src/main/webapp/resources/images/" + fileName);
	        File newName = new File("E:/Sukesh/DIGINXT/ekart/src/main/webapp/resources/images/" + p.getId()+fileName.substring(fileName.indexOf(".")));
	        if(oldName.renameTo(newName)) {
	           System.out.println(p.getId());
	           error=p.getName()+" added Successfully !";
	        } 
	    	return new ModelAndView("Admin/Admin", "msg", error).addObject("products", getProducts(""));
	    }
    
	 	@RequestMapping("/Delete")  
	    public ModelAndView deleteProduct(HttpServletRequest request,HttpServletResponse response) {  
	        String message = "Delete page called";  
	        System.out.println(message);
	        int pid=Integer.parseInt(request.getParameter("p"));
	        iProductService.deleteProduct(pid);
	        return new ModelAndView("viewProducts", "msg", " Deleted Successfully !").addObject("products", getProducts(""));
	    }
	 	
	 	@RequestMapping("/Update")  
	    public ModelAndView updateProduct(HttpServletRequest request,HttpServletResponse response) {  
	        String message = "Update page called";  
	        System.out.println(message);
	        int pid=Integer.parseInt(request.getParameter("id"));
	        String name=request.getParameter("name");
	        String description=request.getParameter("description");
	        double price=Double.parseDouble(request.getParameter("price"));
	        iProductService.updateProduct(pid, name, description, price);
	        return new ModelAndView("viewProducts", "msg", name+" Updated Successfully !").addObject("products", getProducts(""));  
	    }
	 	//=======Flow
	 	
	 	@RequestMapping("/OrderSummary")  
	    public ModelAndView orderSummary() {
	 		return new ModelAndView("flows/OrderSummary");
	 	}  
	    
	 	
	 	//===== Other Operation Related functions
	 	
	 	public String getProducts(String type){
	 		ObjectMapper mapper = new ObjectMapper();
	        String jsonData="";
	        try {
				jsonData=mapper.writeValueAsString(iProductService.viewAllProducts(type));
				System.out.print(jsonData);
			} catch (JsonGenerationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JsonMappingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 		return jsonData;
	 	}
}
