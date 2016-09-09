package com.ouc.dao;

import java.util.List;

import com.ouc.domains.Info;

public interface InfoDAO {
	
	List<Info> getInfos();
	
	void save(Info info);
	
	void delete(int id);
	
	Info getInfoById(int id);

	void update(int id,Info newInfo);
	
}
