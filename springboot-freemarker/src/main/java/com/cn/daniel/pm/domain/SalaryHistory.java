package com.cn.daniel.pm.domain;

import java.util.Date;

public class SalaryHistory {
    private Integer id;

    private Integer eid;

    private String ename;

    private Double salary;

    private Date enableDate;

    private Date disableDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename == null ? null : ename.trim();
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public Date getEnableDate() {
        return enableDate;
    }

    public void setEnableDate(Date enableDate) {
        this.enableDate = enableDate;
    }

    public Date getDisableDate() {
        return disableDate;
    }

    public void setDisableDate(Date disableDate) {
        this.disableDate = disableDate;
    }

    public SalaryHistory(Integer eid, String ename, Double salary, Date enableDate) {
        this.eid = eid;
        this.ename = ename;
        this.salary = salary;
        this.enableDate = enableDate;
    }

    public SalaryHistory() {
    }
}