package com.Forever.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.Forever.model.User;
import com.Forever.model.UserExample;

public interface IUserService {

	int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer id);

    public void insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
	public User login(User user);
	
    
}
