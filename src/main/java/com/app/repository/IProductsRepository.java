package com.app.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.pojos.Categories;
import com.app.pojos.Products;

public interface IProductsRepository extends JpaRepository<Products, Integer> {

	List<Products> findAllByCategories(Optional<Categories> optional);
}
