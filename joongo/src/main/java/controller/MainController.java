package controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Admin.service.AdminService;
import Favorite.DTO.Favorite;
import Favorite.service.FavoriteService;
import Notice.DTO.Notice;
import Notice.Service.NoticeService;
import Product.DTO.Product;
import Product.Service.ProductService;
import Report.DTO.Report;
import Report.DTO.ReportCategory;
import Report.service.ReportService;
import Review.DTO.Review;
import Review.Service.ReviewService;
import User.DTO.User;
import User.service.UserService;
import exception.DeleteFailedException;
import exception.PasswordNotMatchException;
import exception.RegisterFailedException;
import exception.ReportNotFoundException;
import exception.UpdateFailedException;
import exception.UserAlreadyExistException;
import exception.UserNotFoundException;

@Controller
public class MainController {

	@Autowired
	private UserService userService;

	@Autowired
	private NoticeService noticeService;

	@Autowired
	private FavoriteService favoService;

	@Autowired
	private ProductService productService;

	@Autowired
	private ReviewService reviewService;

	@Autowired
	private ReportService reportService;

	@Autowired
	private AdminService adminService;

	@RequestMapping("/notice.do")
	public String notice(Model model) {
		return "notice";
	}

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

	// 결과페이지로 리턴
	@RequestMapping("/loginFilter.do")
	public String finishPage(HttpServletRequest request) {
		request.setAttribute("loginFilter", true);
		return "finishPage";
	}

	// 회원가입을 진행
	@RequestMapping("/register.do")
	public String registerUser(HttpServletRequest req, @ModelAttribute User user) {

		System.out.println(user.getLoginId() + ", " + user.getPassword());

		try {
			userService.registerUser(user);
			return "redirect:/main.do";
		} catch (UserAlreadyExistException e) {
			e.printStackTrace();
			req.setAttribute("userExist", true);
			req.setAttribute("ret", "/joongo/main.do");
		} catch (RegisterFailedException e) {
			e.printStackTrace();
			req.setAttribute("registerFail", true);
			req.setAttribute("ret", "/joongo/main.do");
		}
		return "finishPage";

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
			return "redirect:/main.do";
		} catch (UserNotFoundException e) {
			e.printStackTrace();
			request.setAttribute("userNotFound", true);
			request.setAttribute("ret", "/joongo/main.do");
		} catch (PasswordNotMatchException e) {
			e.printStackTrace();
			request.setAttribute("passwordNotMatch", true);
			request.setAttribute("ret", "/joongo/main.do");
		}
		return "finishPage";
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

	// 마이페이지
	@RequestMapping("/userPage.do")
	public String myPage(HttpServletRequest request, Model model, @RequestParam("userNo") int userNo) {
		try {
			User user = userService.getUserByUserNo(userNo);
			model.addAttribute("pageUser", user);
		} catch (UserNotFoundException e) {
			e.printStackTrace();
			request.setAttribute("userNotFound", true);
			request.setAttribute("ret", "/joongo/main.do");
		}

		// 유저페이지의 대상 유저
		return "userPage";
	}

	// 유저삭제
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
	@RequestMapping(value = "/modifyUserForm.do", method = RequestMethod.GET)
	public String UpdateUserForm(Model model, @RequestParam("userNo") int userNo) {

		User pageUser = userService.getUserByUserNo(userNo);
		model.addAttribute("pageUser", pageUser);

		return "userModify";
	}

	// 회원정보 수정
	@RequestMapping(value = "/modifyUser.do", method = RequestMethod.POST)
	public String UpdateUser(HttpServletRequest request, @ModelAttribute User user) {
		User loginUser = (User) request.getSession().getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		user.setUserNo(userNo);
		try {
			userService.updateUser(user);
		} catch (UserNotFoundException e) {
			e.printStackTrace();
		}
		return "redirect:/userPage.do?userNo=" + userNo;
	}

