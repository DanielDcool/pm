package com.cn.daniel.system.dao;

import com.cn.daniel.system.domain.SysUser;

public interface SysUserDao {
	public SysUser findByUserName(String username);
}
