package Admin.service;

import Product.DTO.Image;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Admin.DAO.AdminDAO;
import Product.DTO.Product;
import Report.DTO.Report;
import User.DTO.User;
import exception.DeleteFailedException;
import exception.ProductNotFoundException;
import exception.ReportNotFoundException;
import exception.UpdateFailedException;
import exception.UserNotFoundException;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<User> getAllUsers() {
		return adminDAO.selectAllUsers();
	}

	// 유저를 DB에서 삭제
	@Override
	public void deleteUserFromDB(int userNo) {
		if (userNo == 0) {
			throw new UserNotFoundException("유저를 찾을 수 없음: 0");
		}
		int res = adminDAO.deleteUserFromDB(userNo);
		if (res == 0) {
			throw new DeleteFailedException("삭제 실패");
		}

		System.out.println(userNo);
		// 유저가 삭제되면 관련 정보들을 모두 지움
		adminDAO.deleteAllFavoriteByUser(userNo);
		adminDAO.deleteAllReviewByUser(userNo);
		List<Product> productList = adminDAO.selectAllProductsByUser(userNo);
		for(Product product : productList) {
			deleteProduct(product.getProNo());
		}
		
		
	}

	@Override
	public void updateUserAble(int userNo, boolean able) {
		if (userNo == 0) {
			throw new UserNotFoundException("유저를 찾을 수 없음: 0");
		}

		int ableToInt = 0;
		if (able) {
			ableToInt = 1;
		}
		int res = adminDAO.updateUserAble(userNo, ableToInt);
		if (res == 0) {
			throw new UpdateFailedException("수정 실패");
		}
	}

	@Override
	public List<Report> getAllReports() {
		return adminDAO.selectAllReports();
	}

	@Override
	public void deleteReportFromDB(int reportNo) {
		if (reportNo == 0) {
			throw new ReportNotFoundException("신고글을 찾을 수 없음");
		}
		int res = adminDAO.deleteReportFromDB(reportNo);
		if (res == 0) {
			throw new DeleteFailedException("삭제 실패");
		}
	}

	// 글전체목록 조회
	@Override
	public List<Product> selectAllProduct() {
		return adminDAO.selectAllProduct();
	}

	// able 변경
	@Override
	public void updateAbleProduct(int proNo, boolean able) {
		if (proNo == 0) {
			throw new ProductNotFoundException("글을 찾을수 없음");
		}
		int ableToInt = 0;
		if (able) {
			ableToInt = 1;
		}

		int res = adminDAO.updateAbleProduct(proNo, ableToInt);
		if (res == 0) {
			throw new UpdateFailedException("수정 실패");
		}
	}

	// 완전삭제
	@Override
	public void deleteProduct(int proNo) {
		Product product = adminDAO.selectOneProduct(proNo);
		List<Image> images = adminDAO.selectImagesByProduct(proNo);
		product.setImage(images);
		
		System.out.println("이미지 개수 "+product.getImage().size());
		if (proNo == 0) {
			throw new ProductNotFoundException("글을 찾을수 없음");
		}
		int res = adminDAO.deleteProduct(proNo);
		if (res == 0) {
			throw new DeleteFailedException("게시글 삭제 실패");
		}
		
		if(!product.getImage().isEmpty()) {
			adminDAO.deleteAllImagesByProduct(proNo);
			
			for(Image image : product.getImage()) {
				String path = image.getImagePath();
				File file = new File(
						"C:/Users/KOITT_P/Desktop/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps"
								+ path);
				if (file.exists()) {
					if (file.delete()) {
						System.out.println("파일삭제 성공");
					} else {
						throw new DeleteFailedException("이미지 삭제 실패");
					}
				}
			}
		}
	}
}
