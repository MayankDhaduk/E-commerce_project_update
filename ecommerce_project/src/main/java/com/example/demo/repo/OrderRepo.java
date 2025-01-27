package com.example.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Order;
import com.example.demo.model.User;

@Repository
public interface OrderRepo extends JpaRepository<Order, Integer> {

	List<Order> findByUser(User user);

}
