package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Order;
import com.example.demo.model.User;

public interface OrderService {

	public void addOrUpdateOrder(Order order);

	public List<Order> viewAllOrder();

	public List<Order> OrderByUser(User user);

}
