package com.Forever.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Forever.dao.CartMapper;
import com.Forever.model.Cart;
@Service
public class CartServiceImpl implements ICartService{

	@Autowired
	private CartMapper dao;
	@Override
	public List<Cart> queryCart3() {
		// TODO Auto-generated method stub
		return dao.queryCart3();
	}
	@Override
	public List<Cart> addCart3(Map map) {
		// TODO Auto-generated method stub
		return dao.addCart3(map);
	}
	@Override
	public List<Cart> delCart3(Map map) {
		// TODO Auto-generated method stub
		return dao.delCart3(map);
	}
	@Override
	public void updateCart3(Map map) {
		// TODO Auto-generated method stub
		dao.updateCart3(map);
	}
	@Override
	public void updateOrders(Map map) {
		// TODO Auto-generated method stub
		dao.updateOrders(map);
	}

}
