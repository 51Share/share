package com.league.share.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.league.share.domain.Admin;
import com.league.share.orm.AdminDao;
import com.league.share.service.SystemService;

@Service
public class SystemServiceImpl implements SystemService{
	@Autowired
	private AdminDao adminDao;
	
	public Admin getAdmin(String name) {
		return adminDao.selectByName(name);
	}

}
