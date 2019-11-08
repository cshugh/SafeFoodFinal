package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.User;
import com.ssafy.model.dto.UserFoodBean;

public interface UserService  {
	public User searchUser(String id) ;
	public void insertUser(User user) ;
	public void updateUser(User user) ;
	public void deleteUser(String id);
	public void insertUserFood(UserFoodBean userfood) ;
	public List<UserFoodBean> searchUserFoodList(String uid) ;
	public void deleteUserFood(UserFoodBean userfood);
	public UserFoodBean searchUserFood(UserFoodBean bean) ;
	public boolean login(String user, String password);
}
