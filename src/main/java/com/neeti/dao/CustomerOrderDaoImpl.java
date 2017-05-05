package com.neeti.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neeti.model.Cart;
import com.neeti.model.CartItem;
import com.neeti.model.CustomerOrder;

@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	
	public void addCustomerOrder(Cart cart) {
	
		CustomerOrder customerOrder=new CustomerOrder();
		
		customerOrder.setCart(cart);
		customerOrder.setCustomer(cart.getCustomer());
		customerOrder.setBillingAddress(cart.getCustomer().getBillingAddress());
		customerOrder.setShippingAddress(cart.getCustomer().getShippingAddress());
		
		//insert the data in customerOrder table
		
		Session session=sessionFactory.openSession();
		session.save(customerOrder);
		
		//to update grandTotal in Cart table;
		
		List<CartItem> cartItems=cart.getCartItems();
		double grandTotal=0.0;
		for(CartItem cartItem:cartItems)
		{
			grandTotal=grandTotal+cartItem.getTotalPrice();
		}
		
		cart.setGrandTotal(grandTotal);
		
		//update cart set grandTotal=? where cartId=?
		
		session.update(cart);
		session.flush();
		session.close();
	}


}
