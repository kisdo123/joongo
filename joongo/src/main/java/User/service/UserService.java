package User.service;

import java.util.List;

import User.DTO.User;

public interface UserService {
	
	public void registerUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(int userNo);
	
	public User loginUser(String loginId, String password);
	
	public List<User> searchUserList();

	public Boolean idDuplicate(String loginId);
	
	public Boolean phoneDuplicate(String phone);
}
