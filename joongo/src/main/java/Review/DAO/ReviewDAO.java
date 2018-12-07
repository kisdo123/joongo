package Review.DAO;

import java.util.List;

import Review.DTO.Review;

public interface ReviewDAO {
	void insertReview(Review reivew);
	int deleteReview(int reviewNo);
	int updateReview(Review review);
	List<Review> selectReviewList();
	
	
}
