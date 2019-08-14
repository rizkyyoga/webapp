package com.app.webapp.dao;

import com.app.webapp.entity.User;

public interface UserDao extends GenericDao<User, Long> {

	User findByUsername(String username);
	
	User findByPhone(String phone);
}
