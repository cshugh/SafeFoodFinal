package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.QnA;
import com.ssafy.model.dto.Comment;
import com.ssafy.model.dto.PageBean;

public interface QnAService {
	public void insert(QnA board);
	public void update(QnA board);
	public void delete(int no);
	public QnA search(int no);
	public List<QnA> searchAll(PageBean bean);
	public void insertComment(Comment com);
	public void deleteComment(int cno);
	public int  getQno();
	public List<Comment> searchComments(int qno);
	
}
