package com.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.pojos.CartItems;
import com.app.repository.ICartItemsRepository;

@Service
@Transactional
public class CartItemsServiceImpl implements ICartItemsService {

	@Autowired
	ICartItemsRepository cartItemRepo;

	@Override
	public void saveOrUpdate(CartItems cartItems) {
		cartItemRepo.save(cartItems);

	}

	@Override
	public List<CartItems> getAllCartItems() {
		return (List<CartItems>) cartItemRepo.findAll();
	}

	@Override
	public void deleteCartItems(Integer id) {
		cartItemRepo.deleteById(id);
	}

}
