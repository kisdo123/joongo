package Review.Service;

import java.util.List;

import Review.DTO.Review;

public interface ReviewService {
	void insertReview(Review review);
	int updateReview(Review review);
	int deleteReview(int reviewNo);
	List<Review> selectReviewList();
	
}
