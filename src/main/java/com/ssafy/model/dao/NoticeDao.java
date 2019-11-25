package com.ssafy.model.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.ssafy.model.dto.Notice;
import com.ssafy.model.dto.NoticeFile;
import com.ssafy.model.dto.PageBean;
@Mapper
public interface NoticeDao {
	public int  getNoticeNo();
	public void insert(Notice notice);
	public void insertFile(List<NoticeFile> files, int notino);
	public Notice search(int no);
	public List<Notice> searchAll(PageBean bean);
	public int  count(PageBean bean);
	public void update(Notice notice);
	public void delete(int no) ;
	public void deleteFile(int notino);
}