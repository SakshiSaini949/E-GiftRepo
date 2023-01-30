package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.pojos.Logins;

public interface ILoginsRepository extends JpaRepository<Logins, Integer>{

	Logins findByUsername(String username);
}
