package Admin.DAO;

import java.util.List;

import Product.DTO.Product;
import Report.DTO.Report;
import User.DTO.User;

public interface AdminDAO {
	// 유저 관리
	List<User> selectAllUsers();
	int updateUserAble(int userNo, int able);
	int deleteUserFromDB(int userNo);
	
	// 신고 관리
	List<Report> selectAllReports();
	int deleteReportFromDB(int reportNo);
	
	// 글 관리
	
	public List<Product> selectAllProduct();
	public int updateAbleProduct(int able, int proNo);
	public int deleteProduct(int proNo);
}
