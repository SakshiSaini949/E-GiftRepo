package com.app.service;

import java.util.List;
import java.util.Optional;

import com.app.pojos.Categories;
import com.app.pojos.Products;

public interface ICategoriesService {
	public void saveOrUpdate(Categories categories);

	public List<Categories> getAllCategories();

	public void deleteCategory(Integer id);

	public List<Products> getAllCatProducts(Integer id);

	public Optional<Categories> getCategoryById(Integer id);
}
