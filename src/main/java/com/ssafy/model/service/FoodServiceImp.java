package com.ssafy.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.model.dao.FoodDao;
import com.ssafy.model.dto.Food;
import com.ssafy.model.dto.SafeFoodException;

@Service
public class FoodServiceImp implements FoodService{
	@Autowired
	private FoodDao dao;
	
	public List<Food> searchAll(String key, String value) {
		try {
			return dao.searchAll(key, value);
		} catch(Exception e){
			e.printStackTrace();
			throw new SafeFoodException("찾으려는 정보가 없습니다");
		}
	}
	public Food search(int code) {
		try {
			return dao.search(code);
		} catch(Exception e) {
			e.printStackTrace();
			throw new SafeFoodException("찾으려는 정보가 없습니다");
		}
	}
	@Override
	public void add(Food food) {
		try {
			dao.add(food);
		} catch (Exception e) {
			e.printStackTrace();
			throw new SafeFoodException("이미 존재하는 정보입니다");
		}
	}
}
