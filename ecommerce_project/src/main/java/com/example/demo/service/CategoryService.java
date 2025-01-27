package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Category;

public interface CategoryService 
{
	
	public void addcategory(Category c);
	
	public List<Category> viewallcategory();
	
	public void deletecategory(int id);
	
	public Category editcategory(int id);
	
	
}
