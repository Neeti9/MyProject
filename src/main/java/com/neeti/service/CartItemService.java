package com.neeti.service;

import com.neeti.model.Cart;
import com.neeti.model.CartItem;

public interface CartItemService {
	
	void addCartItem(CartItem cartItem);

	CartItem getCartItem(int cartItemId);

	void removeCartItem(CartItem cartItem);
	
	void removeAllCartItems(Cart cart);

}
