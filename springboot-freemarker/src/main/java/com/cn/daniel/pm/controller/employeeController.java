package com.cn.daniel.pm.controller;

import com.cn.daniel.core.domain.Page;
import com.cn.daniel.pm.domain.EmployeeInfo;
import com.cn.daniel.pm.domain.SalaryHistory;
import com.cn.daniel.pm.service.EmployeeInfoService;
import com.cn.daniel.pm.service.SalaryHistoryService;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 员工信息页面
 *
 * @author Daniel
 * @time 2017-07-21
 */
@Controller
@RequestMapping(value = "/pm")
public class employeeController {
    @Autowired
    private EmployeeInfoService employeeInfoService;
    @Autowired
    private SalaryHistoryService salaryHistoryService;

    @RequestMapping(value = "/employees", method = RequestMethod.GET)
    @ResponseBody
    public PageInfo<EmployeeInfo> employees(Model model, Page page, EmployeeInfo info) {
        Map<String, String> conditions = new HashMap<String, String>();
        conditions.put("name", info.getName());
        conditions.put("id", info.getId() + "");
        conditions.put("department", info.getDepartment());
        conditions.put("position", info.getPosition());
        PageInfo<EmployeeInfo> pageInfo = employeeInfoService.getEmployeeInfoListByPage(conditions, page);
        return pageInfo;
    }

    @RequestMapping(value = "/employee", method = RequestMethod.GET)
    public String employeePage(Model model, String id, String oper) {
        if (StringUtils.isNotEmpty(id)) {
            EmployeeInfo info = employeeInfoService.getEmployeeInfoById(Integer.parseInt(id));
            model.addAttribute("info", info);
            List<SalaryHistory> salaryHistories= salaryHistoryService.getSalaryHistories(id);
            model.addAttribute("salaryHistories", salaryHistories);
        }
        model.addAttribute("oper", oper);
        return "pm/employeePage";
    }

    @RequestMapping(value = "/employee", method = RequestMethod.POST)
    @ResponseBody
    public String employee(Model model, EmployeeInfo info, String oper) {
        if (info.getId()==null||info.getId()==0){
            employeeInfoService.saveEmployeeInfo(info);
        }
        employeeInfoService.updateEmployeeInfo(info);
        return "success";
    }

    @RequestMapping(value = "/delEmployee", method = RequestMethod.POST)
    @ResponseBody
    public String delEmployee(Model model, String id, String oper) {
        if ("del".equalsIgnoreCase(oper) && StringUtils.isNotEmpty(id)) {
            employeeInfoService.deleteByIds(id.split(","));
        }
        return "success";
    }
}
