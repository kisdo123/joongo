package Admin.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Product.DTO.Product;
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

	@Override
	public List<Product> selectAllProduct() {
		return adminMapper.selectAllProduct();
	}

	@Override
	public int updateAbleProduct(int proNo, int able) {
		return adminMapper.updateAbleProduct(proNo, able);
	}

	@Override
	public int deleteProduct(int proNo) {
		return adminMapper.deleteProduct(proNo);
	}

}
