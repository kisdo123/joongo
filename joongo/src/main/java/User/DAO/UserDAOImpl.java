package User.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import User.DTO.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private IUserMapper userMapper;
	
	@Override
	public int insert(User user) {
		return userMapper.insertUser(user);
	}

	@Override
	public int delete(int userNo) {
		return userMapper.deleteUser(userNo);
	}

	@Override
	public int update(User user) {
		return userMapper.updateUser(user);
	}

	@Override
	public User selectById(String loginId) {
		return userMapper.selectUserById(loginId);
	}

	@Override
	public List<User> selectList() {
		return userMapper.selectUserList();
	}

	@Override
	public User selectByPhone(String phone) {
		return userMapper.selectUserByPhone(phone);
	}

	@Override
	public User selectByUserNo(int userNo) {
		return userMapper.selectUserByUserNo(userNo);
	}

	@Override
	public int updateIntroduce(User user) {
		return userMapper.updateIntroduce(user);
	}


}
