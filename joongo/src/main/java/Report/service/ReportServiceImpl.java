package Report.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import Report.DAO.ReportDAO;
import Report.DTO.Report;

public class ReportServiceImpl implements ReportService {

	@Autowired
	ReportDAO reportDAO;
	
	@Override
	public void insertReport(Report report) {
		reportDAO.insertReport(report);
	}

	@Override
	public List<Report> selectReportList() {
		return reportDAO.selectReportList();
	}

	@Override
	public List<Report> selectReportListByUser(int userNo) {
		return reportDAO.selectReportListByUser(userNo);
	}

}
