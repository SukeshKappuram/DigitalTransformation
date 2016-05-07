package com.musichub.furnitures.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Products")
public class Product {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "productId")
	private int productId;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "price")
	private double price;
	
	@Column(name = "category")
	private String category;
	
	@Column(name = "description")
	private String description;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}
	
	public Product(int productId,String name,double price,String category,String description) {
		this.productId=productId;
		this.name=name;
		this.price=price;
		this.category=category;
		this.description=description;
	}
	
	public void setProductId(int productId){
		this.productId=productId;
	}
	
	public void setName(String name){
		this.name=name;
	}
	
	public void setPrice(double price){
		this.price=price;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public void setDescription(String description){
		this.description=description;
	}
	
	public int getProductId() {
		return productId;
	}
	
	public String getName() {
		return name;
	}
	
	public double getPrice() {
		return price;
	}
	
	public String getCategory() {
		return category;
	}
	
	public String getDescription() {
		return description;
	}
}
