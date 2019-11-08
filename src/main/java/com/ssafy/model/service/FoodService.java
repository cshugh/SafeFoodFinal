package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.Food;


public interface FoodService {
	public void insertFood(Food food);
	public Food searchFood(int code);
	public List<Food> searchAllFood(String key, String value);
}
