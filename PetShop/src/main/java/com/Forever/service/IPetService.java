package com.Forever.service;

import java.util.List;
import java.util.Map;

public interface IPetService {
	List showP(Map map);//查询所有产品
	List showItems(Map map);//查询所有商品
	List showItem(Map map);//查询某个商品
}
