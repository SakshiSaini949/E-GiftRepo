package com.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.pojos.Cart;
import com.app.repository.ICartRepository;

@Service
@Transactional
public class CartServiceImpl implements ICartService {
	@Autowired
	ICartRepository cartRepo;

	@Override
	public void saveOrUpdate(Cart cart) {
		cartRepo.save(cart);
	}

	@Override
	public List<Cart> getAllCart() {
		return (List<Cart>) cartRepo.findAll();
	}

	@Override
	public void deleteCart(Integer id) {
		cartRepo.deleteById(id);
	}

}
