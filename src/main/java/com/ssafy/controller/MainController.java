package com.ssafy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.model.dto.Food;
import com.ssafy.model.dto.Pick;
import com.ssafy.model.dto.User;
import com.ssafy.model.dto.UserFoodBean;
import com.ssafy.model.service.FoodService;
import com.ssafy.model.service.PickService;
import com.ssafy.model.service.UserService;

@Controller
public class MainController {
	@Autowired
	private FoodService foodService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PickService pickService;
	
	
	@ExceptionHandler
	public ModelAndView handler (Exception e) {
		ModelAndView mav = new ModelAndView("Error");
		mav.addObject("msg", e.getMessage());
		return mav;
	}
	
	
	@GetMapping("deleteUser.do")
	public String deleteUser(String id,HttpSession session ) {
		userService.deleteUser(id);
		session.invalidate();
		return "redirect:main.jsp";
	}
	
	@GetMapping("regitUser.do")
	public String regitUser() {
		return "userRegit";
	}
	
	@GetMapping("infoUser.do")
	public String updateUser(Model model, HttpSession session) {
		String id = (String) session.getAttribute("user");
		User member =userService.searchUser(id);
		model.addAttribute("member", member);
		return "userinfo";
	}
	
	@PostMapping("insertUser.do")
	public String insertUser(User user) {
		userService.insertUser(user);
		return "redirect:main.jsp";
	}
	
	@PutMapping("updateUser.do")
	public String updateUser(User user) {
		System.out.println(user.getAllergy());
		userService.updateUser(user);
		return "redirect:main.jsp";
	}
	
	@GetMapping("qna.do")
	public String qna() {
		return "redirect:qna.jsp";
	}
	@GetMapping("notice.do")
	public String notice() {
		return "redirect:notice.jsp";
	}
	@GetMapping("foodIntake.do")
	public String foodIntake() {
		//아이디 검증해서 
		//그 아이디에 맞는 db 가져와서 넣어줘야함
		return "redirect:foodIntake.jsp";
	}
	/*
	 * @PostMapping("insertFood.do") public String insertFood() { return "food/"; }
	 */
	@GetMapping("foodDetail.do")
	public String searchFood(Model model, int code) { 
		model.addAttribute("food", foodService.searchFood(code));
		return "foodDetail";
	}
	
	@GetMapping("searchAllFood.do") 
	 public String searchAllFood(Model model) {
		String allegies="대두,땅콩,우유,게,새우,참치,연어,쑥,소고기,닭고기,돼지고기,복숭아"
				+ "민들레,계란흰자,쇠고기,닭,계란";
		List<Food> Foodlist =  foodService.searchAllFood();

		for (int i = 0; i < Foodlist.size(); i++) {
			Food food = Foodlist.get(i);
			
			String information=getAllergyIngredients(food,allegies);
			food.setAllergyIngredients(information);
		}
		System.out.println(Foodlist);
		
		model.addAttribute("foodList",Foodlist);
		return "foodInfo"; 
	 }
	@GetMapping("searchFoodByCondition.do") 
	 public String searchFoodByCondition(Model model, String key, String value) {
		System.out.println(key+","+value);
		if(key==null) key="";
		if(value==null) value="";
		model.addAttribute("foodList", foodService.searchFoodByCondition(key, value));
		return "foodInfo"; 
	 }

	@PostMapping("login.do")
	public String login(String user, String password, HttpSession session) {
		boolean result = userService.login(user, password);
		if(result) {
			session.setAttribute("user", user);
			
		}
		return "redirect:main.jsp";
	}
	
	@GetMapping("logout.do")
	public String logout(HttpSession session) {
		
		session.invalidate();
		return "redirect:main.jsp";
	}

	//찜
	@GetMapping("pickfood.do")
	public String pick(HttpSession session,int fno) {
		String id = (String) session.getAttribute("user");
		Pick pickfood = new Pick();
	
		pickfood.setUid(id);	
		pickfood.setFno(fno);		

		pickService.insertPick(pickfood);
		
		return "redirect:searchAllFood.do";
		//redirect를 안써주면 do뒤에 .jsp가 붙게됨
	}
	
