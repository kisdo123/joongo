package Admin.DAO;

import java.util.List;

import Product.DTO.Product;
import Report.DTO.Report;
import User.DAO.Query;
import User.DTO.User;

@Query
public interface AdminMapper {
	// 유저 관리
	List<User> selectAllUsers();
	int updateUserAble(int userNo, int able);
	int deleteUserFromDB(int userNo);
	// 관련 후기 모두 삭제
	void deleteAllReviewByUser(int userNo);
	// 관련 장바구니 모두 삭제
	void deleteAllFavoriteByUser(int userNo);
	

	// 신고 관리
	List<Report> selectAllReports();
	int deleteReportFromDB(int reportNo);

	// 글 관리
	Product selectOneProduct(int proNo);
	List<Product> selectAllProduct();
	int updateAbleProduct(int proNo, int able);
	int deleteProduct(int proNo);
	void deleteAllImagesByProduct(int proNo);
	void deleteAllFavoriteByProduct(int proNo);
	// 유저가 쓴 모든 글 보기
	List<Product> selectAllProductsByUser(int userNo);
}
