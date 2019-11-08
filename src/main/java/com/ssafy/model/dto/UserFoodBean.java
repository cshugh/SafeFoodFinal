package com.ssafy.model.dto;

import java.io.Serializable;

public class UserFoodBean implements Serializable{
	int no; 
	int fno;
	String uid;
	String name;
	int count;
	
	public UserFoodBean(int fno, String uid, String name, int count) {
		super();
		this.fno = fno;
		this.uid = uid;
		this.name = name;
		this.count = count;
	}
	public UserFoodBean(int no, int fno, String uid, String name, int count) {
		super();
		this.no = no;
		this.fno = fno;
		this.uid = uid;
		this.name = name;
		this.count = count;
	}
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
	
	public UserFoodBean() {
		super();
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public UserFoodBean(int no, int fno, String uid) {
		super();
		this.no = no;
		this.fno = fno;
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "UserfoodBean [no=" + no + ", fno=" + fno + ", uid=" + uid + "]";
	}
	
	
}
