package com.league.share.service;

import java.util.List;
import java.util.Map;

import com.league.share.domain.Admin;
import com.league.share.domain.Resource;

public interface SystemService {
	Admin getAdmin(String name);
	
	Map<Resource, List<Resource>> getMenu(int roleId);
}
