package com.cn.daniel.pm.dao;

import com.cn.daniel.pm.domain.SalaryHistory;

import java.util.List;
import java.util.Map;

public interface SalaryHistoryDao {
    int deleteByPrimaryKey(Integer id);

    int insert(SalaryHistory record);

    int insertSelective(SalaryHistory record);

    SalaryHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SalaryHistory record);

    int updateByPrimaryKey(SalaryHistory record);

    List<SalaryHistory> selectAllByEid(Map<String,String> conditions);
}