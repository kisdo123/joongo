package Review.Service;

import java.util.List;

import Review.DTO.Review;

public interface ReviewService {
	void insertReview(Review review);
	void updateReview(int userNo, Review review);
	void deleteReview(int userNo, int reviewNo);
	List<Review> selectReviewList(int pageNo);
	
}
