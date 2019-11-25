package com.ssafy.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.model.dto.Comment;
import com.ssafy.model.dto.PageBean;
import com.ssafy.model.dto.QnA;

@Mapper
public interface QnADao {
	public int  getQno();
	public void insert(QnA board);
	public void insertComment(Comment com);
	public QnA search(int no);
	public List<QnA> searchAll(PageBean bean);
	public int  count(PageBean bean);
	public void update(QnA board);
	public void delete(int no) ;
	public void deleteComment(int cno);
	public List<Comment> searchComments(int qno);
}













