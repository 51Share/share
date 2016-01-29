package com.league.share.service.impl;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.league.share.domain.Admin;
import com.league.share.domain.Resource;
import com.league.share.domain.Role;
import com.league.share.orm.AdminDao;
import com.league.share.orm.ResourceDao;
import com.league.share.orm.RoleDao;
import com.league.share.service.SystemService;

@Service
public class SystemServiceImpl implements SystemService{
	
	@Autowired
	private AdminDao adminDao;
	@Autowired
	private ResourceDao resourceDao;
	@Autowired
	private RoleDao roleDao; 
	
	public Admin getAdmin(String name) {
		return adminDao.selectByName(name);
	}
	
	public Map<Resource, List<Resource>> getMenu(int roleId) {
		Map<Resource, List<Resource>> menus = new LinkedHashMap<Resource, List<Resource>>();
		List<Resource> parents = resourceDao.selectByParentIdAndRoleId(0 ,roleId);
		if(parents != null && parents.size() > 0){
			for(Resource parent : parents){
				menus.put(parent, resourceDao.selectByParentIdAndRoleId(parent.getId(), roleId));	
			}
		}
		return menus;
	}

	public List<Admin> listAdmin(int offset, int size) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("offset", offset);
		params.put("size", size);
		return adminDao.queryForList(params);
	}

	public boolean saveAdmin(Admin admin) {
		if(admin != null){
			if(admin.getId() > 0){
				return adminDao.update(admin) > 0 ? true : false;
			}else{
				return adminDao.insert(admin) > 0 ? true : false;
			}
		}
		return false;
	}

	public boolean removeAdmin(int adminId) {
		
		return adminDao.delete(adminId) > 0 ? true : false;
	}

	public Admin getAdmin(int adminId) {
		
		return adminDao.selectById(adminId);
	}

	public List<Role> getRole(int status) {
		
		return roleDao.queryForList(status);
	}
}
