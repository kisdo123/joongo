package User.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import User.DAO.UserDAO;
import User.DTO.User;
import exception.IntroduceUpdateException;
import exception.PasswordNotMatchException;
import exception.RegisterFailedException;
import exception.UserAlreadyExistException;
import exception.UserNotFoundException;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	public void registerUser(User user) {
		User testUser = userDAO.selectById(user.getLoginId());
		if (testUser != null) {
			throw new UserAlreadyExistException("이미 존재하는 유저");
		}

		int res = userDAO.insert(user);
		if (res == 0) {
			throw new RegisterFailedException("회원가입 실패");
		}
	}

	@Override
	public void updateUser(User user) {

		int res = userDAO.update(user);
		if (res == 0) {
			throw new UserNotFoundException("수정 실패: 유저를 찾을 수 없음");
		}
	}

	@Override
	public void deleteUser(int userNo) {
		if (userNo == 0) {
			throw new UserNotFoundException("유저를 찾을 수 없음 : userNo가 0 입니다.");
		}
		int res = userDAO.delete(userNo);
		if (res == 0) {
			throw new UserNotFoundException("삭제 실패: 유저를 찾을 수 없음");
		}
	}

	@Override
	public User loginUser(String loginId, String password) throws UserNotFoundException, PasswordNotMatchException {
		User user = userDAO.selectById(loginId);

		if (user == null) {
			throw new UserNotFoundException("유저를 찾을 수 없음");
		}

		if (!user.getPassword().equals(password)) {
			throw new PasswordNotMatchException("비밀번호 불일치");
		}

		return user;
	}

	@Override
	public List<User> searchUserList() {
		return userDAO.selectList();
	}

	@Override
	public Boolean idDuplicate(String loginId) {
		User user = userDAO.registerCheck(loginId);
		if (user == null) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public Boolean phoneDuplicate(String phone) {
		User user = userDAO.selectByPhone(phone);
		if (user == null) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public User getUserByUserNo(int userNo) {
		User user = userDAO.selectByUserNo(userNo);
		if (user == null) {
			throw new UserNotFoundException("유저를 찾을 수 없음");
		}

		user.setRdate(user.getRdate().substring(0, 10));
		user.setBdate(user.getBdate().substring(0, 10));

		return user;
	}

	@Override
	public void updateIntroduce(int loginUserNo, int userNo, String introduce) {

		if (userNo == 0) {
			throw new UserNotFoundException("유저를 찾을 수 없음");
		}
		if (loginUserNo != userNo) {
			throw new IntroduceUpdateException("권한 없음");
		}

		User user = new User();
		user.setUserNo(userNo);
		user.setIntroduce(introduce);

		userDAO.updateIntroduce(user);

	}


}
