package com.ouc.controllers;

import com.opensymphony.xwork2.ActionSupport;
import com.ouc.dao.TUserDao;
import com.ouc.dao.impl.TUserDaoImpl;
import com.ouc.domains.TUser;

@SuppressWarnings("serial")
public class UserController extends ActionSupport{

	private TUser user;
	
	public String login()
	{
		TUserDao udao=new TUserDaoImpl();
		if(udao.userLogin(user))
		{
			return "login_success";
		}
		else
		{
			return "login_failure";
		}
	}
	
	public String register() {
		TUserDao udao = new TUserDaoImpl();
		udao.save(user);
		return SUCCESS;
	}

	public TUser getUser() {
		return user;
	}

	public void setUser(TUser user) {
		this.user = user;
	}

	
}
