package com.Forever.service;

import java.util.List;

import com.Forever.model.Account;
import com.Forever.model.AccountExample;
public interface IAccountService {
	
	List<Account> selectByExample(AccountExample example);
	int insert(Account record);
}
