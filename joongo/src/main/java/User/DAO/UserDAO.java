package User.DAO;

import java.util.List;

import User.DTO.User;

public interface UserDAO {
	public void insert(User user);
	
	public void delete(int userNo);
	
	public void update(User user);
	
	public User selectById(String loginId);
	
	public List<User> selectList();

}


