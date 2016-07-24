package com.Forever.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Forever.dao.CategoryMapper;
import com.Forever.model.Category;
import com.Forever.model.CategoryExample;
import com.alibaba.fastjson.JSONArray;

@Service
public class CategoryServiceImpl implements ICategoryService {

	@Autowired
	private CategoryMapper dao;
	@Override
	public String selectByExample(CategoryExample example) {
		// TODO Auto-generated method stub
		List<Category>  list=dao.selectByExample(example);
		
		return JSONArray.toJSONString(list);
	}

}
