package Product.DTO;

import java.time.LocalDateTime;

import org.apache.ibatis.type.Alias;

@Alias("Product")
public class Product {

	private int proNo;
	private String title;
	private int catNo;
	private String catName;
	private int userNo;
	private String nickname;
	private String condit;
	private String price;
	private String content;
	private String tags;
	private LocalDateTime wdate;
	private Boolean able;

	public Product() {
	}


	public Product(int proNo, String title, int catNo, String catName, int userNo, String nickname, String condit,
			String price, String content, String tags, LocalDateTime wdate,
			Boolean able) {
		this.proNo = proNo;
		this.title = title;
		this.catNo = catNo;
		this.catName = catName;
		this.userNo = userNo;
		this.nickname = nickname;
		this.condit = condit;
		this.price = price;
		this.content = content;
		this.tags = tags;
		this.wdate = wdate;
		this.able = able;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public int getProNo() {
		return proNo;
	}

	public void setProNo(int proNo) {
		this.proNo = proNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getCatNo() {
		return catNo;
	}

	public void setCatNo(int catNo) {
		this.catNo = catNo;
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

	public String getCondit() {
		return condit;
	}

	public void setCondit(String condit) {
		this.condit = condit;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public LocalDateTime getWdate() {
		return wdate;
	}

	public void setWdate(LocalDateTime wdate) {
		this.wdate = wdate;
	}

	public Boolean getAble() {
		return able;
	}

	public void setAble(Boolean able) {
		this.able = able;
	}

}