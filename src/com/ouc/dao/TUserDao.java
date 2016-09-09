package com.ouc.dao;

import java.util.List;

import com.ouc.domains.TUser;

public interface TUserDao {
	
	boolean userLogin(TUser user);

	boolean userRegister(TUser user);

	void save(TUser user);
	
	List<TUser> listUsers();
	
	TUser getUser(String username);
	
	
}
