package User.DAO;

import java.util.List;

import User.DTO.User;

public interface UserDAO {
	public int insert(User user);
	
	public int delete(int userNo);
	
	public int update(User user);
	
	public User selectById(String loginId);
	
	public User registerCheck(String loginId);
	
	public User selectByUserNo(int userNo);
	
	public List<User> selectList();
	
	public User selectByPhone(String phone);

	public int updateIntroduce(User user);
}


