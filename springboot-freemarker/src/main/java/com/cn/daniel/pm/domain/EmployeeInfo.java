package com.cn.daniel.pm.domain;

import java.util.Date;

public class EmployeeInfo {
	private Integer id;
	private String name;         //姓名
	private Date birthday;		 //出生日期
	private Integer gender;//性别
	private String identity;     //身份证号
	private String graduateSchool;//毕业院校
	private String education;	 //学历
	private String major;		 //专业
	private String mobile;       //手机号码
	private String address;      //家庭住址
	private String department;   //部门
	private String position;     //职位
	private Double salary;   //目前薪资
	private Date employmentDate; //入职日期
	private Date separationDate; //离职日期
	private Date regularDate;    //转正日期
	private Date ontractStartDate;//合同开始年
	private Date ontractEndDate; //合同结束年
	
	
	
	
	
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	public EmployeeInfo() {
		super();
	}
	public EmployeeInfo(int id, String name, Date employmentDate, Date separationDate, Date regularDate,
			String department, String position, Date birthday, String graduateSchool, String education, String major,
			String address, String identity, String mobile, Date ontractStartDate, Date ontractEndDate) {
		super();
		this.id = id;
		this.name = name;
		this.employmentDate = employmentDate;
		this.separationDate = separationDate;
		this.regularDate = regularDate;
		this.department = department;
		this.position = position;
		this.birthday = birthday;
		this.graduateSchool = graduateSchool;
		this.education = education;
		this.major = major;
		this.address = address;
		this.identity = identity;
		this.mobile = mobile;
		this.ontractStartDate = ontractStartDate;
		this.ontractEndDate = ontractEndDate;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getEmploymentDate() {
		return employmentDate;
	}
	public void setEmploymentDate(Date employmentDate) {
		this.employmentDate = employmentDate;
	}
	public Date getSeparationDate() {
		return separationDate;
	}
	public void setSeparationDate(Date separationDate) {
		this.separationDate = separationDate;
	}
	public Date getRegularDate() {
		return regularDate;
	}
	public void setRegularDate(Date regularDate) {
		this.regularDate = regularDate;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getGraduateSchool() {
		return graduateSchool;
	}
	public void setGraduateSchool(String graduateSchool) {
		this.graduateSchool = graduateSchool;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Date getOntractStartDate() {
		return ontractStartDate;
	}
	public void setOntractStartDate(Date ontractStartDate) {
		this.ontractStartDate = ontractStartDate;
	}
	public Date getOntractEndDate() {
		return ontractEndDate;
	}
	public void setOntractEndDate(Date ontractEndDate) {
		this.ontractEndDate = ontractEndDate;
	}
	
	
}
