package User.DAO;

import java.util.List;

import User.DTO.User;

@Query
public interface IUserMapper {
	
	void insertUser(User user);
	List<User> selectUserList();
	User selectUserById(String loginId);
	User selectUserByPhone(String phone);
	int updateUser(User user);
	int deleteUser(int userNo);
	
}
