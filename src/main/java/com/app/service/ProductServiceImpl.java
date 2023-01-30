package com.app.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.pojos.Products;
import com.app.repository.IProductsRepository;

@Service
@Transactional
public class ProductServiceImpl implements IProductService {

	@Autowired
	IProductsRepository prodRepo;

	@Override
	public void saveOrUpdate(Products products) {
		prodRepo.save(products);
	}

	@Override
	public void deleteProducts(int id) {
		prodRepo.deleteById(id);
	}

	@Override
	public Optional<Products> getProductsById(int id) {
		return prodRepo.findById(id);
	}

	

}
