package com.musichub.furnitures.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Customers")
public class User {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "userId")
	private int userId;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "phone")
	private String phone;
	
	@Column(name = "mailId")
	private String mailId;
	
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public void setName(String name){
		this.name=name;
	}
	
	public void setPhone(String phone){
		this.phone=phone;
	}
	
	public void setMailId(String mailId){
		this.mailId=mailId;
	}
	
	public int getUserId() {
		return userId;
	}
	
	public String getName() {
		return name;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getMailId() {
		return mailId;
	}
}
