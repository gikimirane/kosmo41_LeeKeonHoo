package com.study.jsp.login;

import java.sql.Timestamp;

import javax.servlet.annotation.WebServlet;

public class MemberDto {
	private String id;
	private String pw;
	private String name;
	private String eMail;
	private Timestamp rDate;
	private String address;
	private String eMail2;

	
//  public MemberDTO(String id, String pw, String name, String eMail, Timestamp rDate,String address) {
//  	this.id = id;
//  	this.pw = pw;
//  	this.name = name;
//  	this.eMail = eMail;
//		this.rDate = rDate;    	
//  	this.address = address;    	
//  }
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public Timestamp getrDate() {
		return rDate;
	}
	public void setrDate(Timestamp rDate) {
		this.rDate = rDate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String geteMail2() {
		return eMail2;
	}
	public void seteMail2(String eMail2) {
		this.eMail2 = eMail2;
	}
}
