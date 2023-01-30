package com.app.service;

import java.util.List;

import com.app.pojos.Cart;

public interface ICartService {
	public void saveOrUpdate(Cart cart);

	public List<Cart> getAllCart();

	public void deleteCart(Integer id);

}
