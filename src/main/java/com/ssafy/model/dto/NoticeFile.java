package com.ssafy.model.dto;

import java.io.Serializable;

public class NoticeFile implements Serializable{
	private int no;
	private String filename;
	private int notino;
	public NoticeFile() {
		super();
	}
	
	public NoticeFile(int no, String filename) {
		super();
		this.no = no;
		this.filename = filename;
	}

	public NoticeFile(int no, String filename, int notino) {
		super();
		this.no = no;
		this.filename = filename;
		this.notino = notino;
	}

	@Override
	public String toString() {
		return "NoticeFile [no=" + no + ", filename=" + filename + ", notino=" + notino + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getNotino() {
		return notino;
	}

	public void setNotino(int notino) {
		this.notino = notino;
	}
	
}
