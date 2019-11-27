package com.ssafy.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.ssafy.model.dto.Food;
import com.ssafy.model.dto.User;
import com.ssafy.model.dto.UserFoodBean;
@Repository
@Mapper
public interface UserDao {
	public User searchUser(String id);
	public void insertUser(User user);
	public void updateUser(User user);
	public void deleteUser(String id);
	public void insertUserFood(UserFoodBean userfood) ;
	public List<UserFoodBean> searchUserFoodList(String uid) ;
	public void deleteUserFood(UserFoodBean userfood) ;
	public UserFoodBean searchUserFood(UserFoodBean bean);
	public List<Food> searchUserConsumeFood(String uid);
}
