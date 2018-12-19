package Review.DTO;

import org.apache.ibatis.type.Alias;

@Alias("Review")
public class Review {
	private int reviewNo;
	private int pageNo;
	private int userNo;
	private String nickname;
	private String content;
	private String wdate;
	
	public Review() {}
	
	public Review(int reviewNo, int pageNo, int userNo, String nickname, String content, String wdate) {
		this.pageNo = pageNo;
		this.reviewNo = reviewNo;
		this.userNo = userNo;
		this.nickname = nickname;
		this.content = content;
		this.wdate = wdate;
	}
	
	public Review(int pageNo, int userNo, String nickname, String content, String wdate) {
		this.pageNo = pageNo;
		this.userNo = userNo;
		this.nickname = nickname;
		this.content = content;
	}
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	
}
