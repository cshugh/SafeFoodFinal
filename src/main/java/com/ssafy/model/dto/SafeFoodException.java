package com.ssafy.model.dto;

public class SafeFoodException extends RuntimeException {
	public SafeFoodException() {
		
	}
	public SafeFoodException(String msg) {
		super(msg);
	}
}
