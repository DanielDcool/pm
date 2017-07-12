package com.cn.daniel.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cn.daniel.system.dao.SysUserDao;

@Controller
public class LoginController {
	@Autowired
	SysUserDao userDao;

	@RequestMapping(value = "/api/user/{username}", method = RequestMethod.GET)
	public String findOneCity(Model model, @PathVariable("username") String username) {
		model.addAttribute("user", userDao.findByUserName(username));
		return "city";
	}
}
