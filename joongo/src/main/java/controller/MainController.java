package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import User.DTO.User;
import User.service.UserService;

@Controller
public class MainController {
	

	@Autowired
	private UserService userService;
	
	/*@Autowired
	private ProductService productService;*/
	
	//메인화면으로 보냄
	@RequestMapping("/main.do")
	public String goMain() {	
		return "main";
	}
	
	@RequestMapping("/register.do")
	public String registerUser(@ModelAttribute User user) {
		userService.registerUser(user);
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("/idDuplication.do")
	public String idDuplicated(@RequestParam("loginId") String loginId) {
		if(userService.idDuplicate(loginId)) {
			return "redirect:/particular/popup.jsp?type=id&res=true";			
		}else {
			return "redirect:/particular/popup.jsp?type=id&res=false";
		}
		
		
	}
	
	@RequestMapping("/phoneDuplication.do")
	public String phoneDuplicated(@RequestParam("phone1") String phone1, @RequestParam("phone2") String phone2, @RequestParam("phone3") String phone3 ) {
		String phone = phone1+"-"+phone2+"-"+phone3;
		
		if(userService.phoneDuplicate(phone)) {
			return "redirect:/particular/popup.jsp?type=id&res=true";			
		}else {
			return "redirect:/particular/popup.jsp?type=id&res=false";
		}
	}
	
	
	
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, @RequestParam("loginId") String loginId) {
		User user =  userService.loginUser(loginId);
		
		request.getSession().setAttribute("loginUser", user);
		return "redirect:/main.do";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		
		request.getSession().setAttribute("loginUser", null);
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("/updateUserForm.do")
	public String returnUpdateUserForm() {
		return "updateUserForm";
	}
	
	@RequestMapping("/updateUser.do")
	public String returnUpdateUser(@ModelAttribute User user) {
		userService.updateUser(user);
		
		return "updateUserForm";
	}
	
/*	@RequestMapping("/serch.do")
	public String getUserList(Model model, @RequestParam("word") String word) {
		List<Product> products = productService.searching(word);
		model.addAttribute("products", products);
		return "serch";
	}*/
}
