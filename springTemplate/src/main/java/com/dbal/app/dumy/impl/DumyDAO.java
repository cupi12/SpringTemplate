package com.dbal.app.dumy.impl;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DumyDAO {
	
	@Autowired private SqlSessionTemplate mybatis;
	
	public Map getTime() {
		return mybatis.selectOne("DumyDAO.getTime");
	}


}
