package Report.DAO;

import java.util.List;

import Report.DTO.Report;
import Report.DTO.ReportCategory;

public interface ReportDAO {
	void insertReport(Report report);
	List<Report> selectReportList();
	List<Report> selectReportListByUser(int userNo);
	List<ReportCategory> selectReportCategory();
}
