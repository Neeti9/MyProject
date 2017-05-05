package com.neeti.service;

import java.util.List;

import com.neeti.model.Category;
import com.neeti.model.Product;

public interface CategoryService {
	
	List<Category> getCategories();
	List<Product> getAllProducts();
	Product getProductById(int id);

}
