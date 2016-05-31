package com.dt.ekart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dt.ekart.dao.CustomerDAO;
import com.dt.ekart.model.Customer;

@Service("customerService")
public class CustomerService implements ICustomerService {
	@Autowired(required=true)
	CustomerDAO cd;

	@Transactional(propagation=Propagation.SUPPORTS)
	public void addCustomer(Customer c) {
		cd.addCustomer(c);
		
	}

	public List<Customer> viewAllCustomers() {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
