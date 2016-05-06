package com.musicpub.dao;
import com.musicpub.model.Product;
import java.util.*;

public class ProductDAOImpl implements ProductDAO{
	public List getProducts(){
		List<Product> products=new ArrayList<Product>();
		products.add(new Product(101,"Gitar",2350.0,"Yamaha Gitar"));
		products.add(new Product(102,"Tabla",7890.0,"Taj Tabla"));
		products.add(new Product(103,"Drums",9850.0,"Waha Drums"));
		return products;
	}
}
