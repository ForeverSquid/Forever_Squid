package com.Forever.service;

import java.util.List;
import java.util.Map;

import com.Forever.model.Cart;

public interface ICartService {
	List<Cart> queryCart3();
	List<Cart> addCart3(Map map);
	List<Cart> delCart3(Map map);
	void updateCart3(Map map);
	void updateOrders(Map map);
}
