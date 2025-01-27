package com.example.demo.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Order;
import com.example.demo.model.User;
import com.example.demo.repo.OrderRepo;
import com.example.demo.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderRepo orderRepo;

	@Override
	public void addOrUpdateOrder(Order order) {
		orderRepo.save(order);
	}

	@Override
	public List<Order> viewAllOrder() {

		return orderRepo.findAll();
	}

	@Override
	public List<Order> OrderByUser(User user) {

		return orderRepo.findByUser(user);
	}

}
