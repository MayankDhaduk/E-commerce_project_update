package com.example.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.Category;
import com.example.demo.model.Product;

public interface ProductRepo extends JpaRepository<Product, Integer> {
	List<Product> findByCategory(Category category);

	List<Product> findByGenderType(String genderType);
}
