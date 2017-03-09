package com.neeti.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neeti.model.Product;
import com.neeti.service.ProductService;



@Controller
public class ProductController {
	@Autowired
private ProductService productService;
	
public ProductController(){
	System.out.println("CREATING INSTANCE FOR PRODUCTCONTROLLER");
}

//http://localhost:8080/project1/admin/product/productform
@RequestMapping("/admin/product/productform")
public String getProductForm(Model model){
	//Product product = new Product();
	model.addAttribute("product",new Product());
	return "productform";
}

@RequestMapping("/admin/product/addProduct")
public ModelAndView saveProduct(@ModelAttribute(value="product") Product product){
	Product newProduct=productService.saveProduct(product);
	return new ModelAndView("productList","product",newProduct);
	
}
}