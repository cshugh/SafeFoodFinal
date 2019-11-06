//package com.ssafy.model.dao;
//
//import java.util.List;
//
//import org.apache.ibatis.session.SqlSession;
//
//import com.ssafy.config.MyBatis;
//import com.ssafy.model.dto.Food;
//import com.ssafy.model.dto.User;
//import com.ssafy.model.dto.UserfoodBean;
//
//public class UserMgrImpl implements UserDao {
//	
//	private SqlSession session = MyBatis.getSqlSession();
//	private static UserDao manager = new UserMgrImpl();
//
//	private UserMgrImpl() {};
//	public static UserMgrImpl getInstance() {
//		return (UserMgrImpl) manager;
//	}
//	public static boolean kmp(String origin, String allergy) {
//		char[] T = origin.toCharArray();
//		char[] P = allergy.toCharArray();
//		int tLength = T.length, pLength= P.length;
//		int[] fail  = new int[pLength];
//		
//		for (int i = 1,j=0; i < pLength; ++i) {
//			while(j>0 && P[i] != P[j]) j = fail[j-1];
//			
//			if(P[i]==P[j]) fail[i] = ++j;
//		}
//		int cnt = 0;
//		for (int i = 0, j=0; i < tLength; ++i) {
//			while(j>0 && T[i] != P[j]) j = fail[j-1];
//			if(T[i] == P[j]) {
//				if(j == pLength-1) {
//					return true;
//				}else {
//					++j;
//				}
//			}
//		}
//		return false;
//	}
//	public static String getAllergyIngredients(Food food, String allergies) {
//		String[] ingredients = allergies.split(",");
//		int size = ingredients.length;
//		String answer = "";
//		int cnt = 0;
//		for (int i = 0; i < size; i++) {
//			if(kmp(food.getName(), ingredients[i]) || kmp(food.getMaterial(), ingredients[i])) {
//				cnt++;
//				if(cnt != 1) {
//					answer += ",";
//				}
//				answer += ingredients[i];
//			}
//		}
//		return answer;
//	}
//	
//	@Override
//	public void add(User user)  {
//		session.insert("user.insert",user);
//	}
//	@Override
//	public User search(String id)  {
//		return session.selectOne("user.search",id);
//	}
//	@Override
//	public void update(User user) {
//		session.update("user.update",user);
//	}
//	@Override
//	public void remove(String id)  {
//		session.delete("user.delete",id);
//	}
//	@Override
//	public void insertFood(UserfoodBean userfood)   {
//		session.insert("user.insertFood",userfood);
//		session.commit();
//	}
//	@Override
//	public List<UserfoodBean> searchFoodList(String uid)   {
//		return session.selectList("user.searchFoodList",uid);
//	}
//	@Override
//	public void deleteFood(UserfoodBean userfood)   {
//		session.delete("user.deleteFood",userfood);
//		session.commit();
//	}
//	public UserfoodBean searchFood(UserfoodBean bean) {
//		UserfoodBean res = session.selectOne("user.searchFood",bean);
//		if(res != null) {
//			int tmp = res.getCount()+1;
//			res.setCount(tmp);
//		}
//		return res;
//	}
//
//}
