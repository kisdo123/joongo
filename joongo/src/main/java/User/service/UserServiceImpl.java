package User.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import User.DAO.UserDAO;
import User.DTO.User;
import exception.UserNotFoundException;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO; 
	
	@Override
	public void registerUser(User user) {
		userDAO.insert(user);
	}

	@Override
	public void updateUser(User user) {
		int res = userDAO.update(user);
		if(res == 0) {
			throw new UserNotFoundException("수정 실패: 유저를 찾을 수 없음");
		}
	}

	@Override
	public void deleteUser(int userNo) {
		int res = userDAO.delete(userNo);
		if(res == 0) {
			throw new UserNotFoundException("삭제 실패: 유저를 찾을 수 없음");
		}
	}

	@Override
	public User loginUser(String loginId) {
		User user = userDAO.selectById(loginId);
		if(user == null) {
			throw new UserNotFoundException("유저를 찾을 수 없음");
		}
		
		return user;
	}

	@Override
	public List<User> searchUserList() {
		return userDAO.selectList();
	}

	
}
