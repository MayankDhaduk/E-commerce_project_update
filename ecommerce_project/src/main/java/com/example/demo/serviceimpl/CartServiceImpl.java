package com.example.demo.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Service;

import com.example.demo.model.Cart;
import com.example.demo.model.User;
import com.example.demo.repo.CartRepo;
import com.example.demo.repo.UserRepo;
import com.example.demo.service.CartService;

import jakarta.persistence.EntityNotFoundException;
import jakarta.servlet.http.HttpSession;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	CartRepo repo;

	@Override
	public void addorupdatecart(Cart c) {
		// TODO Auto-generated method stub
		repo.save(c);
	}

	@Override
	public List<Cart> viewallcart() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public void deletecart(int id) {
		// TODO Auto-generated method stub
		repo.deleteById(id);
	}

	@Override
	public Cart updatecart(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).orElseThrow();
	}

	@Autowired
	UserRepo userRepo;

	@Override
	public List<Cart> cartbyuser(int id) {
		// TODO Auto-generated method stub

		User user = userRepo.findById(id).orElseThrow(() -> new EntityNotFoundException("User not found ID : " + id));

		return repo.findbyuser(user);
	}

	@Override
	public void clearCart() {
		// TODO Auto-generated method stub
		repo.deleteAll();
	}

}
