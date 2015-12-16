package com.league.share.orm;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.league.share.domain.Admin;

public interface AdminDao {
	public List<Admin> queryForList(Map<String, Object> params);
	public int queryForCount();
	public Admin queryByName(String name);
	public int insert(Admin admin);
	public int update(Admin admin);
	public int delete(int id);
	public Admin selectById(int id);
	public int selectByIdAndPassword(@Param("id")int id, @Param("password")String password);
	public int selectByName(@Param("id")int id, @Param("name")String name);
	public int selectByCellphone(@Param("id")int id, @Param("cellphone")String cellphone);
	public int enable(@Param("id")int id, @Param("status")short status);
	public int locked(@Param("name")String name, @Param("status")short status);
	public int totp(@Param("id")int id, @Param("totp")int totp);
}