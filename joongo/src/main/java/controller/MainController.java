package controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Favorite.DTO.Favorite;
import Favorite.service.FavoriteService;
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
	private FavoriteService favoService;

	@Autowired
	private ProductService productService;

	// 메인화면으로 보냄
	@RequestMapping("/main.do")
	public String goMain(Model model) {

		List<Product> products = productService.select5List();
		Map<String, List<Product>> map = productService.select5catNo();

		String[] categories = { "clothes", "appliances", "cosmetics", "instrument", "books", "household", "sports",
				"foods", "etc" };
		String[] titles = { "의류", "가전제품", "화장품", "악기/음향기기", "도서", "생활용품", "스포츠", "식품", "기타" };
		model.addAttribute("categories", categories);
		model.addAttribute("titles", titles);
		model.addAttribute("products", products);
		model.addAttribute("cat5List", map);
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
	public void introduceModify(HttpServletRequest request, @RequestParam("content") String content,
			@RequestParam("userNo") int userNo) throws UnsupportedEncodingException {
		User user = (User) request.getSession().getAttribute("loginUser");
		int loginUserNo = user.getUserNo();

		userService.updateIntroduce(loginUserNo, userNo, content);
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
	public String UpdateUserForm(Model model, @RequestParam("userNo") int userNo) {

		User pageUser = userService.getUserByUserNo(userNo);
		model.addAttribute("pageUser", pageUser);

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

	@RequestMapping("/addFavorite.do")
	@ResponseBody
	public String addFavorite(@RequestParam("userNo") int userNo, @RequestParam("proNo") int proNo) {

		User user = new User();
		user.setUserNo(userNo);

		Product product = new Product();
		product.setProNo(proNo);

		Favorite favorite = new Favorite(user, product);
		favoService.addFavorite(favorite);

		return "";
	}

	@RequestMapping("/deleteFavorite.do")
	@ResponseBody
	public void deleteFavorite(@RequestParam("userNo") int userNo, @RequestParam("proNo") int proNo) {
		favoService.deleteFavorite(userNo, proNo);
	}

	// 검색
	@RequestMapping("/search.do")
	public String getUserList(Model model, @RequestParam("word") String word) {
		List<Product> products = productService.searching(word);
		model.addAttribute("products", products);
		return "productList";
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
	public String categoryList() {
		return "categoryList";
	}

	@RequestMapping("/getCatList.do")
	@ResponseBody
	public Map<String, List<Product>> catList(@RequestParam("catNo") int catNo) {
		List<Product> products = productService.catNoSelect(catNo);
		Map<String, List<Product>> map = new HashMap<String, List<Product>>();
		map.put("products", products);

		return map;
	}

	// 상점 목록보기
	@RequestMapping("/shopList.do")
	@ResponseBody
	public Map<String, List<Product>> selectShop(Model model, @RequestParam int userNo) {
		List<Product> products = productService.selectShop(userNo);
		Map<String, List<Product>> map = new HashMap<String, List<Product>>();
		map.put("products", products);

		return map;
	}

	// 본인글제외 최신글 5개조회
	@RequestMapping("/exceptSelf.do")
	@ResponseBody
	public Map<String, List<Product>> exceptSelf(Model model, @RequestParam int proNo) {
		List<Product> products = productService.selectExceptSelf(proNo);
		Map<String, List<Product>> map = new HashMap<String, List<Product>>();
		map.put("products", products);

		return map;
	}

	// 글 수정화면에 기본값 입력
	@RequestMapping("/productModifyForm.do")
	public String UpdateProduct(HttpServletRequest request, Model model, @RequestParam int catNo) {
		User loginUser = (User) request.getSession().getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		Product product = productService.updateSelect(userNo, catNo);
		model.addAttribute("product", product);
		return "productModify";
	}

	// 글수정
	@RequestMapping("/productModify.do")
	public String UpdateProduct(Model model, HttpServletRequest request, @ModelAttribute Product product) {
		User loginUser = (User) request.getSession().getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		product.setUserNo(userNo);
		productService.update(product);
		return "main";
	}

	// 글 삭제
	@RequestMapping("/delectProduct.do")
	public String delectProduct(Model model, @ModelAttribute Product product) {
		productService.delete(product);
		return "productModify";
	}
}
