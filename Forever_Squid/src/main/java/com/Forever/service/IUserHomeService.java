package com.Forever.service;

import com.Forever.model.Userhome;

public interface IUserHomeService {
	public void updateUserHome(Userhome userh);
	public Userhome selectAll(Userhome home);
	public void savemusic(Userhome userh);
}
