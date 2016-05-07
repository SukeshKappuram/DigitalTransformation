package com.musichub.furnitures.dao;

import java.util.ArrayList;
import java.util.List;

import com.musichub.furnitures.model.Product;

public class ProductDAOImpl implements ProductDAO {
	public List getProducts(){
		List<Product> products=new ArrayList<Product>();
		products.add(new Product(101,"Sleeping Sofa",23500.0,"Sofa","Finite Sofa"));
		products.add(new Product(102,"Eating Dining Table",78090.0,"Dining Table","Taj Woods Dinings"));
		products.add(new Product(103,"Studing Study Tables",19850.0,"Study Table","WES Study Table"));
		return products;
	}
}