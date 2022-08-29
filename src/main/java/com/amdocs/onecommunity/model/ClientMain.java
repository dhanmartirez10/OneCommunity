package com.amdocs.onecommunity.model;

/**
 * KFFaner
 */

public class ClientMain {
	
	private String employeeName;
	private String msisdn;
	private String airtimeBalance;
	private String department;
	private String jobTitle;
	private String years;
	private String emailAdd;
	
	
	public ClientMain() {
		super();
	}
	
	public ClientMain(String employeeName, String msisdn, 
			String airtimeBalance, String department, 
			String jobTitle, String emailAdd, String years) {
		super();
		this.employeeName = employeeName;
		this.msisdn = msisdn;
		this.airtimeBalance = airtimeBalance;
		this.department = department;
		this.jobTitle = jobTitle;
		this.years = years;
		this.emailAdd = emailAdd;
	}
	
	public String getEmailAdd() {
		return emailAdd;
	}

	public void setEmailAdd(String emailAdd) {
		this.emailAdd = emailAdd;
	}

	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getMsisdn() {
		return msisdn;
	}
	public void setMsisdn(String msisdn) {
		this.msisdn = msisdn;
	}
	public String getAirtimeBalance() {
		return airtimeBalance;
	}
	public void setAirtimeBalance(String airtimeBalance) {
		this.airtimeBalance = airtimeBalance;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getYears() {
		return years;
	}
	public void setYears(String years) {
		this.years = years;
	}
	
}