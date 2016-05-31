package com.dt.ekart.service;

import java.util.List;

import com.dt.ekart.model.Product;

public interface IProductService {
	public void addProduct(Product p);
	public List<Product> viewAllProducts(String type);
	public void deleteProduct(int pid);
	public void updateProduct(int id,String name,String description,double price);
	public Product getProduct(int id);
}
