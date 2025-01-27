package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Cart;

public interface CartService {

	public void addorupdatecart(Cart c);

	public List<Cart> viewallcart();

	public void deletecart(int id);

	public Cart updatecart(int id);

	public List<Cart> cartbyuser(int id);
	
	public void clearCart();

}
