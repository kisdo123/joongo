package Review.DAO;

import java.util.List;

import Review.DTO.Review;
import User.DAO.Query;

@Query
public interface ReviewMapper {
	void insertReview(Review reivew);
	int deleteReview(int reviewNo);
	int updateReview(Review review);
	List<Review> selectReviewList(int pageNo);
}
