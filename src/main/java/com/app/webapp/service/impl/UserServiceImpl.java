package com.app.webapp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.webapp.dao.UserDao;
import com.app.webapp.entity.User;
import com.app.webapp.service.UserService;

@Service
public class UserServiceImpl extends GenericServiceImpl<User, Long> implements UserService {

	UserDao userDao;

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
		this.dao = userDao;
	}

	public User findByUsername(String username) {
		return userDao.findByUsername(username);
	}
	
	public User findByPhone(String phone) {
		return userDao.findByPhone(phone);
	}

}
