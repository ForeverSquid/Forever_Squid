package com.Forever.dao;
import java.io.InputStream;

import com.Forever.vo.*;

public interface IUserDao {

	public User login(User user);
	public InputStream getPic(int id);
	public boolean register(User user);
	public boolean updatePagenum(int rowCount,int userid);
}
