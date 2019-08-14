package com.app.webapp.service;

import com.app.webapp.entity.User;

public interface UserService extends GenericService<User, Long> {

	User findByUsername(String username);
	
	User findByPhone(String phone);

}
