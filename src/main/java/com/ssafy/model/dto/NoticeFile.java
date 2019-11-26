package com.ssafy.model.dto;

import java.io.Serializable;

public class NoticeFile implements Serializable{
	private int no;
	private String rfilename;
	private String sfilename;
	private int notino;
	public NoticeFile() {
		super();
	}
	
	
	public NoticeFile(String rfilename, String sfilename) {
		super();
		this.rfilename = rfilename;
		this.sfilename = sfilename;
	}


	public NoticeFile(String rfilename, String sfilename, int notino) {
		super();
		this.rfilename = rfilename;
		this.sfilename = sfilename;
		this.notino = notino;
	}


	public NoticeFile(int no, String rfilename, String sfilename, int notino) {
		super();
		this.no = no;
		this.rfilename = rfilename;
		this.sfilename = sfilename;
		this.notino = notino;
	}



	public String getRfilename() {
		return rfilename;
	}


	public void setRfilename(String rfilename) {
		this.rfilename = rfilename;
	}


	public String getSfilename() {
		return sfilename;
	}


	public void setSfilename(String sfilename) {
		this.sfilename = sfilename;
	}


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getNotino() {
		return notino;
	}

	public void setNotino(int notino) {
		this.notino = notino;
	}


	@Override
	public String toString() {
		return "NoticeFile [no=" + no + ", rfilename=" + rfilename + ", sfilename=" + sfilename + ", notino=" + notino
				+ "]";
	}
	
}
