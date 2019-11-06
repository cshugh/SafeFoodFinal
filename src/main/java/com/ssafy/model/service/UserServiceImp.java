package com.ssafy.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.model.dao.UserDao;
import com.ssafy.model.dto.Food;
import com.ssafy.model.dto.SafeFoodException;
import com.ssafy.model.dto.User;
import com.ssafy.model.dto.UserfoodBean;
@Service
public class UserServiceImp implements UserService {
	@Autowired
	private UserDao dao;
//	public String getAllergyIngredients(Food food, String allergies) {
//		return dao.getAllergyIngredients(food, allergies);
//	}
	public User search(String id) throws Exception {
		try { 
			User User = dao.search(id);
			if(User == null) {
				throw new SafeFoodException("찾으려는 정보가 없습니다");
			} else {
				return User;
			}
		} catch (Exception e) {
			throw new SQLException();
		}
	}
	public boolean login(String id, String pw) throws Exception {
		try {
			User User = dao.search(id);
			if(User == null) {
				throw new SafeFoodException("찾으려는 정보가 없습니다");
			}else {
				if(pw.equals(User.getPassword())) {
					return true;
				}else {
					throw new SafeFoodException("비밀 번호 오류");
				}
			}
		} catch (Exception e) {
			throw new SQLException();
		}
	}
	public boolean checkID(String id) throws Exception {
		try {
			return (dao.search(id) != null);
		} catch (Exception e) {
			throw new SQLException();
		}
	}
	public void add(User User) throws Exception {
		try {
			User find = dao.search(User.getId());
			if(find != null) {
				throw new SafeFoodException("회원정보 삽입 중 오류");
			}else {
				dao.add(User);
			}
		} catch (Exception e) {
			throw new SQLException();
		}
	}
	public void update(User User) throws Exception {
		try {
			User find = dao.search(User.getId());
			if(find == null) {
				throw new SafeFoodException("수정할 회원 정보가 없습니다.");
			}else {
				dao.update(User);
			}
		} catch (Exception e) {
			throw new SQLException();
		}
	}
	public void remove(String id) throws Exception {
		try {
			User find = dao.search(id);
			if(find == null) {
				throw new SafeFoodException("탈퇴할 회원 정보가 없습니다.");
			}else {
				dao.remove(id);
			}
		} catch (Exception e) {
			throw new SQLException();
		}
	}
	@Override
	public void insertFood(UserfoodBean userfood) throws Exception {
		try {
			dao.insertFood(userfood);
		}catch (Exception e) {
			e.printStackTrace();
			throw new SafeFoodException("섭취식품 추가 중 에러 발생");
		}
	}
	@Override
	public List<UserfoodBean> searchFoodList(String uid) throws Exception {
		try {
			return dao.searchFoodList(uid);
		} catch (Exception e) {
			e.printStackTrace();
			throw new SafeFoodException("섭취식품 목록 로드 중 에러 발생");
		}
	}
	@Override
	public void deleteFood(UserfoodBean userfood) throws Exception {
		try {
			dao.deleteFood(userfood);
		} catch (Exception e) {
			e.printStackTrace();
			throw new SafeFoodException("섭취식품 삭제 중 에러 발생");
		}
		
	}
	@Override
	public UserfoodBean searchFood(UserfoodBean bean) throws Exception {
		try {
			return dao.searchFood(bean);
		} catch (Exception e) {
			e.printStackTrace();
			throw new SafeFoodException("섭취식품 검색 중 에러 발생");
		}
	}
}
