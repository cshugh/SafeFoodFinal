package com.ssafy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.model.dto.Comment;
import com.ssafy.model.dto.Notice;
import com.ssafy.model.dto.PageBean;
import com.ssafy.model.dto.QnA;
import com.ssafy.model.service.NoticeService;
import com.ssafy.model.service.QnAService;

import io.swagger.annotations.ApiOperation;


@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
public class BoardRestController {
	//공지사항, Q&A 게시판 2개 이용
	@Autowired
	private QnAService qservice;
	@Autowired
	private NoticeService nservice;
	
	@ExceptionHandler
	public ResponseEntity<Map<String, Object>> handle(Exception e){
		return handleFail(e.getMessage(),HttpStatus.OK);
	}
	
	@ApiOperation("공지사항 등록")
	@PostMapping("api/notice")
	public ResponseEntity<Map<String, Object>> addNotice(@RequestBody Notice notice){
		System.out.println("addNotice.........................."+notice);
		nservice.insert(notice);
		return handleSuccess("공지사항 등록 성공");
	}
	@ApiOperation("QnA 등록")
	@PostMapping("api/qna")
	public ResponseEntity<Map<String, Object>> addQnA(@RequestBody QnA qna) { // @RestController이어도 @RequestBody 생략하면 안됨.
		System.out.println("addQna.........................."+qna);
		qservice.insert(qna);
		
		return handleSuccess("Q&A 등록 성공");
	}
	
	@ApiOperation("공지사항 수정")
	@PutMapping("api/notice")
	public ResponseEntity<Map<String, Object>> updateNotice(@RequestBody Notice notice) { // @RestController이어도 @RequestBody 생략하면 안됨.
		System.out.println("updateNotice.........................."+notice);
		nservice.update(notice);
		
		return handleSuccess("공지사항 수정 성공");
	}
	
	@ApiOperation("QnA 수정")
	@PutMapping("api/qna")
	public ResponseEntity<Map<String, Object>> updateQnA(@RequestBody QnA qna) { // @RestController이어도 @RequestBody 생략하면 안됨.
		System.out.println("updateQna.........................."+qna);
		qservice.update(qna);
		
		return handleSuccess("Q&A 수정 성공");
	}
	
	@ApiOperation("공지사항 삭제")
	@DeleteMapping("api/notice/{no}")
	public ResponseEntity<Map<String, Object>> deleteNotice(@PathVariable int no) { 
		System.out.println("deleteNotice.........................."+no);
		nservice.delete(no);
		return handleSuccess("삭제 성공");
	}
	
	@ApiOperation("QnA 삭제")
	@DeleteMapping("api/qna/{no}")
	public ResponseEntity<Map<String, Object>> deleteQnA(@PathVariable int no) { 
		System.out.println("deleteQna.........................."+no);
		qservice.delete(no);
		return handleSuccess("삭제 성공");
	}
	
	@ApiOperation("모든 공지사항 정보 가져오기")
	@GetMapping("api/notice")
	public ResponseEntity<Map<String, Object>> searchAllNotice(PageBean bean) { 
		System.out.println("searchAll..........................");
		List<Notice> list = nservice.searchAll(bean);
		return handleSuccess(list);
	}
	@ApiOperation("모든 Qna 정보 가져오기")
	@GetMapping("api/qna")
	public ResponseEntity<Map<String, Object>> searchAllQnA(PageBean bean) { 
		System.out.println("searchAll..........................");
		List<QnA> list = qservice.searchAll(bean);
		return handleSuccess(list);
	}
	@ApiOperation("공지사항 번호로 공지사항 정보 가져오기")
	@GetMapping("api/notice/{no}")
	public ResponseEntity<Map<String, Object>> searchNoticeById(@PathVariable int no) { 
		System.out.println("search notice..........................");
		Notice notice = nservice.search(no);
		return handleSuccess(notice);
	}
	@ApiOperation("QnA 번호로 QnA 정보 가져오기")
	@GetMapping("api/qna/{no}")
	public ResponseEntity<Map<String, Object>> searchQnAById(@PathVariable int no) { 
		System.out.println("search qna..........................");
		QnA qna = qservice.search(no);
		return handleSuccess(qna);
	}
	
	@ApiOperation("댓글 추가하기")
	@PostMapping("api/qna/commnet")
	public ResponseEntity<Map<String, Object>> addComment(@RequestBody Comment com) { 
		System.out.println("addComment.........................."+com);
		qservice.insertComment(com);
		return handleSuccess("댓글 등록 성공");
	}
	
	@ApiOperation("댓글 삭제하기")
	@DeleteMapping("api/qna/comment/{cno}")
	public ResponseEntity<Map<String, Object>> deleteComment(@PathVariable int cno) { 
		System.out.println("deleteEmployee.........................."+cno);
		qservice.deleteComment(cno);
		return handleSuccess("댓글 삭제 성공");
	}
	
	@ApiOperation("모든 댓글 정보 가져오기")
	@GetMapping("api/qna/comment/{qno}")
	public ResponseEntity<Map<String, Object>> searchComments(@PathVariable int qno) { 
		System.out.println("searchComments..........................");
		List<Comment> list = qservice.searchComments(qno);
		return handleSuccess(list);
	}
	
	public ResponseEntity<Map<String, Object>> handleFail(Object data, HttpStatus state){
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("state", "fail");
		resultMap.put("data", data);
		return new ResponseEntity<Map<String, Object>>(resultMap,state);
	}
	
	public ResponseEntity<Map<String, Object>> handleSuccess(Object data){
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("state", "ok");
        resultMap.put("data", data);
        return new ResponseEntity<Map<String,Object>>(resultMap, HttpStatus.OK);
    }
}
