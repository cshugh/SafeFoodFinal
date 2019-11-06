package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.Food;


public interface FoodService {
	public void add(Food food);
	public Food search(int code);
	public List<Food> searchAll(String key, String value);
}
