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
		user.setKakao(false);
		userService.registerUser(user);

		return "redirect:/main.do";
	}
	@RequestMapping("/registerKakao.do")
	public String registerKakao(@ModelAttribute User user) {
		user.setKakao(true);
		userService.registerUser(user);

		return "redirect:/main.do";
	}
	
	// 회원가입 폼을 요청
	@RequestMapping("/registerForm.do")
	public String registerForm() {
		
		return "registerForm";
	}
	@RequestMapping("/registerFormKakao.do")
	public String registerFormKakao(@RequestParam("") String name) {

		return "redirect:/main.do";
	}
	
	
	
	// 중복검사 결과를 팝업으로 반환
	@RequestMapping("/idDuplication.do")
	public String idDuplicated(@RequestParam("loginId") String loginId) {
		if(userService.idDuplicate(loginId)) {
			return "redirect:/particular/duplicatePopup.jsp?type=id&res=true";			
		}else {
			return "redirect:/particular/duplicatePopup.jsp?type=id&res=false";
		}	
	}
	
	@RequestMapping("/phoneDuplication.do")
	public String phoneDuplicated(@RequestParam("phone1") String phone1, @RequestParam("phone2") String phone2, @RequestParam("phone3") String phone3 ) {
		String phone = phone1+"-"+phone2+"-"+phone3;
		
		if(userService.phoneDuplicate(phone)) {
			return "redirect:/particular/duplicatePopup.jsp?type=id&res=true";			
		}else {
			return "redirect:/particular/duplicatePopup.jsp?type=id&res=false";
		}
	}
	
	// 로그인
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, @RequestParam("loginId") String loginId) {
		User user = userService.loginUser(loginId);

		request.getSession().setAttribute("loginUser", user);
		return "redirect:/main.do";
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
