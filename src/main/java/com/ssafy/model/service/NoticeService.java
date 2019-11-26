package com.ssafy.model.service;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.ssafy.model.dto.Notice;
import com.ssafy.model.dto.NoticeFile;
import com.ssafy.model.dto.PageBean;

public interface NoticeService {
	public void insert(Notice notice);
	public void update(Notice notice);
	public void delete(int no) ;
	public Notice search(int no);
	public List<Notice> searchAll(PageBean bean);
}