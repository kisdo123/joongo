package Favorite.DTO;

import org.apache.ibatis.type.Alias;

import Product.DTO.Product;
import User.DTO.User;

// 장바구니 내용을 저장할 객체
@Alias("Favorite")
public class Favorite {

	private int favoNo;
	private int userNo;
	private int proNo;
	private String wdate; // 장바구니에 추가한 시간

	public Favorite() {
	}


	public Favorite(int favoNo, int userNo, int proNo, String wdate) {
		this.favoNo = favoNo;
		this.wdate = wdate;
		this.userNo = userNo;
		this.proNo = proNo;
	}

	public int getFavoNo() {
		return favoNo;
	}

	public String getWdate() {
		return wdate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getProNo() {
		return proNo;
	}

	public void setProNo(int proNo) {
		this.proNo = proNo;
	}

}
