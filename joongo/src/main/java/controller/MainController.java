package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.annotation.RequestScope;

import User.DTO.User;
import User.service.UserService;

@Controller
public class MainController {
	

	@Autowired
	private UserService userService;
	
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
}
