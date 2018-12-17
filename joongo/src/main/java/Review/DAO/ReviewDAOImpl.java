package Review.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Review.DTO.Review;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	
	@Autowired
	ReviewMapper reviewMapper;
	
	@Override
	public void insertReview(Review reivew) {
		reviewMapper.insertReview(reivew);
	}

	@Override
	public int deleteReview(int reviewNo) {
		return reviewMapper.deleteReview(reviewNo);
		
	}

	@Override
	public int updateReview(Review review) {
		return reviewMapper.updateReview(review);
	}

	@Override
	public List<Review> selectReviewList(int pageNo) {
		return reviewMapper.selectReviewList(pageNo);
	}

}
