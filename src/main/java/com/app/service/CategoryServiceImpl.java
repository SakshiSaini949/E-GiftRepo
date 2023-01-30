package com.app.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.pojos.Categories;
import com.app.pojos.Products;
import com.app.repository.ICategoriesRepository;
import com.app.repository.IProductsRepository;

@Service
@Transactional
public class CategoryServiceImpl implements ICategoriesService {

	@Autowired
	ICategoriesRepository catRepo;
	@Autowired
	IProductsRepository prodRepo;

	@Override
	public void saveOrUpdate(Categories categories) {
		catRepo.save(categories);		
	}

	@Override
	public List<Categories> getAllCategories() {
		return (List<Categories>) catRepo.findAll();
	}

	@Override
	public void deleteCategory(Integer id) {
		catRepo.deleteById(id);
	}

	@Override
	public List<Products> getAllCatProducts(Integer cat) {
		System.out.println("cat="+cat);
		return prodRepo.findAllByCategories(catRepo.findById(cat));
	}

	@Override
	public Optional<Categories> getCategoryById(Integer id) {
		return catRepo.findById(id);
	}

}
