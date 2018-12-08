package Review.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import Review.DTO.Review;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Override
	public void insertReview(Review review) {
		// TODO Auto-generated method stub

	}

	@Override
	public int updateReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReview(int reviewNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Review> selectReviewList() {
		// TODO Auto-generated method stub
		return null;
	}

}
