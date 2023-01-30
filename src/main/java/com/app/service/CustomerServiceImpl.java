package com.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.pojos.Customers;
import com.app.repository.ICustomersRepository;

@Service
@Transactional
public class CustomerServiceImpl implements ICustomerService {

	@Autowired
	ICustomersRepository custRepo;

	@Override
	public void saveOrUpdate(Customers customers) {
		custRepo.save(customers);
	}
	@Override
	public Customers getCustomerByCustomerId(int id) {
		Customers cust = custRepo.findById(id).get();
		System.out.println(cust);
		return cust;
	}
	@Override
	public List<Customers> getAllCustomers() {
		return (List<Customers>)custRepo.findAll();
	}

	@Override
	public void deleteCustomers(int id) {
		custRepo.deleteById(id);
	}
}
