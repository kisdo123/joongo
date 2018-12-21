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
		return reports;
	}

	@Override
	public List<Report> selectReportListByUser(int userNo) {
		List<Report> reports = reportDAO.selectReportListByUser(userNo);
		return reports;
	}

	@Override
	public List<ReportCategory> selectReportCategory() {
		return reportDAO.selectReportCategory();
	}


}
