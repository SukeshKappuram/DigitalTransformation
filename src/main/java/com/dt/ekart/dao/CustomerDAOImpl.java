package com.dt.ekart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dt.ekart.model.Customer;
import com.dt.ekart.model.UserRole;

@Repository("custDAO")
public class CustomerDAOImpl implements CustomerDAO{
	@Autowired(required=true)
	private SessionFactory factory;
	
@Transactional(propagation=Propagation.SUPPORTS)
	public void addCustomer(Customer u) {
		Session s=factory.getCurrentSession();
		Transaction t=s.beginTransaction();
		s.saveOrUpdate(u);
		System.out.print(u.getId());
		UserRole r=new UserRole();
		r.setId(u.getId());
		r.setName("ROLE_USER");
		s.saveOrUpdate(r);
		t.commit();
	}

	public List<Customer> viewUsers() {
		return null;
	}

}
