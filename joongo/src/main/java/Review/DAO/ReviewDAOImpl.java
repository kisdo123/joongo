package Review.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import Review.DTO.Review;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	@Override
	public void insertReview(Review reivew) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int deleteReview(int reviewNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Review> selectReviewList() {
		// TODO Auto-generated method stub
		return null;
	}

}
