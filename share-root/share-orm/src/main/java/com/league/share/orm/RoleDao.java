package com.league.share.orm;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.league.share.domain.Role;

public interface RoleDao {
	int insert(Role role);
	int update(Role role);
	int delete(int id);
	Role selectById(int id);
	int selectByName(@Param("id")int id, @Param("name")String name);
	int enable(@Param("id")int id, @Param("status")short status);
	List<Role> selectUsingList();
	List<Role> listAll();
}