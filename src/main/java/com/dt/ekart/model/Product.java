package com.dt.ekart.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.AccessType;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="Products")
public class Product {
	
	@Column(name="pr_id")
	@Id
	@SequenceGenerator(name="prod_seq", initialValue=1001, allocationSize=1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="prod_seq")
    Integer id;
	
	@NotNull
	@Size(min=3,message="The product Name should have atleast 3 char ")
	@Column(name="pr_name")
	String name;
	
	@NumberFormat(style = Style.CURRENCY)
	@Column(name="pr_price")
	@NotNull
	double price;

	@Size(min=5,message="The product description should have atleast 5 char")
	@NotNull
	@Column(name="pr_desc")
    String description;
	
	@Size(min=5,message="The product manufacture should have atleast 5 char")
	@NotNull
	@Column(name="pr_Manf")
    String manufacture;
	
	@Transient
    MultipartFile file;
    
public void setId(Integer id) {
	this.id = id;
}
public Integer getId() {
	return id;
}
public void setName(String name) {
	this.name = name;
}
public String getName() {
	return name;
}
public void setPrice(double price) {
	this.price = price;
}
public double getPrice() {
	return price;
}
public void setDescription(String description) {
	this.description = description;
}
public String getDescription() {
	return description;
}
public void setManufacture(String manufacture) {
	this.manufacture = manufacture;
}
public String getManufacture() {
	return manufacture;
}
public void setFile(MultipartFile file) {
	this.file = file;
}
public MultipartFile getFile() {
	return file;
}
}
