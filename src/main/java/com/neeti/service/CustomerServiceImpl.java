package com.neeti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neeti.dao.CustomerDao;
import com.neeti.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	public void saveCustomer(Customer customer) {
		
		customerDao.saveCustomer(customer);
		
	}

		public Customer getCustomerByUsername(String username) {
		
			customerDao.getCustomerByUsername(username);
		return null;
	}

}
