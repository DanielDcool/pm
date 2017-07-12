package com.cn.daniel.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.cn.daniel.system.dao.SysUserDao;
import com.cn.daniel.system.domain.SysUser;

public class SysUserService implements UserDetailsService {
	 @Autowired
	 SysUserDao userDao;
	 
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		SysUser user = userDao.findByUserName(username);
        if(user == null){
            throw new UsernameNotFoundException("用户名不存在");
        }
        List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        //用于添加用户的权限。只要把用户权限添加到authorities 就万事大吉。
       /* for(SysRole role:user.getRoles())
        {
            authorities.add(new SimpleGrantedAuthority(role.getName()));
            System.out.println(role.getName());
        }*/
        return new org.springframework.security.core.userdetails.User(user.getUsername(),
                user.getPassword(), authorities);
    }
}
