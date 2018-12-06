package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Product.DTO.Product;
import Product.Service.ProductService;
import User.DTO.User;
import User.service.UserService;
import exception.UserNotFoundException;

@Controller
public class MainController {

	@Autowired
	private UserService userService;

	@Autowired
	private ProductService productService;

	// 메인화면으로 보냄
	@RequestMapping("/main.do")
	public String goMain() {
		return "main";
	}

	// 회원가입을 진행
	@RequestMapping("/register.do")
	public String registerUser(@ModelAttribute User user) {

		System.out.println(user.getLoginId() + ", " + user.getPassword());
		userService.registerUser(user);

		return "redirect:/main.do";
	}

	// 회원가입 폼을 요청
	@RequestMapping("/registerForm.do")
	public String registerForm(Model model) {
		return "signUp";
	}

	@RequestMapping("/registerFormKakao.do")
	public String registerFormKakao(Model model, @RequestParam("loginId") String loginId,
			@RequestParam("nickname") String nickname, @RequestParam("email") String email) {
		model.addAttribute("loginId", loginId);
		model.addAttribute("password", loginId);
		model.addAttribute("name", nickname);
		model.addAttribute("email", email);

		return "kakaoSignUp";
	}
	
	// 중복검사 결과를 팝업으로 반환
	@RequestMapping("/idDuplication.do")
	@ResponseBody
	public String idDuplicate(@RequestParam("loginId") String loginId) {

		Boolean res = userService.idDuplicate(loginId);
		String result = "";
		if (res) {
			result = "true";
		} else {
			result = "false";
		}

		return result;
	}

	@RequestMapping("/phoneDuplication.do")
	@ResponseBody
	public String phoneDuplicate(@RequestParam("phone") String phone) {
		Boolean res = userService.phoneDuplicate(phone);
		String result = "";
		if (res) {
			result = "true";
		} else {
			result = "false";
		}

		return result;
	}

	// 로그인
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, @RequestParam("loginId") String loginId,
			@RequestParam("password") String password) {
		try {
			User user = userService.loginUser(loginId, password);
			user.setBdate(user.getBdate().substring(0, 10));
			request.getSession().setAttribute("loginUser", user);
			System.out.println("로그인 성공, 유저:" + user.getName());
		} catch (RuntimeException e) {
			e.printStackTrace();
			return null; // 에러페이지 추가하삼
		}
		return "redirect:/main.do";
	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		request.getSession().setAttribute("loginUser", null);
		return "redirect:/main.do";
	}

	@RequestMapping("/introduceModify.do")
	@ResponseBody
	public String introduceModify(HttpServletRequest request, @RequestParam("content") String content,
			@RequestParam("userNo") int userNo) {
		User user = (User) request.getSession().getAttribute("loginUser");
		int loginUserNo = user.getUserNo();

		userService.updateIntroduce(loginUserNo, userNo, content);

		return content;
	}

	@RequestMapping("/userPage.do")
	public String myPage(Model model, @RequestParam("userNo") int userNo) {

		try {
			User user = userService.getUserByUserNo(userNo);
			model.addAttribute("pageUser", user);
		} catch (UserNotFoundException e) {
			e.printStackTrace();
		}

		// 유저페이지의 대상 유저
		return "userPage";
	}

	@RequestMapping("/deleteUser.do")
	public String deleteUser(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("loginUser");
		int userNo = user.getUserNo();

		try {
			userService.deleteUser(userNo);
			request.getSession().setAttribute("loginUser", null);
		} catch (UserNotFoundException e) {
			e.printStackTrace();
		}
		return "redirect:/main.do";
	}

	// 회원 정보 수정 폼 요청
	@RequestMapping("/modifyUserForm.do")
	public String UpdateUserForm() {
		return "userModify";
	}

	// 회원정보 수정
	@RequestMapping("/modifyUser.do")
	public String UpdateUser(HttpServletRequest request, @ModelAttribute User user) {
		User loginUser = (User) request.getSession().getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		user.setUserNo(userNo);
		try {
			userService.updateUser(user);
		} catch (UserNotFoundException e) {
			e.printStackTrace();
		}
		return "myPage";
	}

	// 검색
	@RequestMapping("/search.do")
	public String getUserList(Model model, @RequestParam("word") String word) {
		List<Product> products = productService.searching(word);
		model.addAttribute("products", products);
		return "search";
	}

	// 글쓰기
	@RequestMapping("/writeProduct.do")
	public String writeProduct(@ModelAttribute Product product) {
		productService.insert(product);
		return "writefinish";
	}

	// 전체 목록보기
	@RequestMapping("/productList.do")
	public String ProductList(Model model) {
		List<Product> products = productService.totalSelect();
		model.addAttribute("products", products);
		return "productList";
	}

	// 내용보기
	@RequestMapping("/productInfo.do")
	public ModelAndView getUserInfo(@RequestParam int proNo) {
		Product product = productService.oneSelect(proNo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("product", product);
		mv.setViewName("productInfo");
		return mv;
	}

	// 카테고리별 목록보기
	@RequestMapping("/catList.do")
	public String catList(Model model, @RequestParam int catNo) {
		List<Product> products = productService.catNoSelect(catNo);
		model.addAttribute("products", products);
		return "catList";
	}

	// 전체 5개 목록보기
	@RequestMapping("/product5List.do")
	@ResponseBody
	public String Product5List(Model model) {
		List<Product> products = productService.totalSelect();
		model.addAttribute("products", products);
		return "productList";
	}

	// 카테고리별 5개 목록보기
	@RequestMapping("/cat5List.do")
	@ResponseBody
	public String cat5List(Model model, @RequestParam int catNo) {
		List<Product> products = productService.catNoSelect(catNo);
		model.addAttribute("products", products);
		return "catList";
	}

}