	//찜삭제
	@GetMapping("pickDelete.do")
	public String pickDelete(HttpSession session, int fno) {
		String id = (String) session.getAttribute("user");
		Pick pickfood = new Pick();
		
		pickfood.setUid(id);	
		pickfood.setFno(fno);		
		
		pickService.deletePick(pickfood);
		
		return "redirect:searchAllFood.do";
	}
	
	//찜목록
	@GetMapping("pickSearch.do")
	public String pickSearch(Model model,HttpSession session) {
		String id = (String) session.getAttribute("user");
		
		model.addAttribute("pickList",pickService.searchPick(id));
		
		return "redirect:searchAllFood.do";
	}
	
	//추가(섭취)
	@GetMapping("insertUserFood.do")
	public String insertUserFood(HttpSession session, int fno) {
		String id = (String) session.getAttribute("user");
		UserFoodBean userfood = new UserFoodBean();
		userfood.setUid(id);
		userfood.setFno(fno);
		
		userService.insertUserFood(userfood);
		
		return "redirect:searchAllFood.do";
	}
	
	//섭취삭제
	@GetMapping("deleteUserFood.do")
	public String deleteUserFood(HttpSession session, int fno) {
		String id = (String) session.getAttribute("user");
		UserFoodBean userfood = new UserFoodBean();
		userfood.setUid(id);
		userfood.setFno(fno);
		
		userService.deleteUserFood(userfood);
		
		return "redirect:searchAllFood.do";
	}
	
	//섭취식품목록
	@GetMapping("searchUserFoodList")
	public String searchUserFoodList(Model model,HttpSession session) {
		String id = (String) session.getAttribute("user");
		
		model.addAttribute("UserFoodList",userService.searchUserFoodList(id));
		
		return "redirect:searchAllFood.do";
	}
	
	//섭취식품검색
	@GetMapping("searchUserFood")
	public String searchUserFood(Model model,HttpSession session,int fno) {
		String id = (String) session.getAttribute("user");
		UserFoodBean userfood = new UserFoodBean();
		userfood.setUid(id);
		userfood.setFno(fno);
		
		model.addAttribute("bean",userService.searchUserFood(userfood));
		
		return "redirect:searchAllFood.do";
	}
	
	
	// login.do
	@GetMapping("getLoginInfo.do")
	@ResponseBody
	public Map<String, Object> getLoginInfo(HttpSession session) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		String id = (String)(session.getAttribute("user"));
		System.out.println(id);
		if (id != null) {
			map.put("status", true);
			map.put("id", id);
		} else {
			map.put("status", false);
		}
		System.out.println(map);
		//이거를 
		return map;
	}
	
	public static boolean kmp(String origin, String allergy) {
		char[] T = origin.toCharArray();
		char[] P = allergy.toCharArray();
		int tLength = T.length, pLength = P.length;
		int[] fail = new int[pLength];

		for (int i = 1, j = 0; i < pLength; ++i) {
			while (j > 0 && P[i] != P[j])
				j = fail[j - 1];

			if (P[i] == P[j])
				fail[i] = ++j;
		}
		int cnt = 0;
		for (int i = 0, j = 0; i < tLength; ++i) {
			while (j > 0 && T[i] != P[j])
				j = fail[j - 1];
			if (T[i] == P[j]) {
				if (j == pLength - 1) {
					return true;
				} else {
					++j;
				}
			}
		}
		return false;
	}
	
	public static String getAllergyIngredients(Food food, String allergies) {
		String[] ingredients = allergies.split(",");
		int size = ingredients.length;
		String answer = "";
		int cnt = 0;
		for (int i = 0; i < size; i++) {
			if (kmp(food.getName(), ingredients[i]) || kmp(food.getMaterial(), ingredients[i])) {
				cnt++;
				if (cnt != 1) {
					answer += ",";
				}
				answer += ingredients[i];
			}
		}
		return answer;
	}
}
