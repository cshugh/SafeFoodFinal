package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.Food;


public interface FoodService {
	public void insertFood(Food food);
	public Food searchFood(int code);
	public List<Food> searchAllFood();
	public List<Food> searchFoodByCondition(String key, String value);
	public void deleteFood(int code);
}
