package com.example.demo.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Category;
import com.example.demo.repo.CategoryRepo;
import com.example.demo.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	CategoryRepo repo;

	@Override
	public void addcategory(Category c) {
		// TODO Auto-generated method stub
		repo.save(c);
	}

	@Override
	public List<Category> viewallcategory() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public void deletecategory(int id) {
		// TODO Auto-generated method stub
		repo.deleteById(id);
	}

	@Override
	public Category editcategory(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).orElseThrow(() -> new RuntimeException("Category Not Found"));
	}

}