	// 찜하기
	@RequestMapping("/addFavorite.do")
	@ResponseBody
	public void addFavorite(@RequestParam("userNo") int userNo, @RequestParam("proNo") int proNo) {

		User user = new User();
		user.setUserNo(userNo);

		Product product = new Product();
		product.setProNo(proNo);

		Favorite favorite = new Favorite();
		favorite.setProNo(proNo);
		favorite.setUserNo(userNo);
		favoService.addFavorite(favorite);

	}

	// 찜삭제
	@RequestMapping("/deleteFavorite.do")
	@ResponseBody
	public void deleteFavorite(@RequestParam("userNo") int userNo, @RequestParam("favoNo") int favoNo) {

		favoService.deleteFavorite(userNo, favoNo);
	}

	// 검색
	@RequestMapping("/search.do")
	public String getSearchPage(Model model, @RequestParam("word") String word) {
		model.addAttribute("word", word);
		return "search";
	}

	@RequestMapping("/getSearchProducts.do")
	@ResponseBody
	public Map<String, List<Product>> getSearchList(@RequestParam("word") String word) {
		List<Product> products = productService.searching(word);
		Map<String, List<Product>> map = new HashMap<String, List<Product>>();
		map.put("products", products);
		return map;
	}

	// 글쓰기
	@RequestMapping("/writeProduct.do")
	public String writeProduct(@ModelAttribute Product product) {
		int proNo = productService.insert(product);
		return "redirect:/productInfo.do?proNo=" + proNo;
	}

	// 글쓰기 폼 요청
	@RequestMapping("/writeProductForm.do")
	public String writeProductForm() {

		return "writeProduct";
	}

