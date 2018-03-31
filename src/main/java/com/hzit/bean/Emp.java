package com.hzit.bean;

public class Emp {

	// 数据库中多个单词使用 _连接 emp_name
	// java使用的是驼峰命名 empName
	private int empNo;
	private String empName;
	private String empPwd;

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpPwd() {
		return empPwd;
	}

	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}

	@Override
	public String toString() {
		return "Emp [empNo=" + empNo + ", empName=" + empName + ", empPwd=" + empPwd + "]";
	}

}
