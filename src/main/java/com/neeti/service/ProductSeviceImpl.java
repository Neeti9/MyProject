package com.neeti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neeti.dao.ProductDao;
import com.neeti.model.Product;

@Service
public class ProductSeviceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;

	
	public Product saveProduct(Product product) {
	return productDao.saveProduct(product);
	}

}
