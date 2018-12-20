package Notice.DAO;

import java.util.List;

import Notice.DTO.Notice;
import User.DAO.Query;

@Query
public interface NoticeMapper {
	int write(Notice notice);
	List<Notice> adminlist();
	List<Notice> list();
	Notice viewcontent (int noticeNo);
	int updateable(int noticeNo, int able);
	int updateNotice(Notice notice);
	int deleteNotice(int noticeNo);
}
