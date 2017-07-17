package com.Forever.dao;

import com.Forever.model.Userhome;

public interface UserHomeMapper {
	public void updateUserHome(Userhome userh);
	public Userhome selectAll(Userhome home);
	public void savemusic(Userhome userh);
}
