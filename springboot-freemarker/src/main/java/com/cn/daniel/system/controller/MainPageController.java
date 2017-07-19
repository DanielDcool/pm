package com.cn.daniel.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class MainPageController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainPage(Model model) {
    	model.addAttribute("pageTitle", "主页");
    	model.addAttribute("pageSubtitle", "统计 &amp; 状态");
        return "system/main";
    }
}
