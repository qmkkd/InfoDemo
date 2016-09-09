package com.ouc.controllers;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ouc.dao.InfoDAO;
import com.ouc.dao.impl.InfoDAOImpl;
import com.ouc.domains.Info;

@SuppressWarnings("serial")
public class InfoAction extends ActionSupport {

	private Info info;

	private int updateId;
	
	public int getUpdateId() {
		return updateId;
	}

	public void setUpdateId(int updateId) {
		this.updateId = updateId;
	}

	private int delId;
	
	public int getDelId() {
		return delId;
	}

	public void setDelId(int delId) {
		this.delId = delId;
	}

	public String enroll() {

		InfoDAO idao = new InfoDAOImpl();
		idao.save(info);
		
		return SUCCESS;
	}

	public String delete() {
		InfoDAO idao = new InfoDAOImpl();
		idao.delete(delId);

		return SUCCESS;
	}
	
	public String update(){
		InfoDAO idao=new InfoDAOImpl();
		idao.update(updateId,info);
		return SUCCESS;
	}

	public Info getInfo() {
		return info;
	}

	public void setInfo(Info info) {
		this.info = info;
	}



}
