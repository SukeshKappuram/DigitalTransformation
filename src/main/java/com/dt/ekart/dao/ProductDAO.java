
package com.dt.ekart.dao;

import java.util.List;

import com.dt.ekart.model.*;
public interface ProductDAO {
	public void addProduct(Product p);
	 public List<Product> getProducts(String type);
	 public void deleteProduct(int pid);
	 public void updateProduct(int id,String name,String description,double price);
	 public Product getProduct(int id);
}
