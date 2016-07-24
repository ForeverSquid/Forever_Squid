package com.Forever.service;

import java.io.InputStream;
import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.Forever.dao.IUserDao;
import com.Forever.dao.UserDaoImpl;
import com.Forever.db.DB;
import com.Forever.vo.Article;
import com.Forever.vo.User;

public interface IUserService {

	public User login(User user);
	public InputStream getPic(int id);
	public boolean register(User user);
	public User uploadPic(HttpServletRequest request);
	public boolean updatePagenum(int id,int userid);
}
