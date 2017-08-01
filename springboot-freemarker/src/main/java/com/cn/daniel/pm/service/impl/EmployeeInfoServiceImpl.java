package com.cn.daniel.pm.service.impl;

import java.util.List;
import java.util.Map;

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
		return new PageInfo<EmployeeInfo>(employeeInfoDao.selectAll(conditions));
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
