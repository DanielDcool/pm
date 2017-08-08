package com.cn.daniel.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.cn.daniel.system.dao.SysUserDao;
import com.cn.daniel.system.domain.SysRole;
import com.cn.daniel.system.domain.SysUser;

public class SysUserServiceImpl implements UserDetailsService {
	 @Autowired
	 SysUserDao userDao;
	 
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        SysUser user = userDao.findByUserName(username);
        if(user == null){
            throw new UsernameNotFoundException("用户名不存在");
        }
        List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        for(SysRole role:user.getRoles())
        {
            authorities.add(new SimpleGrantedAuthority(role.getName()));
            //System.out.println(role.getName());
        }
        return new org.springframework.security.core.userdetails.User(user.getUsername(),
                user.getPassword(), authorities);
    }
}
