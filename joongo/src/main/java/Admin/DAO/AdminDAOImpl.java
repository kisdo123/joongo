package Admin.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Report.DTO.Report;
import User.DTO.User;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public List<User> selectAllUsers() {
		return adminMapper.selectAllUsers();
	}

	@Override
	public int updateUserAble(int userNo, int able) {
		return adminMapper.updateUserAble(userNo, able);
	}

	@Override
	public int deleteUserFromDB(int userNo) {
		return adminMapper.deleteUserFromDB(userNo);
	}

	@Override
	public List<Report> selectAllReports() {
		return adminMapper.selectAllReports();
	}

	@Override
	public int deleteReportFromDB(int reportNo) {
		return adminMapper.deleteReportFromDB(reportNo);
	}

}
