package com.neeti.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neeti.model.Cart;
import com.neeti.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCartItem(CartItem cartItem) {
	
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(cartItem);
		session.flush();
		session.close();
		

	}

	
	public CartItem getCartItem(int cartItemId) {
		
			Session session=sessionFactory.openSession();
			CartItem cartItem=session.get(CartItem.class,cartItemId);
			session.flush();
			session.close();
			return cartItem;
	
	}

	
	public void removeCartItem(CartItem cartItem) {
	
		Session session=sessionFactory.openSession();
		session.delete(cartItem);
		session.flush();
		session.close();
	}
	
	public void removeAllCartItems(Cart cart) {
		List<CartItem> cartItems=cart.getCartItems();
		for(CartItem cartItem:cartItems)
		{
			removeCartItem(cartItem);
		}
		
	}

}
