package com.ssafy.model.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.ssafy.model.dto.Notice;
import com.ssafy.model.dto.NoticeFile;
import com.ssafy.model.dto.PageBean;
@Mapper
public interface NoticeDao {
	public int  getNoticeNo();
	public void insertNotice(Notice notice);
	public void insertNoticeFile(List<NoticeFile> files, int notino);
	public Notice search(String no);
	public List<Notice> searchAll(PageBean bean);
	public int  count(PageBean bean);
	public void updateNotice(Notice notice);
	public void deleteNotice(String no) ;
	public void deleteNoticeFile(int notino);
}