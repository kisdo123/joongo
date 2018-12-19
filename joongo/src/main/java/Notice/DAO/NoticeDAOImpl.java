package Notice.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Notice.DTO.Notice;

@Repository("noticeDAO")
public class NoticeDAOImpl implements NoticeDAO{

	@Autowired
	NoticeMapper noticeMapper;
	
	//글쓰기
	@Override
	public int write(Notice notice) {
		return noticeMapper.write(notice);
	}

	//관리자용 목록보기
	@Override
	public List<Notice> adminlist() {
		return noticeMapper.adminlist();
	}

	//공개용 목록보기
	@Override
	public List<Notice> list() {
		return noticeMapper.list();
	}

	//내용보기
	@Override
	public Notice viewcontent(int noticeNo) {
		return noticeMapper.viewcontent(noticeNo);
	}

	//able변경
	@Override
	public int updateable(Notice notice) {
		return noticeMapper.updateable(notice);
	}

	//글수정
	@Override
	public int updateNotice(Notice notice) {
		return noticeMapper.updateNotice(notice);
	}

	//글삭제
	@Override
	public int deleteNotice(Notice notice) {
		return noticeMapper.deleteNotice(notice);
	}

}
