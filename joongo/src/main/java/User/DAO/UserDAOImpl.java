package User.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import User.DTO.User;
import User.DAO.IUserMapper;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private IUserMapper userMapper;
	
	@Override
	public void insert(User user) {
		userMapper.insertUser(user);
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
		// TODO Auto-generated method stub
		return null;
	}


}
