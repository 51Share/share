package com.league.share.domain;

import java.io.Serializable;

public class Admin implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	
	private String name;
	private String password;
	private String ip;
	
	private String cellphone;
	private short locked;
	private String realName;
	private String lockedReason;
	private Role role;
	private short operation;
	private int status;
	private int totp;
	
	public Admin() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}
	
	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public short getLocked() {
		return locked;
	}

	public void setLocked(short locked) {
		this.locked = locked;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getLockedReason() {
		return lockedReason;
	}

	public void setLockedReason(String lockedReason) {
		this.lockedReason = lockedReason;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public short getOperation() {
		return operation;
	}

	public void setOperation(short operation) {
		this.operation = operation;
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getTotp() {
		return totp;
	}

	public void setTotp(int totp) {
		this.totp = totp;
	}
}