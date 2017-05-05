package com.neeti.dao;

import com.neeti.model.Cart;
import com.neeti.model.CartItem;

public interface CartItemDao {
	
	void addCartItem(CartItem cartItem);

	CartItem getCartItem(int cartItemId);

	void removeCartItem(CartItem cartItem);
	
	void removeAllCartItems(Cart cart);

}
