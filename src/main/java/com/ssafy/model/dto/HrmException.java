package com.ssafy.model.dto;

public class HrmException extends RuntimeException {
	public HrmException() {
		super("인사관리 처리 중 오류 발생");
	}
	public HrmException(String msg) {
		super(msg);
	}
}
