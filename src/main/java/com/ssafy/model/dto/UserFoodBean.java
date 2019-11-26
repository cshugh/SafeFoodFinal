package com.ssafy.model.dto;

import java.io.Serializable;

public class UserFoodBean implements Serializable{
	int no; 
	int fno;
	String uid;
	String date;
	int count;
	
	public UserFoodBean(){}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public UserFoodBean(int no, int fno, String uid, String date, int count) {
		super();
		this.no = no;
		this.fno = fno;
		this.uid = uid;
		this.date = date;
		this.count = count;
	}
	@Override
	public String toString() {
		return "UserFoodBean [no=" + no + ", fno=" + fno + ", uid=" + uid + ", date=" + date + ", count=" + count + "]";
	}
	
	
	
	
}
