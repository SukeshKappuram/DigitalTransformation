package com.dt.ekart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dt.ekart.dao.ProductDAO;
import com.dt.ekart.model.Product;

@Service("productService")
public class ProductService implements IProductService {
	@Autowired(required=true)
	ProductDAO pd;

	@Transactional(propagation=Propagation.SUPPORTS)
	public void addProduct(Product p) {
		pd.addProduct(p);
		
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public void deleteProduct(int pid){
		pd.deleteProduct(pid);
	}
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public void updateProduct(int id,String name,String description,double price){
		pd.updateProduct(id,name,description,price);
	}
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public Product getProduct(int id){
		return pd.getProduct(id);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Product> viewAllProducts(String type) {
		return pd.getProducts(type);
	}

}
