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
	private String bdate;
	private LocalDateTime rdate;
	private Boolean isAdmin;
	private Boolean able;
	
	public User() {}
	
	public User(int userNo, String loginId, String password, String password_q, String password_a, String name,
			String nickname, String email, String phone, String addr, String bdate, LocalDateTime rdate, Boolean isAdmin,
			Boolean able) {
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
		this.isAdmin = isAdmin;
		this.able = able;
	}
	public User(String loginId, String password, String password_q, String password_a, String name, String nickname,
			String email, String phone, String addr, String bdate) {
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
	}
	public User(int userNo, String password, String password_q, String password_a, String name, String nickname,
			String email, String phone, String addr, String bdate) {
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
	public LocalDateTime getRdate() {
		return rdate;
	}
	public Boolean isAdmin() {
		return isAdmin;
	}
	public Boolean isAble() {
		return able;
	}
	
	
}
