package com.ssafy.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.ssafy.model.dto.Food;
@Repository
@Mapper
public interface FoodDao {
	public void insertFood(Food food);
	public List<Food> searchFoodByCondition(String key, String word);
	public List<Food> searchAllFood();
	public Food searchFood(int code);
	public void deleteFood(int code);
}
