package com.dbal.app.dumy.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dbal.app.dumy.DumyService;

 
@Service
public class DumyServiceImpl implements DumyService {
	
	@Autowired
	DumyDAO dumyDAO;
	
	@Override
	public Map getTime() {
		return dumyDAO.getTime();
	}
	
}
