package com.ssafy.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.model.dto.User;
import com.ssafy.model.dto.UserfoodBean;

@Mapper
public interface UserDao {
	public void update(User user);
	public void remove(String id) ;
	public void add(User user) ;
	public User search(String id) ;
	public void insertFood(UserfoodBean userfood) ;
	public List<UserfoodBean> searchFoodList(String uid) ;
	public void deleteFood(UserfoodBean userfood) ;
	public UserfoodBean searchFood(UserfoodBean bean);
}
