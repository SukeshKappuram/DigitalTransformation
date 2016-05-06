package com.musicpub.dao;
import com.musicpub.model.Product;
import org.springframework.orm.hibernate3.HibernateTemplate; 
import java.util.*;

public class ProductDAOImpl implements ProductDAO{
	
	HibernateTemplate template;  
	public void setTemplate(HibernateTemplate template) {  
		this.template = template;  
	}
	
	public void saveProduct(Product p){  
	    template.save(p);  
	}  
	
	public void updateProduct(Product p){  
	    template.update(p);  
	}  
	
	public void deleteProduct(Product p){  
	    template.delete(p);  
	}  

	public Product getByProductId(int productId){  
		Product p=(Product)template.get(Product.class,productId);  
	    return p;  
	} 

	public List getProducts(){
		List<Product> products=new ArrayList<Product>();
		products.add(new Product(101,"Gitar",2350.0,"Yamaha Gitar"));
		products.add(new Product(102,"Tabla",7890.0,"Taj Tabla"));
		products.add(new Product(103,"Drums",9850.0,"Waha Drums"));
		//products=template.loadAll(Product.class); 
		return products;
	}
}
