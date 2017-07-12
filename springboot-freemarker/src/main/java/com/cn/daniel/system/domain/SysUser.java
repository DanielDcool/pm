package com.cn.daniel.system.domain;

import java.util.List;

/**
 * 系统用户
 * @author Daniel
 * @time 2017-07-10
 */
public class SysUser {
	private Integer id;
    private String username;
    private String password;
    private List<SysRole> roles;

    public List<SysRole> getRoles() {
		return roles;
	}

	public void setRoles(List<SysRole> roles) {
		this.roles = roles;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
