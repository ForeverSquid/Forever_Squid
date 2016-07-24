package com.Forever.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Forever.service.ICartService;

@Controller
@RequestMapping(value={"/cart"})
public class CartController {
	@Autowired
	private ICartService service;
	
	@RequestMapping(value={"/add/item/{itemid}/qty/{qty}"})
	public String addCart(@PathVariable String itemid,@PathVariable String qty,Map map1){
		HashMap map=new HashMap();
		map.put("in_itemid", itemid);
		map.put("in_qty", qty);
		map1.put("clist", service.addCart3(map));
		
		return "shop/add.ftl";
	}
	@RequestMapping(value={"/del/item/{itemid}/orderid/{orderid}"})
	public String delCart(@PathVariable String itemid,
			@PathVariable String orderid,Map map1){
		Map map=new HashMap();
		map.put("in_orderid", orderid);
		map.put("in_itemid", itemid);
		map1.put("clist", service.delCart3(map));
		return  "shop/add.ftl";
	}
	@RequestMapping(value={"/update"})
	public String updateCart(@RequestParam List<String> ilist, @RequestParam List<String> qlist,Map map1){
		Map map=new HashMap();
		for(int i=0;i<ilist.size();i++){
			map.put("in_itemid", ilist.get(i));
			map.put("in_qty", qlist.get(i));
			service.updateCart3(map);
		}
		map1.put("clist", service.queryCart3());
		return "shop/add.ftl";
	}
	@RequestMapping(value={"/orders/orderid/{orderid}"})
	public String updateOrders(@PathVariable String orderid){
		HashMap map=new HashMap();
		map.put("in_orderid", orderid);
		service.updateOrders(map);
		return "shop/main.ftl";
	}
	
	
}
