package com.league.share.orm;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.league.share.domain.Resource;

public interface ResourceDao {
	List<Resource> selectByRoleId(int roleId);
	List<Resource> selectAll();
	int deleteRoleResource(int id);
	int insertRoleResource(@Param("roleResources")List<RoleResource> roleResources);
	List<Resource> selectByParentIdAndRoleId(@Param("parentId")int parentId, @Param("roleId")int roleId);
}