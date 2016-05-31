package com.dt.ekart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="User_roles")
public class UserRole {
	@Id
	@NotNull
	@Column(name="role_id")
	Integer id;
	
	@NotNull
	@Column(name="role_name")
	String name;
	
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
}
