package com.app.webapp.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.app.webapp.dao.UserDao;
import com.app.webapp.entity.User;

@Repository
public class UserDaoImpl extends GenericDaoImpl<User, Long> implements UserDao {

	public UserDaoImpl() {
		super(User.class);

	}

	public User findByUsername(String username) {

		Criteria criteria = getSession().createCriteria(User.class);

		criteria.add(Restrictions.eq("email", username));

		return (User) criteria.uniqueResult();
	}
	
	public User findByPhone(String phone) {

		Criteria criteria = getSession().createCriteria(User.class);

		criteria.add(Restrictions.eq("phone", phone));

		return (User) criteria.uniqueResult();
	}
}
