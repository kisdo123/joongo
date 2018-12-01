package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Product.DTO.Product;
import Product.Service.ProductService;
import User.DTO.User;
import User.service.UserService;

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
		
		System.out.println(user.getLoginId()+", "+ user.getPassword());
		userService.registerUser(user);

		return "redirect:/main.do";
	}
	@RequestMapping("/registerKakao.do")
	public String registerKakao(@ModelAttribute User user) {
		userService.registerUser(user);

		return "redirect:/main.do";
	}
	
	// 회원가입 폼을 요청
	@RequestMapping("/registerForm.do")
	public String registerForm(Model model) {
		model.addAttribute("kakao", false);
		return "signUp";
	}
	
	@RequestMapping("/registerFormKakao.do")
	public String registerFormKakao(Model model, @RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("bdate") String bdate) {
		model.addAttribute("kakao", true);
		model.addAttribute("name", name);
		model.addAttribute("email",email);
		model.addAttribute("bdate", bdate);
		
		return "signUp";
	}
	
	
	
	// 중복검사 결과를 팝업으로 반환
	@RequestMapping("/idDuplication.do")
	public String idDuplicate(@RequestParam("loginId") String loginId) {
		boolean isDuplicate = userService.idDuplicate(loginId);

		if(isDuplicate) {
			return "redirect:/particular/duplicatePopup.jsp?type=id&res=true";			
		}else {
			return "redirect:/particular/duplicatePopup.jsp?type=id&res=false";
		}	
	}
	
	@RequestMapping("/phoneDuplication.do")
	public String phoneDuplicate( @RequestParam("phone") String phone ) {
		boolean isDuplicate = userService.phoneDuplicate(phone);
		
		if(isDuplicate) {
			return "redirect:/particular/duplicatePopup.jsp?type=phone&res=true";			
		}else {
			return "redirect:/particular/duplicatePopup.jsp?type=phone&res=false";
		}
	}
	
	// 로그인
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, @RequestParam("loginId") String loginId, @RequestParam("password") String password) {
		try {
			User user = userService.loginUser(loginId, password);
			request.getSession().setAttribute("loginUser", user);
			return "redirect:/main.do";
		}catch(RuntimeException e){
			e.printStackTrace();
			return null; 	    // 에러페이지 추가하삼
		}
		
	}
	

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request) {

		request.getSession().setAttribute("loginUser", null);
		return "redirect:/main.do";
	}

	// 회원 정보 수정 폼 요청
	@RequestMapping("/updateUserForm.do")
	public String returnUpdateUserForm() {
		return "updateUserForm";
	}
	
	// 회원정보 수정
	@RequestMapping("/updateUser.do")
	public String returnUpdateUser(@ModelAttribute User user) {
		userService.updateUser(user);
		return "updateUserForm";
	}

	// 검색
	@RequestMapping("/search.do")
	public String getUserList(Model model, @RequestParam("word") String word) {
		List<Product> products = productService.searching(word);
		model.addAttribute("products", products);
		return "search";
	}
}
