package com.cn.daniel.system.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.cn.daniel.pm.domain.EmployeeInfo;
import com.cn.daniel.pm.service.EmployeeInfoService;

/**
 * 主页面
 *
 * @author Daniel
 * @time 2017-07-10
 */
@Controller
public class MainPageController {
	@Autowired
	private EmployeeInfoService employeeInfoService;
	
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainPage(Model model) {
    	Map<String,String> conditions=new HashMap<String,String>();
    	conditions.put("id", "1");
    	List<EmployeeInfo> list = employeeInfoService.getEmployeeInfoList(conditions);
    	String employeeInfoList=JSON.toJSONStringWithDateFormat(list, "yyyy-MM-dd", SerializerFeature.WriteDateUseDateFormat);
    	model.addAttribute("employeeInfoList",employeeInfoList);
        return "system/main";
    }
}
