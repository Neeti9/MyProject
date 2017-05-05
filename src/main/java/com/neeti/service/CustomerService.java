package com.neeti.service;

import com.neeti.model.Customer;

public interface CustomerService {

	void saveCustomer(Customer customer);
	public Customer getCustomerByUsername(String username);
}
