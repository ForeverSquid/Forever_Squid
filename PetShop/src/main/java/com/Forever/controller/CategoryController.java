package com.Forever.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Forever.model.CategoryExample;
import com.Forever.service.ICategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	private ICategoryService service;
	
	@RequestMapping("/show")
	public void show(HttpServletResponse response){
		CategoryExample example=new CategoryExample();
		example.createCriteria().andCatidIsNotNull();
		String json=service.selectByExample(example);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out=null;
		
		try {
			out=response.getWriter();
			out.print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}
	
}
