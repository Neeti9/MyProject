package com.neeti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neeti.dao.CategoryDao;
import com.neeti.dao.ProductDao;
import com.neeti.model.Category;
import com.neeti.model.Product;

@Service
public class CategoryServiceImpl implements CategoryService {

@Autowired
private CategoryDao categoryDao;

@Autowired
private ProductDao productDao;

	public List<Category> getCategories() {
	
		return categoryDao.getCategories();
	}


	public List<Product> getAllProducts() {

		return productDao.getAllProducts();
	}

	
	public Product getProductById(int id) {
	
		return productDao.getProductById(id);
	}

}
