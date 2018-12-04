package Favorite.DTO;

import org.apache.ibatis.type.Alias;

import Product.DTO.Product;
import User.DTO.User;

// 장바구니 내용을 저장할 객체
@Alias("Favorite")
public class Favorite {
	
	private int favoNo;
	private User user;
	private Product product;
	private String wdate;	// 장바구니에 추가한 시간
	
	public Favorite(User user, Product product) {
		this.user = user;
		this.product = product;
	}

	public Favorite(int favoNo, User user, Product product, String wdate) {
		this.favoNo = favoNo;
		this.user = user;
		this.product = product;
		this.wdate = wdate;
	}
	
	public int getFavoNo() {
		return favoNo;
	}
	public User getUser() {
		return user;
	}
	public Product getProduct() {
		return product;
	}
	public String getWdate() {
		return wdate;
	}
	
}
