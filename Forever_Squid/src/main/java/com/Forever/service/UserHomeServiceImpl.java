package com.Forever.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Forever.dao.UserHomeMapper;
import com.Forever.model.Userhome;

@Service
public class UserHomeServiceImpl implements IUserHomeService{

	@Autowired
	private UserHomeMapper UHDao;
	
	@Override
	public Userhome selectAll(Userhome home) {
		// TODO Auto-generated method stub
		return UHDao.selectAll(home);
	}

	@Override
	public void updateUserHome(Userhome userh) {
		// TODO Auto-generated method stub
		UHDao.updateUserHome(userh);
	}

	@Override
	public void savemusic(Userhome userh) {
		// TODO Auto-generated method stub
		UHDao.savemusic(userh);
	}

}
