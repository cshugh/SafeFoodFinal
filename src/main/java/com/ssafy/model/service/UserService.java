package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.User;
import com.ssafy.model.dto.UserfoodBean;

public interface UserService  {
	public User search(String id) throws Exception;
	public void add(User user) throws Exception;
	public void update(User user) throws Exception;
	public void remove(String id) throws Exception;
	
	public void insertFood(UserfoodBean userfood) throws Exception;
	public List<UserfoodBean> searchFoodList(String uid) throws Exception;
	public void deleteFood(UserfoodBean userfood) throws Exception;
	public UserfoodBean searchFood(UserfoodBean bean) throws Exception;
}
