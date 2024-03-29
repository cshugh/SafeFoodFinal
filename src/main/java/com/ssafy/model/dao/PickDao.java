package com.ssafy.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.ssafy.model.dto.Food;
import com.ssafy.model.dto.Pick;

@Mapper
public interface PickDao {
	void insertPick(Pick pick);
	void deletePick(Pick pick);
	List<Food> searchPick(String id);
}
