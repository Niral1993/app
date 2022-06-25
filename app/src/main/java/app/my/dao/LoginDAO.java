package app.my.dao;

import app.my.entity.User;

public interface LoginDAO {

	public User checkLogin(String userName, String password);
	
}
