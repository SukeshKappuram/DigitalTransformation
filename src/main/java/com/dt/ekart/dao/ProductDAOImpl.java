package com.dt.ekart.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dt.ekart.model.Product;

@Repository("prodDAO")
public class ProductDAOImpl implements ProductDAO{
	@Autowired(required=true)
	private SessionFactory factory;
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public void addProduct(Product p) {
		Session s=factory.getCurrentSession();
		Transaction t=s.beginTransaction();
		s.saveOrUpdate(p);
		t.commit();
	}
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public void deleteProduct(int id) {
		Session s=factory.getCurrentSession();
		Transaction t=s.beginTransaction();
		Product p = (Product)s.get(Product.class,id);
		s.delete(p);
		t.commit();
	}
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public void updateProduct(int id,String name,String description,double price) {
		Session s=factory.getCurrentSession();
		Transaction t=s.beginTransaction();
		Product p = (Product)s.get(Product.class,id);
		p.setName(name);
		p.setPrice(price);
		p.setDescription(description);
		s.update(p);
		t.commit();
	}
	
	public Product getProduct(int id){
		Session s=factory.getCurrentSession();
		Transaction t=s.beginTransaction();
		Product p = (Product)s.get(Product.class,id);
		t.commit();
		return p;
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> getProducts(String type) {
		Session s=factory.getCurrentSession();
		Transaction t=s.beginTransaction();
		List<Product> products=s.createQuery("from Product where name like '%"+type+"%'").list();
		t.commit();
		return products;
	}
}
