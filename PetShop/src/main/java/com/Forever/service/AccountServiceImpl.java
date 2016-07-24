package com.Forever.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Forever.model.Account;
import com.Forever.model.AccountExample;
import com.Forever.dao.*;

@Service
public class AccountServiceImpl implements IAccountService {

	@Autowired
	private AccountMapper dao;
	
	@Override
	public List<Account> selectByExample(AccountExample example) {
		// TODO Auto-generated method stub
		return dao.selectByExample(example);
	}

	@Override
	public int insert(Account record) {
		// TODO Auto-generated method stub
		return dao.insert(record);
	}

}
