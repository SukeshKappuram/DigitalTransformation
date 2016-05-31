package com.dt.ekart.service;

import java.util.List;

import com.dt.ekart.model.Customer;

public interface ICustomerService {
	public void addCustomer(Customer c);
	public List<Customer> viewAllCustomers();

}
