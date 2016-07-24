package com.Forever.service;

import java.util.List;

import com.Forever.dao.UserDao;
import com.Forever.po.AllUser;
import com.Forever.po.Com;
import com.Forever.po.User;

public class UserService {

	private UserDao dao = new UserDao();

	public void add(int id,String address,String FName) throws Exception{

		dao.add(id, address,FName);
	}
	
	public void addmes(String user_id,String mul_id,String mes){
		dao.addmes(user_id, mul_id, mes);
	}
	
	public void addmark(int user_id,int mul_id){
		dao.addmark(user_id, mul_id);
	}
	
	public List<Com> queryMes(int id){
		return dao.queryMes(id);
	}
	
	public List<AllUser> querymark(int id){
		return dao.querymark(id);
	}
	
	public int getZanMethod(String id){
	
		return dao.getZanMethod(id);
	}
	
	public void register(String username,String password){
		dao.register(username, password);
	}
	
	public User login(String username,String password){
		
		return dao.login(username, password);
	}

	public String query_tiaojian(int id){

		return dao.query_tiaojian(id);
	}

	public UserDao getDao() {
		return dao;
	}

	public void setDao(UserDao dao) {
		this.dao = dao;
	}

}
