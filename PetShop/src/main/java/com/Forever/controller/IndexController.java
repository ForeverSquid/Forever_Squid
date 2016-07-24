package com.Forever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value={"/index"})
public class IndexController {
	
	@RequestMapping("/index")
	public String index(){
		return"index.ftl";
	}
	
	@RequestMapping("/main")
	public String main(){
		
		return"shop/main.ftl";
	}
}
