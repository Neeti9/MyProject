package com.neeti.dao;

import com.neeti.model.Customer;

public interface CustomerDao {

	void saveCustomer(Customer customer);
	public Customer getCustomerByUsername(String username);

}
