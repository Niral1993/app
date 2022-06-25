package app.my.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.my.dao.LoginDAO;
import app.my.entity.User;

@Service
public class LoginServiceImpl  implements LoginService {

	@Autowired
	LoginDAO loginDAO;  
	
	@Transactional
	public User cehckLogin(String userName, String password) {
		// TODO Auto-generated method stub
		
		return loginDAO.checkLogin(userName, password);
		
	}

}
