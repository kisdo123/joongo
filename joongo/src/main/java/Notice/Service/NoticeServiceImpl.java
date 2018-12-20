package Notice.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Notice.DAO.NoticeDAO;
import Notice.DTO.Notice;
import exception.NoticeNotFoundException;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeDAO noticeDAO;

	// 글쓰기
	@Override
	public void write(Notice notice) {
		int res = noticeDAO.write(notice);
		if (res == 0) {
			throw new NoticeNotFoundException("글쓰기 실패");
		}
	}

	// 관리자용 목록보기
	@Override
	public List<Notice> adminlist() {
		List<Notice> notices = noticeDAO.adminlist();		
		return notices;
	}

	// 일반 목록보기
	@Override
	public List<Notice> list() {
		List<Notice> notices = noticeDAO.list();
		return notices;
	}

	// 내용보기
	@Override
	public Notice viewcontent(int noticeNo) {
		Notice notice = noticeDAO.viewcontent(noticeNo);
		return notice;
	}

	// able 변경
	@Override
	public void updateable(Notice notice) {
		int res = noticeDAO.updateable(notice);
		if (res == 0) {
			throw new NoticeNotFoundException("변경실패");
		}
	}

	// 글수정
	@Override
	public void updateNotice(Notice notice) {
		int res = noticeDAO.updateNotice(notice);
		if (res == 0) {
			throw new NoticeNotFoundException("수정실패");
		}
	}

	// 글삭제
	@Override
	public void deleteNotice(int noticeNo) {
		int res = noticeDAO.deleteNotice(noticeNo);
		if (res == 0) {
			throw new NoticeNotFoundException("삭제실패");
		}
	}

}
