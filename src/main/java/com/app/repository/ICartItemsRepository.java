package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.pojos.CartItems;

public interface ICartItemsRepository extends JpaRepository<CartItems, Integer> {

}
