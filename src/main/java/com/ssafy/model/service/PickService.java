package com.ssafy.model.service;

import com.ssafy.model.dto.Pick;

public interface PickService {
	void insertPick(Pick pickfood);
	void deletePick(Pick pickfood);
	Pick searchPick(String id);
}
