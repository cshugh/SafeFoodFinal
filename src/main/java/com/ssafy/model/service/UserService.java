package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.User;
import com.ssafy.model.dto.UserFoodBean;

public interface UserService  {
	public User searchUser(String id) throws Exception;
	public void insertUser(User user) throws Exception;
	public void updateUser(User user) throws Exception;
	public void deleteUser(String id) throws Exception;
	public void insertUserFood(UserFoodBean userfood) throws Exception;
	public List<UserFoodBean> searchUserFoodList(String uid) throws Exception;
	public void deleteUserFood(UserFoodBean userfood) throws Exception;
	public UserFoodBean searchUserFood(UserFoodBean bean) throws Exception;
}
