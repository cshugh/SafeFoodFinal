package com.ssafy.model.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Notice implements Serializable {

	private int no;
	private String id; // 운영자의 경우만 작성할 수 있어야함
	private String category; // 운영, 기타 이런거
	private boolean isImportant; // 중요여부(중요한건 맨 위로)
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
	public Notice(String id, String category, boolean isImportant, String title, String contents) {
		super();
		this.id = id;
		this.category = category;
		this.isImportant = isImportant;
		this.title = title;
		this.contents = contents;
	}
	public Notice(int no, String id, String category, boolean isImportant, String title, String regdate,
			String contents, String dir, MultipartFile[] fileup, List<NoticeFile> files) {
		super();
		this.no = no;
		this.id = id;
		this.category = category;
		this.isImportant = isImportant;
		this.title = title;
		this.regdate = regdate;
		this.contents = contents;
		this.dir = dir;
		this.fileup = fileup;
		this.files = files;
	}

	public int getNo() {
		return no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public boolean isImportant() {
		return isImportant;
	}

	public void setImportant(boolean isImportant) {
		this.isImportant = isImportant;
	}

	@Override
	public String toString() {
		return "Notice [no=" + no + ", id=" + id + ", category=" + category + ", isImportant=" + isImportant
				+ ", title=" + title + ", regdate=" + regdate + ", contents=" + contents + ", dir=" + dir + ", fileup="
				+ Arrays.toString(fileup) + ", files=" + files + "]";
	}

	

}
