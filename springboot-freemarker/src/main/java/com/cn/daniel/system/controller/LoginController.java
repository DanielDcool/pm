package com.cn.daniel.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class LoginController {

    //Spring Security see this :
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model,
        @RequestParam(value = "error", required = false) String error,
        @RequestParam(value = "logout", required = false) String logout) {

        if (error != null) {
            model.addAttribute("msg", "用户名或者密码错误!");
        }

        if (logout != null) {
            model.addAttribute("msg", "You've been logged out successfully.");
        }
        return "system/login";
    }
}
