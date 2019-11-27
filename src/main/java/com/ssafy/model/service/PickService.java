package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.Food;
import com.ssafy.model.dto.Pick;

public interface PickService {
	void insertPick(Pick pickfood);
	void deletePick(Pick pickfood);
	List<Food> searchPick(String id);
}
