package com.cn.daniel.pm.service;

import java.util.List;
import java.util.Map;

import com.cn.daniel.core.domain.Page;
import com.cn.daniel.pm.domain.EmployeeInfo;
import com.github.pagehelper.PageInfo;

public interface EmployeeInfoService {
	
	EmployeeInfo getEmployeeInfoById(Integer id);
	
	List<EmployeeInfo> getEmployeeInfoList(Map<String,String> conditions);

	PageInfo<EmployeeInfo> getEmployeeInfoListByPage(Map<String,String> conditions,Page page);

	void deleteById(Integer id);

	void deleteByIds(String[] ids);

    void saveEmployeeInfo(EmployeeInfo info);

    void updateEmployeeInfo(EmployeeInfo info);
}
