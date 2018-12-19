package User.DTO;

import java.time.LocalDateTime;

import org.apache.ibatis.type.Alias;

@Alias("User")
public class User {
	private int userNo;
	private String loginId;
	private String password;
	private String password_q;
	private String password_a;
	private String name;
	private String nickname;
	private String email;
	private String phone;
	private String addr;
	private String introduce;
	private String bdate;
	private String rdate;
	private Boolean admin;
	private Boolean able;
	private Boolean kakao;
	
	public User() {}
	
	public User(int userNo, String loginId, String password, String password_q, String password_a, String name,
			String nickname, String email, String phone, String addr, String bdate, String rdate, Boolean admin,
			Boolean able, Boolean kakao) {
		this.userNo = userNo;
		this.loginId = loginId;
		this.password = password;
		this.password_q = password_q;
		this.password_a = password_a;
		this.name = name;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
		this.addr = addr;
		this.bdate = bdate;
		this.rdate = rdate;
		this.admin = admin;
		this.able = able;
		this.kakao = kakao;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setPassword_q(String password_q) {
		this.password_q = password_q;
	}

	public void setPassword_a(String password_a) {
		this.password_a = password_a;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public void setIsAdmin(Boolean admin) {
		this.admin = admin;
	}

	public void setAble(Boolean able) {
		this.able = able;
	}

	public User(String loginId, String password, String password_q, String password_a, String name, String nickname,
			String email, String phone, String addr, String bdate, Boolean kakao) {
		this.loginId = loginId;
		this.password = password;
		this.password_q = password_q;
		this.password_a = password_a;
		this.name = name;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
		this.addr = addr;
		this.bdate = bdate;
		this.kakao = kakao;
	}
	public User(int userNo, String password, String password_q, String password_a, String name, String nickname,
			String email, String phone, String addr, String bdate, Boolean kakao) {
		this.userNo = userNo;
		this.password = password;
		this.password_q = password_q;
		this.password_a = password_a;
		this.name = name;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
		this.addr = addr;
		this.bdate = bdate;
		this.kakao = kakao;
	}
	public Boolean getKakao() {
		return kakao;
	}

	public void setKakao(Boolean kakao) {
		this.kakao = kakao;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	public String getPhone() {
		return phone;
	}

	public int getUserNo() {
		return userNo;
	}
	public String getLoginId() {
		return loginId;
	}
	public String getPassword() {
		return password;
	}
	public String getPassword_q() {
		return password_q;
	}
	public String getPassword_a() {
		return password_a;
	}
	public String getName() {
		return name;
	}
	public String getNickname() {
		return nickname;
	}
	public String getEmail() {
		return email;
	}
	public String getAddr() {
		return addr;
	}
	public String getBdate() {
		return bdate;
	}
	public String getRdate() {
		return rdate;
	}
	public Boolean getAdmin() {
		return admin;
	}
	public Boolean isAble() {
		return able;
	}
	
	
}
