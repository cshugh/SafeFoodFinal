package com.ssafy.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String foodIntake(Model model, HttpSession session) {
		//아이디 검증해서 
		//그 아이디에 맞는 db 가져와서 넣어줘야함
		String uid = (String) session.getAttribute("user");
		List<Food> userFoodList = userService.searchUserConsumeFood(uid);
		List<Food> pickList = pickService.searchPick(uid);
		String allergies="대두,땅콩,우유,게,새우,참치,연어,쑥,소고기,닭고기,돼지고기,복숭아"
				+ "민들레,계란흰자,쇠고기,닭,계란";
		for (int i = 0; i < userFoodList.size(); i++) {
			Food food = userFoodList.get(i);
			String information=getAllergyIngredients(food,allergies);
			food.setAllergyIngredients(information);
		}
		for(Food f : pickList) {
			String information = getAllergyIngredients(f, allergies);
			f.setAllergyIngredients(information);
		}
		model.addAttribute("userFoodList", userFoodList);
		model.addAttribute("pickList", pickList);
		return "foodIntake";
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
	 public String searchAllFood(Model model,HttpSession session) {
		String allergies="대두,땅콩,우유,게,새우,참치,연어,쑥,소고기,닭고기,돼지고기,복숭아"
				+ "민들레,계란흰자,쇠고기,닭,계란";
		List<Food> Foodlist =  foodService.searchAllFood();

		//식품마다 재료들에서 알러지 유발가능 재료들만 추출
		for (int i = 0; i < Foodlist.size(); i++) {
			Food food = Foodlist.get(i);
			
			//KMP를 이용해서 알러지에 해당하는 재료들만 뽑아서 information에 담는다.
			String information=getAllergyIngredients(food,allergies);
			food.setAllergyIngredients(information);
			
			//유발가능한 재료들을 List로 다시 담아준다.
			String[] allergyList = information.split(",");
			List<String> list = new ArrayList<>(Arrays.asList(allergyList));
			
			food.setListAllergy(list);
		}
		
		//user가 가지고있는 알러지들을 추출, 로그인안했으면 null로 넘김
		String id = (String) session.getAttribute("user");
		if(id!=null) {
			User user = userService.searchUser(id);
			String allergy = user.getAllergy();
			model.addAttribute("allergies",allergy);			
		}else {
			model.addAttribute("allergies","");
		}
		
		//원산지 표시로 수입제품이 있을경우 '수입산 포함' 이라고 출력, 없으면 '국내산'
		String[] nations = {"가나","가봉","가이아나","감비아","과테말라","그레나다","그리스","기니","기니비사우",//ㄱ
				"나미비아","나우루","나이지리아","남수단","남아프리카","네덜란드","네팔","노르웨이","뉴질랜드","니제르","니카라과","남오세티야",//ㄴ
				"대만","덴마크","도미니카","독일","동티모르",//ㄷ
				"라오스","라이베리아","라트비아","러시아","레바논","레소토","루마니아","룩셈부르크","르완다","리비아","리투아니아","리히텐슈타인",//ㄹ
				"마다가스카르","마셜","말라위","말레이시아","말리","멕시코","모나코","모로코","모리셔스","모리타니","모잠비크","몬테네그로","몰도바","몰디브","몰타","몽골","미국","미얀마","미크로네시아",//ㅁ
				"바누아투","바레인","바베이도스","바티칸","바하마","방글라데시","베냉","베네수엘라","베트남","벨기에","벨라루스","벨리즈","벨라루스","벨리즈","보스니아","보츠와나","볼리비아","부룬디","부르키나파소","부탄","북마케도니아","북키프로스","불가리아","브라질","브루나이",//ㅂ
				"사모아","사우디아라비아","사하라 아랍 민주 공화국","산마리노","상투메 프린시페","세네갈","세르비아","세이셸","세인트루시아","소말리아","수단","스리랑카","스웨덴","스위스","스페인","슬로바키아","슬로베니아","시리아","싱가포르",//ㅅ
				"아랍에미리트","아르헨티나","아이슬란드","아이티","아일랜드","아프가니스탄","알바니아","에스토니아","에콰도르","에티오피아","영국","예멘","오만","오스트레일리아","오스트리아","온두라스","요르단","우간다","우루과이","우즈베키스탄","우크라이나","이라크","이란","이스라엘","이집트","이탈리아","인도","인도네시아","일본",//ㅇ
				"중국","자메이카","잠비아","북한","짐바브웨",//ㅈ
				"체코","칠레",//ㅊ
				"카메룬","카타르","캄보디아","캐나다","콜롬비아","콩고","쿠바","쿠웨이트","크로아티아",//ㅋ
				"타이완","타지키스탄","탄자니아","태국","터키","토고","튀니지",//ㅌ
				"파나마","파라과이","파키스탄","파푸아뉴기니","페루","포르투칼","폴란드","프랑스","피지","핀란드","필리핀",//ㅍ
				"헝가리","호주","홍콩",//ㅎ
				"외국산","수입산"//번외
				};
		
		for (int i = 0; i < Foodlist.size(); i++) {
			Food food = Foodlist.get(i);
			for (int j = 0; j < nations.length; j++) {
				if (kmp(food.getMaterial(), nations[j])) {
					food.setNation("수입산 포함");
					break;
				} else {
					food.setNation("국내산");
				}
			}
		}
		
		
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
