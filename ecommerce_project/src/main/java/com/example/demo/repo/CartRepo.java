package com.example.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.Cart;
import com.example.demo.model.User;

public interface CartRepo extends JpaRepository<Cart, Integer> {

	@Query("from Cart c where c.user = :user")
	List<Cart> findbyuser(@Param("user") User user);

}