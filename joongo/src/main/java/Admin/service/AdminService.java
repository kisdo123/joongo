package Admin.service;

import java.util.List;

import Report.DTO.Report;
import User.DTO.User;

public interface AdminService {
	// 유저 관리
	List<User> getAllUsers();
	void deleteUserFromDB(int userNo);
	void updateUserAble(int userNo, boolean able);
	
	// 신고 관리
	List<Report> getAllReports();
	void deleteReportFromDB(int reportNo);
	
	// 글 관리
	
	// 공지 관리
}
