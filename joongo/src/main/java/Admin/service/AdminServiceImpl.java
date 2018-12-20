package Admin.service;

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
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDAO adminDAO;
	
	@Override
	public List<User> getAllUsers() {
		return adminDAO.selectAllUsers();
	}

	@Override
	public void deleteUserFromDB(int userNo) {
		if(userNo == 0) {
			throw new UserNotFoundException("유저를 찾을 수 없음: 0");
		}
		int res = adminDAO.deleteUserFromDB(userNo);
		if(res == 0) {
			throw new DeleteFailedException("삭제 실패");
		}
	}

	@Override
	public void updateUserAble(int userNo, boolean able) {
		if(userNo == 0) {
			throw new UserNotFoundException("유저를 찾을 수 없음: 0");
		}

		int ableToInt = 0;
		if(able) {
			ableToInt= 1;
		}
		int res = adminDAO.updateUserAble(userNo, ableToInt);
		if(res == 0 ) {
			throw new UpdateFailedException("수정 실패");
		}
	}

	
	@Override
	public List<Report> getAllReports() {
		return adminDAO.selectAllReports();
	}

	@Override
	public void deleteReportFromDB(int reportNo) {
		if(reportNo == 0 ) {
			throw new ReportNotFoundException("신고글을 찾을 수 없음");
		}
		int res = adminDAO.deleteReportFromDB(reportNo);
		if(res == 0 ) {
			throw new DeleteFailedException("삭제 실패");
		}
	}
	//글전체목록 조회
	@Override
	public List<Product> selectAllProduct() {
		return adminDAO.selectAllProduct();
	}

	//able 변경
	@Override
	public void updateAbleProduct(Boolean able, int proNo) {
		if(proNo == 0) {
			throw new ProductNotFoundException("글을 찾을수 없음");
		}
		int ableToInt = 0;
		if(able) {
			ableToInt= 1;
		}

		int res = adminDAO.updateUserAble(ableToInt, proNo);
		if(res == 0 ) {
			throw new UpdateFailedException("수정 실패");
		}
	}
	
	//완전삭제
	@Override
	public void deleteProduct(int proNo) {
		if(proNo == 0) {
			throw new ProductNotFoundException("글을 찾을수 없음");
		}
		int res = adminDAO.deleteProduct(proNo);
		if(res == 0) {
			throw new DeleteFailedException("삭제 실패");
		}
		
	}
	
}
