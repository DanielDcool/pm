package com.cn.daniel.pm.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.cn.daniel.pm.dao.SalaryHistoryDao;
import com.cn.daniel.pm.domain.SalaryHistory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.cn.daniel.core.domain.Page;
import com.cn.daniel.pm.dao.EmployeeInfoDao;
import com.cn.daniel.pm.domain.EmployeeInfo;
import com.cn.daniel.pm.service.EmployeeInfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class EmployeeInfoServiceImpl implements EmployeeInfoService{
	@Autowired
	EmployeeInfoDao employeeInfoDao;

	@Autowired
	SalaryHistoryDao salaryHistoryDao;

	@Override
	public void saveEmployeeInfo(EmployeeInfo info) {
		employeeInfoDao.insertSelective(info);
		if (info.getSalary()!=null) {
			salaryHistoryDao.insert(new SalaryHistory(info.getId(), info.getName(), info.getSalary(), new Date()));
		}
	}

	@Override
	public void updateEmployeeInfo(EmployeeInfo info) {
		EmployeeInfo formerInfo=getEmployeeInfoById(info.getId());
		Double formerSalary = formerInfo.getSalary();
		employeeInfoDao.updateByPrimaryKeySelective(info);
		if (info.getSalary()!=null&& !info.getSalary().equals(formerSalary)) {
			salaryHistoryDao.insert(new SalaryHistory(info.getId(), info.getName(), info.getSalary(), new Date()));
		}
	}

	@Override
	public EmployeeInfo getEmployeeInfoById(Integer id) {
		return employeeInfoDao.selectByPrimaryKey(id);
	}
	
	@Override
	public List<EmployeeInfo> getEmployeeInfoList(Map<String,String> conditions) {
		return employeeInfoDao.selectAll(conditions);
	}

	@Override
	public PageInfo<EmployeeInfo> getEmployeeInfoListByPage(Map<String,String> conditions,Page page) {
		PageHelper.startPage(page.getPage(), page.getRows());
		if (!StringUtils.isEmpty(page.getSidx())) {
			PageHelper.orderBy(page.getSidx()+" "+page.getSord());
		}
		return new PageInfo<>(employeeInfoDao.selectAll(conditions));
	}

	@Override
	public void deleteById(Integer id) {
		employeeInfoDao.deleteByPrimaryKey(id);
	}

	@Override
	public void deleteByIds(String[] ids) {
		employeeInfoDao.deleteByIds(ids);
	}

}
