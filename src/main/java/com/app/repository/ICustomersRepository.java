package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.pojos.Customers;

public interface ICustomersRepository extends JpaRepository<Customers, Integer> {
	Customers findByUsername(String username);

}
