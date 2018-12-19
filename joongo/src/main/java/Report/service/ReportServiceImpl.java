package Report.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Report.DAO.ReportDAO;
import Report.DTO.Report;
import Report.DTO.ReportCategory;

@Service("reportService")
public class ReportServiceImpl implements ReportService {

	@Autowired
	ReportDAO reportDAO;

	@Override
	public void insertReport(Report report) {
		reportDAO.insertReport(report);
	}

	@Override
	public List<Report> selectReportList() {
		List<Report> reports = reportDAO.selectReportList();
		for(Report report : reports) {
			report.setContent(blockHTMLTag(report.getContent()));
		}
		return reports;
	}

	@Override
	public List<Report> selectReportListByUser(int userNo) {
		List<Report> reports = reportDAO.selectReportListByUser(userNo);
		for(Report report : reports) {
			report.setContent(blockHTMLTag(report.getContent()));
		}
		return reports;
	}

	@Override
	public List<ReportCategory> selectReportCategory() {
		return reportDAO.selectReportCategory();
	}

	// &lt; 등의 HTML 특수문자를 치환해줌
	public String blockHTMLTag(String target) {
		target = target.replace("&amp;", "&").replace("&lt;", "<").replace("&gt;", ">").replace("&nbsp;", " ");
		return target;

	}

}
