package com.league.share.service;

import java.util.List;
import java.util.Map;

import com.league.share.domain.Admin;
import com.league.share.domain.Resource;
import com.league.share.domain.Role;

public interface SystemService {
	Admin getAdmin(String name);
	List<Admin> listAdmin(int offset, int size);
	boolean saveAdmin(Admin admin);
	Map<Resource, List<Resource>> getMenu(int roleId);
	boolean removeAdmin(int adminId);
	Admin getAdmin(int adminId);
	List<Role> getRole(int status);
}
