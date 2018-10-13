package com.simple.core.po;

import java.io.Serializable;
import java.util.Date;
//学生信息对象
public class StudentInfo implements Serializable {
	private static final long serialVersionUID = 1L;
	private int stu_id;
	//八个属性
	private String stu_name;
	private String stut_school;
	private String stu_marjor;
	private String stu_linkman;
	private String stu_phone;
	private String stu_mobile;
	private String stu_address;
	private Date stu_createtime;
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数
	public int getStu_id() {
		return stu_id;
	}
	public void setStu_id(int stu_id) {
		this.stu_id = stu_id;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public String getStu_name() {
		return stu_name;
	}
	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}
	public String getStut_school() {
		return stut_school;
	}
	public void setStut_school(String stut_school) {
		this.stut_school = stut_school;
	}
	public String getStu_marjor() {
		return stu_marjor;
	}
	public void setStu_marjor(String stu_marjor) {
		this.stu_marjor = stu_marjor;
	}
	public String getStu_linkman() {
		return stu_linkman;
	}
	public void setStu_linkman(String stu_linkman) {
		this.stu_linkman = stu_linkman;
	}
	public String getStu_phone() {
		return stu_phone;
	}
	public void setStu_phone(String stu_phone) {
		this.stu_phone = stu_phone;
	}
	public String getStu_mobile() {
		return stu_mobile;
	}
	public void setStu_mobile(String stu_mobile) {
		this.stu_mobile = stu_mobile;
	}
	public String getStu_address() {
		return stu_address;
	}
	public void setStu_address(String stu_address) {
		this.stu_address = stu_address;
	}
	public Date getStu_createtime() {
		return stu_createtime;
	}
	public void setStu_createtime(Date stu_createtime) {
		this.stu_createtime = stu_createtime;
	}
	
}
