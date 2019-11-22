package com.ssafy.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.model.dao.QnADao;
import com.ssafy.model.dto.Comment;
import com.ssafy.model.dto.PageBean;
import com.ssafy.model.dto.QnA;
import com.ssafy.model.dto.QnAException;
import com.ssafy.util.PageUtility;

@Service
public class QnAServiceImpl implements QnAService {
	@Autowired
	QnADao dao ;
	public void insert(QnA board) {
		try {
			dao.insert(board);			
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnAException("추가 중 에러발생");
		}
	}
	public void update(QnA board) {
		try {
			dao.update(board);
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnAException("수정 중 에러발생");
		}
	}
	public void delete(int no) {
		try {
			dao.delete(no); // cascade로 file의 모든 정보가 사라진다
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnAException("삭제 중 에러발생");
		}
	}
	public QnA search(int no) {
		try {
			return dao.search(no);
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnAException("no로 조회 중 에러발생");
		}
	}
	public List<QnA> searchAll(PageBean bean) {
		try {
			int total = dao.count(bean);
			PageUtility bar = new PageUtility(bean.getInterval()
					, total, bean.getPageNo(), "images/");
			bean.setPageLink(bar.getPageBar());
			return dao.searchAll(bean);
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnAException("검색 중 오류 발생");
		}
	}
	
	@Override
	public void deleteComment(int cno) {
		try {
			dao.deleteComment(cno);
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnAException("댓글 삭제 중 오류 발생");
		}
		
	}
	@Override
	public void insertComment(Comment com) {
		try {
			int qno = com.getQno();
			if(getQno(qno)>0) {				
				dao.insertComment(com);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnAException("댓글 추가 중 오류 발생");
		}
		
	}
	@Override
	public int getQno(int qno) {
		return dao.getQno(qno);
	}
	@Override
	public List<Comment> searchComments(int qno) {
		try {
			return dao.searchComments(qno);
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnAException("댓글 조회 중 오류 발생");
		}
	}
	
	
}














