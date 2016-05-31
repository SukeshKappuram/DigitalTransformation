package com.dt.ekart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

@Entity
@Table(name="Customers")
public class Customer {
	
	@Id
	@SequenceGenerator(name="cust_seq", initialValue=1001, allocationSize=1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="cust_seq")
	Integer id;
	
	@Pattern(regexp = "^([A-z]+).{3,10}$",message=" User Name must have Min of 3 and Max of 10 char Only!")
	@NotNull
	String username;
	
	@Pattern(regexp = "^(?=.*\\d)(?=.*[a-zA-Z])(?=.*[@#$%^&]).{6,10}$",message=" Password must have Min of 6 Char! and consists of atleast One char and one Digit")
	@NotNull
	String password;
	
	@NotNull
	@Email
	@Size(min = 10,message=" mail Id must have Min of 6 Char!")
	String email;
	
	@Length(max=10,min=10,message="Phone number is not valid. Should be of length 10.")
    @NotEmpty(message="Phone field is mendatory.") @NumberFormat(style= Style.NUMBER)
	String phone;
	
	boolean enabled;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhone() {
		return phone;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public boolean isEnabled() {
		return enabled;
	}
}
