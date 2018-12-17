package Review.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Review.DAO.ReviewDAO;
import Review.DTO.Review;
import exception.UserNotFoundException;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDAO reviewDAO;
	
	@Override
	public void insertReview(Review review) {
		reviewDAO.insertReview(review);
	}

	@Override
	public void updateReview(int userNo, Review review) {

		if(userNo == 0) {
			throw new UserNotFoundException("유저를 찾을 수 없음");
		}
		int res = reviewDAO.updateReview(review);

	}

	@Override
	public void deleteReview(int userNo, int reviewNo) {
		if(userNo == 0) {
			throw new UserNotFoundException("유저를 찾을 수 없음");
		}
		reviewDAO.deleteReview(reviewNo);
	}

	@Override
	public List<Review> selectReviewList(int pageNo) {

		return reviewDAO.selectReviewList(pageNo);
	}

}
