package Notice.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Notice.DAO.NoticeDAO;
import Notice.DTO.Notice;
import exception.NoticeNotFoundException;

@Service("NoticeService")
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
		for (Notice notice : notices) {
			notice.setTitle(blockHTMLTag(notice.getTitle()));
			notice.setContent(blockHTMLTag(notice.getContent()));
		}
		return notices;
	}

	// 일반 목록보기
	@Override
	public List<Notice> list() {
		List<Notice> notices = noticeDAO.list();
		for (Notice notice : notices) {
			notice.setTitle(blockHTMLTag(notice.getTitle()));
			notice.setContent(blockHTMLTag(notice.getContent()));
		}
		return notices;
	}

	// 내용보기
	@Override
	public Notice viewcontent(int noticeNo) {
		Notice notice = noticeDAO.viewcontent(noticeNo);

		notice.setTitle(blockHTMLTag(notice.getTitle()));
		notice.setContent(blockHTMLTag(notice.getContent()));

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
	public void deleteNotice(Notice notice) {
		int res = noticeDAO.deleteNotice(notice);
		if (res == 0) {
			throw new NoticeNotFoundException("삭제실패");
		}
	}

	// &lt; 등의 HTML 특수문자를 치환해줌
	public String blockHTMLTag(String target) {
		target = target.replace("&amp;", "&").replace("&lt;", "<").replace("&gt;", ">").replace("&nbsp;", " ");
		return target;

	}

}
