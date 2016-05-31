package com.dt.ekart.dao;

import java.util.List;

import com.dt.ekart.model.Customer;

public interface CustomerDAO {
	public void addCustomer(Customer u);
	List<Customer> viewUsers();

}
