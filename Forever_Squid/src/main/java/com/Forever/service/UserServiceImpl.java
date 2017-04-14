package com.Forever.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Forever.dao.UserMapper;
import com.Forever.model.User;
import com.Forever.model.UserExample;

@Service
public class UserServiceImpl implements IUserService{

	@Autowired
	UserMapper dao ;
	
	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return dao.login(user);
	}

	public int countByExample(UserExample example){
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteByExample(UserExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public void insert(User record) {
		// TODO Auto-generated method stub
		dao.insert(record);
	}

	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<User> selectByExample(UserExample example) {
		// TODO Auto-generated method stub
		return null;
	}

	
	/*public User selectByPrimaryKey(Integer id) {       通过主键查询有错误！
		// TODO Auto-generated method stub
		User user = null;
		try {
			user = dao.selectByPrimaryKey(id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return user;
	}*/

	public int updateByExampleSelective(User record, UserExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByExample(User record, UserExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public User selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

}
