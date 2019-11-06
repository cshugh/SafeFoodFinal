package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.Food;


public interface FoodService {
	public void add(Food food);
	public List<Food> searchAll(String key, String value);
	public Food search(int code);
}
