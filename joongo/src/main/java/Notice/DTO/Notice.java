package Notice.DTO;

import org.apache.ibatis.type.Alias;

@Alias("Notice")
public class Notice {

	private int noticeNo;
	private String title;
	private int userNo;
	private String content;
	private String wdate;
	private Boolean able;

	public Notice() {
	}

	public Notice(int noticeNo, String title, int userNo, String content, String wdate, Boolean able) {
		this.noticeNo = noticeNo;
		this.title = title;
		this.userNo = userNo;
		this.content = content;
		this.wdate = wdate;
		this.able = able;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
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

	public Boolean getAble() {
		return able;
	}

	public void setAble(Boolean able) {
		this.able = able;
	};

}