	// 전체 목록보기
	@RequestMapping("/productList.do")
	public String ProductList(Model model) {
		List<Product> products = productService.totalSelect();
		model.addAttribute("products", products);
		return "productList";
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

	// 찜 목록 보기
	@RequestMapping("/favoriteList.do")
	@ResponseBody
	public Map<String, List<Product>> selectFavoriteByUser(@RequestParam("userNo") int userNo) {
		Map<String, List<Product>> map = new HashMap<String, List<Product>>();

		List<Favorite> favolist = favoService.favoriteListByUser(userNo);

		List<Product> products = new ArrayList<Product>();
		for (Favorite favo : favolist) {
			Product product = productService.oneSelect(favo.getProNo());
			products.add(product);
		}
		map.put("products", products);

		return map;

	}

	// 내용보기 + 연관상품
	@RequestMapping("/productInfo.do")
	public String exceptSelf(HttpServletRequest req, Model model, @RequestParam int proNo) {
		Product product = productService.oneSelect(proNo);
		// product = productService.메소드 (product);
		model.addAttribute("product", product);

		List<Product> products = productService.selectExceptSelf(product);
		model.addAttribute("pro", products);
		User loginUser = (User) req.getSession().getAttribute("loginUser");

		if (loginUser != null) {
			Favorite favorite = favoService.selectFavorite(loginUser.getUserNo(), proNo);
			model.addAttribute("favo", favorite);
		}

		return "productInfo";
	}

	// 글 수정화면에 기본값 입력
	@RequestMapping("/productModifyForm.do")
	public String UpdateProduct(HttpServletRequest request, Model model, @RequestParam int proNo) {
		User loginUser = (User) request.getSession().getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		Product productsel = new Product();
		productsel.setUserNo(userNo);
		productsel.setProNo(proNo);
		Product product = productService.updateSelect(productsel);
		model.addAttribute("product", product);
		return "productModify";
	}

	// 글수정
	@RequestMapping("/productModify.do")
	public String UpdateProduct(Model model, HttpServletRequest request, @ModelAttribute Product product,
			@RequestParam int proNo) {
		User loginUser = (User) request.getSession().getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		product.setUserNo(userNo);
		product.setProNo(proNo);
		productService.update(product);
		return "redirect:/productInfo.do?proNo=" + product.getProNo();
	}

	// 글 삭제
	@RequestMapping("/delectProduct.do")
	public String delectProduct(Model model, @ModelAttribute Product product) {
		productService.delete(product);
		return "productModify";
	}

	// 리뷰 등록
	@RequestMapping("/addReview.do")
	@ResponseBody
	public void addReivew(HttpServletRequest request, @ModelAttribute Review review) {
		User loginUser = (User) request.getSession().getAttribute("loginUser");

		review.setUserNo(loginUser.getUserNo());
		review.setNickname(loginUser.getNickname());

		reviewService.insertReview(review);

	}

	// 리뷰 수정
	@RequestMapping("/updateReview.do")
	@ResponseBody
	public void updateReivew(HttpServletRequest req, @ModelAttribute Review review) {
		User loginUser = (User) req.getSession().getAttribute("loginUser");
		if (loginUser != null) {
			reviewService.updateReview(loginUser.getUserNo(), review);
		}

	}

	// 리뷰 삭제
	@RequestMapping("/deleteReview.do")
	@ResponseBody
	public void deleteReivew(HttpServletRequest req, @RequestParam("reviewNo") int reviewNo) {
		User loginUser = (User) req.getSession().getAttribute("loginUser");
		if (loginUser != null) {
			reviewService.deleteReview(loginUser.getUserNo(), reviewNo);
		}

	}

	// 리뷰 목록반환
	@RequestMapping("/getReviewList.do")
	@ResponseBody
	public Map<String, List<Review>> getReviewList(@RequestParam("pageNo") int pageNo) {
		Map<String, List<Review>> map = new HashMap<String, List<Review>>();
		List<Review> reviewList = reviewService.selectReviewList(pageNo);
		map.put("reviewList", reviewList);

		return map;
	}

	@RequestMapping("/report.do")
	public String report(HttpServletRequest req, @ModelAttribute Report report) {
		User loginUser = (User) req.getSession().getAttribute("loginUser");
		report.setDemandNo(loginUser.getUserNo());
		reportService.insertReport(report);
		return "redirect:/main.do";
	}

	@RequestMapping("/reportForm.do")
	public String reportForm(HttpServletRequest req, @RequestParam("claimeeNo") int claimeeNo) {
		User claimee = userService.getUserByUserNo(claimeeNo);
		List<ReportCategory> reportCategory = reportService.selectReportCategory();
		req.setAttribute("reportList", reportCategory);
		req.setAttribute("claimee", claimee);
		return "report";
	}

	// 관리자 모든 유저보기
	@RequestMapping("/adminGetAllUsers.do")
	public String getAllUsers(Model model) {

		List<User> userList = adminService.getAllUsers();
		model.addAttribute("userList", userList);
		// 페이지 추가
		return "adminUser";
	}

	// 관리자 유저삭제
	@RequestMapping("adminDeleteUser.do")
	@ResponseBody
	public String deleteUser(HttpServletRequest req, @RequestParam("userNo") int userNo) {

		try {
			adminService.deleteUserFromDB(userNo);
			return "success";
		} catch (UserNotFoundException e) {
			e.printStackTrace();
			return "userNotFound";
		} catch (DeleteFailedException e) {
			e.printStackTrace();
			return "deleteFailed";
		}
	}

	// 관리자 유저 수정
	@RequestMapping("/adminUpdateUserAble.do")
	@ResponseBody
	public String updateUserAble(HttpServletRequest req, @RequestParam("userNo") int userNo,
			@RequestParam("able") boolean able) {

		try {
			adminService.updateUserAble(userNo, able);
			return "success";
		} catch (UserNotFoundException e) {
			e.printStackTrace();
			return "userNotFound";
		} catch (UpdateFailedException e) {
			e.printStackTrace();
			return "deleteFailed";
		}
	}

	// 모든 신고목록보기
	@RequestMapping("/adminGetAllReports.do")
	public String getAllReports(Model model) {
		List<Report> reportList = adminService.getAllReports();
		model.addAttribute("reportList", reportList);
		return "adminReport";
	}

	// 신고목록 삭제
	@RequestMapping("/adminDeleteReport.do")
	@ResponseBody
	public String deleteReportFromDB(HttpServletRequest req, @RequestParam("reportNo") int reportNo) {
		try {
			adminService.deleteReportFromDB(reportNo);
			return "success";
		} catch (ReportNotFoundException e) {
			e.printStackTrace();
			return "adminReport";
		} catch (UpdateFailedException e) {
			e.printStackTrace();
			return "adminReport";
		}
	}

	// 공지글쓰기 진행
	@RequestMapping("/writeNotice.do")
	public String writeArticle(HttpServletRequest request, @ModelAttribute Notice notice) {
		User user = (User) request.getSession().getAttribute("loginUser");
		int userNo = user.getUserNo();
		notice.setUserNo(userNo);
		try {
			noticeService.write(notice);
			return "redirect:/adminlist.do";
		} catch (Exception e) {
			e.printStackTrace();
			return "adminNoticeWrite";
		}
	}

	// 공지글쓰기 폼을 요청
	@RequestMapping("/writeNoticeForm.do")
	public String writeNoticeForm(Model model) {
		return "adminNoticeWrite";
	}

	// 관리자용 목록보기
	@RequestMapping("/adminlist.do")
	public String adminlist(Model model) {
		List<Notice> notices = noticeService.adminlist();
		model.addAttribute("notices", notices);
		return "adminNotice";
	}

	// 일반 목록보기
	@RequestMapping("/noticelist.do")
	public String list(Model model) {
		List<Notice> notices = noticeService.list();
		model.addAttribute("notices", notices);
		return "notice";
	}

	// 내용보기
	@RequestMapping("/noticeInfo.do")
	public String viewcontent(Model model, @RequestParam int noticeNo) {
		Notice notice = noticeService.viewcontent(noticeNo);
		model.addAttribute("notice", notice);
		return "noticeContent";
	}

	// 공지 able 변경
	@RequestMapping("/ableUpdate.do")
	public String noticeUpdate(HttpServletRequest request, Model model, @RequestParam("noticeNo") int noticeNo,
			@RequestParam("able") Boolean able) {
		try {
			noticeService.updateable(noticeNo, able);
			return "redirect:/adminlist.do";
		} catch (Exception e) {
			e.printStackTrace();
			return "adminNotice";
		}
	}

	// 공지 글 수정화면에 기본값 입력
	@RequestMapping("/noticeUpdateForm.do")
	public String noticeUpdateForm(Model model, @RequestParam int noticeNo) {
		Notice notice = noticeService.viewcontent(noticeNo);
		model.addAttribute("notice", notice);
		return "adminNoticeModify";
	}

	// 공지글수정
	@RequestMapping("/noticeUpdate.do")
	public String noticeUpdate(Model model, @ModelAttribute Notice notice) {
		try {
			noticeService.updateNotice(notice);
			return "redirect:/adminlist.do";
		} catch (Exception e) {
			e.printStackTrace();
			return "adminNoticeModify";
		}
	}

	// 공지글삭제
	@RequestMapping("/noticeDelete.do")
	public String noticeDelete(@RequestParam("noticeNo") int noticeNo) {
		try {
			noticeService.deleteNotice(noticeNo);
			return "redirect:/adminlist.do";
		} catch (Exception e) {
			e.printStackTrace();
			return "main";
		}
	}

	// 관리자 글 전체보기
	@RequestMapping("/adminAllProducts.do")
	public String adminAllProducts(Model model) {
		List<Product> products = adminService.selectAllProduct();
		model.addAttribute("products", products);
		return "adminProduct";
	}

	// 글 able 변경
	@RequestMapping("/updateableProduct.do")
	@ResponseBody
	public String updateableProduct(HttpServletRequest req, @RequestParam("proNo") int proNo,
			@RequestParam("able") boolean able) {
		try {
			adminService.updateAbleProduct(proNo, able);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "adminProduct";
		}
	}

	// 글 완전삭제
	@RequestMapping("adminDeleteProduct.do")
	public String adminDeleteProduct(HttpServletRequest req, @RequestParam("proNo") int proNo) {
		try {
			adminService.deleteProduct(proNo);
			return "redirect:/adminAllProducts.do";
		} catch (Exception e) {
			e.printStackTrace();
			return "adminProduct";
		}
	}

}
