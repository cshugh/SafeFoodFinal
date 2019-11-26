package com.ssafy.model.dto;

public class Pick {
	int no;
	int fno;
	String uid;
	
	public Pick() {}
	
	public Pick(int no, int fno, String uid) {
		super();
		this.no = no;
		this.fno = fno;
		this.uid = uid;
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
	@Override
	public String toString() {
		return "Pick [no=" + no + ", fno=" + fno + ", uid=" + uid + "]";
	}
	
}
