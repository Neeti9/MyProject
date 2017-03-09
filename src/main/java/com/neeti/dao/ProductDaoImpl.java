package com.neeti.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neeti.model.Product;


@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired
private SessionFactory sessionFactory;
	public Product saveProduct(Product product) {
      Session session=sessionFactory.openSession();
      System.out.println(product.getId());
      session.save(product);
      session.flush();
      session.close();
      System.out.println(product.getId());
      return product;
	}

}

