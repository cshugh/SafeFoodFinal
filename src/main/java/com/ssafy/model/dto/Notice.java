package com.ssafy.model.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Notice implements Serializable{
	
	private int no;
	private String category;
	private String title;
	private String regdate;
	private String contents;
	/** 파일을 저장할 경로 */
	private String dir;
	/** Spring에서 처리한 파일 정보 */
	private MultipartFile[] fileup;
	/** Database를 위한 파일 정보 */
	private List<NoticeFile> files;
	public Notice() {
		super();
	}
	public Notice(int no, String category, String title, String regdate, String contents, String dir) {
		super();
		this.no = no;
		this.category = category;
		this.title = title;
		this.regdate = regdate;
		this.contents = contents;
		this.dir = dir;
	}
	public Notice(int no, String category, String title, String regdate, String contents, String dir,
			List<NoticeFile> files) {
		super();
		this.no = no;
		this.category = category;
		this.title = title;
		this.regdate = regdate;
		this.contents = contents;
		this.dir = dir;
		this.files = files;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getDir() {
		return dir;
	}
	public void setDir(String dir) {
		this.dir = dir;
	}
	public MultipartFile[] getFileup() {
		return fileup;
	}
	public void setFileup(MultipartFile[] fileup) {
		this.fileup = fileup;
	}
	public List<NoticeFile> getFiles() {
		return files;
	}
	public void setFiles(List<NoticeFile> files) {
		this.files = files;
	}
	@Override
	public String toString() {
		return "Notice [no=" + no + ", category=" + category + ", title=" + title + ", regdate=" + regdate
				+ ", contents=" + contents + ", dir=" + dir + ", fileup=" + Arrays.toString(fileup) + ", files=" + files
				+ "]";
	}
	
	

}
