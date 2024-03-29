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
	
	public void deleteFood(int code) {
		try {
			dao.deleteFood(code);
		} catch (Exception e) {
			e.printStackTrace();
			throw new SafeFoodException("존재하지않는 상품입니다.");
		}
	}
	
	public List<Food> searchAllFood() {
		try {
			return dao.searchAllFood();
		} catch(Exception e){
			e.printStackTrace();
			throw new SafeFoodException("찾으려는 정보가 없습니다");
		}
	}
	
	public List<Food> searchFoodByCondition(String key, String value) {
		try {
			System.out.println("여기는 service야"+key+" "+value);
			return dao.searchFoodByCondition(key, value);
		} catch(Exception e){
			e.printStackTrace();
			throw new SafeFoodException("찾으려는 정보가 없습니다");
		}
	}
	
	public Food searchFood(int code) {
		try {
			return dao.searchFood(code);
		} catch(Exception e) {
			e.printStackTrace();
			throw new SafeFoodException("찾으려는 정보가 없습니다");
		}
	}
	@Override
	public void insertFood(Food food) {
		try {
			dao.insertFood(food);
		} catch (Exception e) {
			e.printStackTrace();
			throw new SafeFoodException("이미 존재하는 정보입니다");
		}
	}
}
