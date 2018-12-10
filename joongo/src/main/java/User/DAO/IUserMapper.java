package User.DAO;

import java.util.List;

import User.DTO.User;

@Query
public interface IUserMapper {
	
	int insertUser(User user);
	List<User> selectUserList();
	User selectUserById(String loginId);
	User selectUserByPhone(String phone);
	User selectUserByUserNo(int userNo);
	int updateUser(User user);
	int deleteUser(int userNo);
	int updateIntroduce(User user);
	
}
