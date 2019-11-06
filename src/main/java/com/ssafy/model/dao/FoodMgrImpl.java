//package com.ssafy.model.dao;
//
//import java.util.List;
//
//import org.apache.ibatis.session.SqlSession;
//
//import com.ssafy.config.MyBatis;
//import com.ssafy.model.dto.Food;
//import com.ssafy.model.dto.FoodPageBean;
//import com.ssafy.model.util.FoodSaxParser;
//
//public class FoodMgrImpl implements IFoodMgr {
//	private static IFoodMgr manager = new FoodMgrImpl();
//	private SqlSession session = MyBatis.getSqlSession();
//	private FoodMgrImpl() {
//		loadData();
//	};
//
//	public static IFoodMgr getInstance() {
//		return manager;
//	}
//	public void loadData() {
//		FoodSaxParser fsp = null;
//		try {
//			fsp = new FoodSaxParser();
//			for (Food f : fsp.getFoods()) {
//				session.insert("food.insert",f);
//			}
//		} catch (Exception e) {
//		} finally {
//		}
//		// FoodNutritionSaxPaser를 이용하여 Food 데이터들을 가져온다
//		// 가져온 Food 리스트 데이터를 DB에 저장한다.
//	}
//	public List<Food> searchAll(String key, String value){
//		if (key.equals("searchName")) {
//			key = "name";
//		} else if (key.equals("searchMaker")) {
//			key = "maker";
//		} else {
//			key = "material";
//		}
//		FoodPageBean bean = new FoodPageBean(key, value, 1);
//		return session.selectList("food.searchAll",bean);
//	}
//
//	public Food search(int code){
//		return session.selectOne("food.search",String.valueOf(code));
//	}
//
//	@Override
//	public void add(Food food){
//		session.insert("food.insert",food);
//		session.commit();
//	}
//}
