package com.cn.daniel.pm.service.impl;

import com.cn.daniel.pm.dao.SalaryHistoryDao;
import com.cn.daniel.pm.domain.SalaryHistory;
import com.cn.daniel.pm.service.SalaryHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author daniel
 * @create 2017-08-08 2:28 PM
 **/
@Service
public class SalaryHistoryServiceImpl implements SalaryHistoryService{
    @Autowired
    SalaryHistoryDao salaryHistoryDao;
    @Override
    public List<SalaryHistory> getSalaryHistories(String eid) {
        Map map =new HashMap<String,String>();
        map.put("eid",eid);
        return salaryHistoryDao.selectAllByEid(map);
    }

}
