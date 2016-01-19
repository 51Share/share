package com.league.share.domain;

import java.io.Serializable;

public class Security implements Serializable {
	private static final long serialVersionUID = 1L;
	private Admin admin;
	
	public Security(){
		
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
}