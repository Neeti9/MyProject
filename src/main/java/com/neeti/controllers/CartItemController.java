package com.neeti.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.neeti.model.Cart;
import com.neeti.model.CartItem;
import com.neeti.model.Customer;
import com.neeti.model.Product;
import com.neeti.service.CartItemService;
import com.neeti.service.CartService;
import com.neeti.service.CustomerService;
import com.neeti.service.ProductService;

@Controller
public class CartItemController {
	
	@Autowired
	private CartItemService cartItemService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/addCartItem/{pid}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value="pid") int productId)
	{
  User user=
		  (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    String username=user.getUsername();
    Customer customer=customerService.getCustomerByUsername(username);
    
    Cart cart=customer.getCart();
    List<CartItem> cartItems= cart.getCartItems();
    
    Product product=productService.getProductById(productId);
    
    for(int i=0;i<cartItems.size();i++)
    {
    	CartItem cartItem=cartItems.get(i);
    	Product p=cartItem.getProduct();
    	//1==1
    	
    	if(p.getId()==productId)
    	{
    		cartItem.setQuantity(cartItem.getQuantity()+1); //increment the quantity
    		cartItem.setTotalPrice(cartItem.getQuantity()*p.getPrice()); //update the total price
    		cartItemService.addCartItem(cartItem); //update the quantity in the cartItem
    		return;
    	}
    }
    
    CartItem cartItem=new CartItem();
    cartItem.setQuantity(1);
    cartItem.setTotalPrice(cartItem.getQuantity()*product.getPrice());
    cartItem.setProduct(product);
    cartItem.setCart(cart); //set cart id
    cartItemService.addCartItem(cartItem); //insert query
	}
	
	@RequestMapping("/cart/removeCartItem/{cartItemId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable int cartItemId){
		CartItem cartItem=cartItemService.getCartItem(cartItemId);
		cartItemService.removeCartItem(cartItem);
	}

	@RequestMapping("/cart/removeAllCartItems/{cartId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable int cartId){
		Cart cart=cartService.getCart(cartId);
		cartItemService.removeAllCartItems(cart);
		
	}
	
}
