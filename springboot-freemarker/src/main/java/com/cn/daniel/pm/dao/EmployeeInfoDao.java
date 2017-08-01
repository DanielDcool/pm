package com.cn.daniel.pm.dao;

import java.util.List;
import java.util.Map;

import com.cn.daniel.pm.domain.EmployeeInfo;

public interface EmployeeInfoDao {
    int deleteByPrimaryKey(Integer id);

    int insert(EmployeeInfo record);

    int insertSelective(EmployeeInfo record);

    EmployeeInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(EmployeeInfo record);

    int updateByPrimaryKey(EmployeeInfo record);
    
    List<EmployeeInfo> selectAll(Map<String,String> conditions);
    
    void deleteByIds(String[] ids);
}