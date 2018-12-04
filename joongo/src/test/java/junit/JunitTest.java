package junit;

import java.time.LocalDateTime;
import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import Product.DTO.Image;
import Product.DTO.Product;
import Product.Service.ProductService;
import User.DTO.User;
import User.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration(locations = "classpath:/config/beans.xml")
public class JunitTest {

	@Autowired
	private ApplicationContext context;

	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	@Test @Ignore
	public void register() {
//
//		User user = new User("test123", "testest123", "박진국의 이름은?123", "박진국123", "박진국123", "parkjg20123", "parkjg20123@naver.com",
//				"010-5663-1787", "서울특별시 도봉공", "000123");
//
//		System.out.println("insert 전");
//		userService.registerUser(user);
//		System.out.println("insert 후");
		
		List<User> list = userService.searchUserList();
		System.out.println(list.toString());

	}
	
	@Test @Ignore
	public void delete() {
		userService.deleteUser(6);
		System.out.println("삭제완료");
	}
	
	@Test
	public void serch() {
		Product product = new Product(100, "title", 3, "음악", 3, "nickname", "판매중", "30000", "content", "tags", LocalDateTime.now() , true);
		Image image = new Image(100, 3, "imagePath");
		productService.insert(product, image);
		
	}

}
