package Notice.Service;

import java.util.List;

import Notice.DTO.Notice;

public interface NoticeService {
	public void write(Notice notice);
	public List<Notice> adminlist();
	public List<Notice> list();
	public Notice viewcontent (int noticeNo);
	public void updateable(Notice notice);
	public void updateNotice(Notice notice);
	public void deleteNotice(int noticeNo);
}
