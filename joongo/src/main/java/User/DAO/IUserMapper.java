package User.DAO;

import java.util.List;

import User.DTO.User;

@UserQuery
public interface IUserMapper {
	
	void insertUser(User user);
	List<User> selectUserList();
	User selectUserById(String loginId);
	int updateUser(User user);
	int deleteUser(int userNo);
}
