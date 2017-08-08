package com.cn.daniel.pm.service;

import com.cn.daniel.pm.domain.SalaryHistory;

import java.util.List;

public interface SalaryHistoryService {

	List<SalaryHistory> getSalaryHistories(String eid);

}
