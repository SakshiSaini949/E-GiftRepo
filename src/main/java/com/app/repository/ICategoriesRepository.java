package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.pojos.Categories;

public interface ICategoriesRepository extends JpaRepository<Categories, Integer> {

	
}
