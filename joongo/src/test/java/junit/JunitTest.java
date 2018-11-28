package junit;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import User.DTO.User;
import User.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration(locations = "classpath:/config/beans.xml")
public class JunitTest {

	@Autowired
	private ApplicationContext context;

	@Autowired
	private UserService userService;
	
	@Test @Ignore
	public void register() {

		User user = new User("test", "testest", "박진국의 이름은?", "박진국", "박진국", "parkjg20", "parkjg20@naver.com",
				"010-5543-1787", "서울특별시 도봉구", "000623");

		System.out.println("insert 전");
		userService.registerUser(user);
		System.out.println("insert 후");

	}
	
	@Test
	public void delete() {
		userService.deleteUser(6);
		System.out.println("삭제완료");
	}

}
