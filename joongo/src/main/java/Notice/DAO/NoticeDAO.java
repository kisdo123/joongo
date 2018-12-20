package Notice.DAO;

import java.util.List;

import Notice.DTO.Notice;

public interface NoticeDAO {
	public int write(Notice notice);
	public List<Notice> adminlist();
	public List<Notice> list();
	public Notice viewcontent (int noticeNo);
	public int updateable(Notice notice);
	public int updateNotice(Notice notice);
	public int deleteNotice(int noticeNo);
}
