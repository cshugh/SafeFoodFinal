package com.ssafy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.model.dto.User;
import com.ssafy.model.service.FoodService;
import com.ssafy.model.service.UserService;

@Controller
public class MainController {
	@Autowired
	private FoodService foodService;
	
	@Autowired
	private UserService userService;
	
	
	@ExceptionHandler
	public ModelAndView handler (Exception e) {
		ModelAndView mav = new ModelAndView("Error");
		mav.addObject("msg", e.getMessage());
		return mav;
	}
	
	
	@DeleteMapping("deleteUser.do")
	public String deleteUser(@RequestParam String id) {
		userService.deleteUser(id);
		return "redirect:main.jsp";
	}
	@GetMapping("regitUser.do")
	public String regitUser() {
		return "userRegit";
	}
	
	@PostMapping("insertUser.do")
	public String insertUser(User user) {
		System.out.println(user);
		userService.insertUser(user);
		return "redirect:main.jsp";
	}
	
//	@PutMapping("updateUser.do")
	
	/*
	 * @PostMapping("insertFood.do") public String insertFood() { return "food/"; }
	 */
	@GetMapping("foodDetail.do")
	public String searchFood(Model model, int code) { 
		model.addAttribute("food", foodService.searchFood(code));
		return "foodDetail";
	}

	@PostMapping("searchAllFood.do") 
	 public String searchAllFood(Model model, String key, String value) {
		if(key==null) key="";
		if(value==null) value="";
		model.addAttribute("foodList", foodService.searchAllFood(key, value));
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
}
