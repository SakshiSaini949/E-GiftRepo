package com.app.service;

import java.util.List;

import com.app.pojos.Customers;

public interface ICustomerService {
	public void saveOrUpdate(Customers customers);

	public List<Customers> getAllCustomers();

	public void deleteCustomers(int id);

	public Customers getCustomerByCustomerId(int id);
}
