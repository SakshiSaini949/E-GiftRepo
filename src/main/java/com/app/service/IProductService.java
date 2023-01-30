package com.app.service;

import java.util.Optional;

import com.app.pojos.Products;

public interface IProductService {
	public void saveOrUpdate(Products products);

	//public List<Products> getAllProducts();

	public void deleteProducts(int id);

	public Optional<Products> getProductsById(int id);
}
