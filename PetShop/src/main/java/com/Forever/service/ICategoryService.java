package com.Forever.service;

import java.util.List;

import com.Forever.model.Category;
import com.Forever.model.CategoryExample;

public interface ICategoryService {
	 String selectByExample(CategoryExample example);
}
