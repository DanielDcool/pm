package com.cn.daniel.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class MainPageController {

    //Spring Security see this :
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainPage(Model model) {
        return "system/main";
    }
}
