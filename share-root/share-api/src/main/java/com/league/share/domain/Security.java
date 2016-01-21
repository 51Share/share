package com.league.share.domain;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class Security implements Serializable {
	private static final long serialVersionUID = 1L;
	private Admin admin;
	private Role role;
	private Map<Resource, List<Resource>> menu;
	
	public Security(){
		
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Map<Resource, List<Resource>> getMenu() {
		return menu;
	}

	public void setMenu(Map<Resource, List<Resource>> menu) {
		this.menu = menu;
	}
}