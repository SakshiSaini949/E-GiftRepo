package com.app.service;

import java.util.List;

import com.app.pojos.CartItems;

public interface ICartItemsService {
	public void saveOrUpdate(CartItems cartItems);

	public List<CartItems> getAllCartItems();

	public void deleteCartItems(Integer id);

}
