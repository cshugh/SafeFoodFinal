package com.ssafy.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.model.dto.Food;

@Mapper
public interface FoodDao {
	public void add(Food food);
	public List<Food> searchAll(String key, String value);
	public Food search(int code);
}
