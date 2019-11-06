package com.ssafy.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.ssafy.model.dto.Food;
@Repository
@Mapper
public interface FoodDao {
	public void add(Food food);
	public List<Food> searchAll(String key, String value);
	public Food search(int code);
}
