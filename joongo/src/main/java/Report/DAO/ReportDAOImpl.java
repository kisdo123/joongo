package Report.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Report.DTO.Report;
import Report.DTO.ReportCategory;

@Repository("reportDAO")
public class ReportDAOImpl implements ReportDAO {

	@Autowired
	ReportMapper reportMapper;
	
	@Override
	public void insertReport(Report report) {
		reportMapper.insertReport(report);
	}

	@Override
	public List<Report> selectReportList() {
		return reportMapper.selectReportList();
		
	}

	@Override
	public List<Report> selectReportListByUser(int userNo) {
		return reportMapper.selectReportListByUser(userNo);
	}

	@Override
	public List<ReportCategory> selectReportCategory() {
		return reportMapper.selectReportCategory();
	}

}
