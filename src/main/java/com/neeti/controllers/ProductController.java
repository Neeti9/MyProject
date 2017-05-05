package com.neeti.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
//import org.springframework.web.servlet.ModelAndView;

import com.neeti.model.Product;
import com.neeti.service.CategoryService;
import com.neeti.service.ProductService;



@Controller
public class ProductController {
	@Autowired
private ProductService productService;

	@Autowired
	private CategoryService categoryService;
	
	@Autowired
public ProductController(ProductService productService){
	System.out.println("CREATING INSTANCE FOR PRODUCTCONTROLLER");
	this.productService=productService;
	System.out.println("PRODUCTSERVICE"+productService);
	
}

//http://localhost:8080/project1/admin/product/productform
@RequestMapping("/admin/product/productForm")
public String getProductForm(Model model){
	//Product product = new Product();
	model.addAttribute("product",new Product());
	model.addAttribute("categories",categoryService.getCategories());
	return "productForm";
}

/*@RequestMapping("/admin/product/addProduct")
public ModelAndView saveProduct(@ModelAttribute(value="product") Product product){
	Product newProduct=productService.saveProduct(product);
	return new ModelAndView("productList","product",newProduct);*/

@RequestMapping("/admin/product/addProduct")
public String saveProduct(@Valid @ModelAttribute(value="product") Product product,BindingResult result){
	if (result.hasErrors())
		return "productForm";
	//System.out.println("PRODUCT:"+product.getName()+" "+product.getDescription()+"  "+product.getPrice());
	productService.saveProduct(product);
	
	MultipartFile prodImage=product.getImage();
	if(prodImage.isEmpty()){
		Path paths=Paths.get("E:/niit_dt/MyProject/src/main/webapp/WEB-INF/resources/images/"+product.getId()+".jpg");
	try{
		prodImage.transferTo(new File(paths.toString()));
	}catch(IllegalStateException e)
	{
		
		e.printStackTrace();
	}catch(IOException e)
	{
		e.printStackTrace();
	}
	}
	return "redirect:/all/product/getAllProducts";
	
}
@RequestMapping("/all/product/getAllProducts")
public String getAllProducts(Model model)
{
	System.out.println("->->In getAllProduct method->->");
	List<Product> products=productService.getAllProducts();
	model.addAttribute("productList",products);
	return "productList";
}

@RequestMapping("/all/product/viewProduct/{id}")
public String viewProduct(@PathVariable int id,Model model)
{
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	return "viewproduct";
}

@RequestMapping("/admin/product/deleteProduct/{id}")
public String deleteProduct(@PathVariable int id)
{
	productService.deleteProduct(id);
	return "redirect:/all/product/getAllProducts";
}

//for editproductform

@RequestMapping("/admin/product/editform/{id}")
public String editProductForm(@PathVariable int id,Model model)
{
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	model.addAttribute("categories",categoryService.getCategories());
	return "editproductform";
	
}

@RequestMapping("/admin/product/editProduct")
public String editProductDetails(@Valid @ModelAttribute("product") Product product,BindingResult result)
{
	if(result.hasErrors())
	{
		return "productForm";
	}
	productService.updateProduct(product);
	return "redirect:/all/product/getAllProducts";
}

@RequestMapping("/all/product/productsByCategory")
public String getproductsByCategory(@RequestParam(name="searchCondition") String searchCondition,Model model)
{
	List<Product> products= productService.getAllProducts();
	model.addAttribute("productList",products);
	model.addAttribute("searchCondition",searchCondition);
	return "productList";
}
}