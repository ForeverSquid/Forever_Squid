package com.Forever.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Forever.dao.PetMapper;
@Service
public class PetServiceImpl implements IPetService {

	@Autowired
	private PetMapper dao;
	@Override
	public List showP(Map map) {
		// TODO Auto-generated method stub
		return dao.showP(map);
	}

	@Override
	public List showItems(Map map) {
		// TODO Auto-generated method stub
		return dao.showItems(map);
	}

	@Override
	public List showItem(Map map) {
		// TODO Auto-generated method stub
		return dao.showItem(map);
	}

}
