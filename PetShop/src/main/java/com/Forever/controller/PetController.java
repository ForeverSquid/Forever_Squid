package com.Forever.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Forever.service.IPetService;

@Controller
@RequestMapping("/pet")
public class PetController {
	
	@Autowired
	private IPetService service;
	@RequestMapping(value={"/showp/cate/{cate}"})
	public String showP(@PathVariable String cate,Map map1){
		Map map=new HashMap();
		map.put("in_cate", cate);
		map.put("in_pro", "");
		map.put("in_item", "");
		map1.put("plist", service.showP(map));
		
		return "shop/pro.ftl";
	}
	
	@RequestMapping("/showis/pro/{pro}")
	public String showitems(@PathVariable String pro,Map map1){
		Map map=new HashMap();
		map.put("in_cate", "");
		map.put("in_pro", pro);
		map.put("in_item", "");
		map1.put("plist", service.showItems(map));
		
		return "shop/items.ftl";
	}
	
	@RequestMapping("/showi/item/{item}")
	public String showitem(@PathVariable String item,Map map1){
		Map map=new HashMap();
		map.put("in_cate", "");
		map.put("in_pro", "");
		map.put("in_item", item);
		map1.put("plist", service.showItems(map));
		
		return "shop/item.ftl";
	}
}
