package Report.service;

import java.util.List;

import Report.DTO.Report;
import Report.DTO.ReportCategory;

public interface ReportService {
	void insertReport(Report report);
	List<Report> selectReportList();
	List<Report> selectReportListByUser(int userNo);
	List<ReportCategory> selectReportCategory();
}
