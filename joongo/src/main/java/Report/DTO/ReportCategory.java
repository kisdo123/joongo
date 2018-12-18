package Report.DTO;

import org.apache.ibatis.type.Alias;

@Alias("ReportCategory")
public class ReportCategory {
	private int reportId;
	private String reportType;
	
	public ReportCategory() {}
	
	public ReportCategory(int reportId, String reportType) {
		this.reportId = reportId;
		this.reportType = reportType;
	}
	
	public int getReportId() {
		return reportId;
	}
	public void setReportId(int reportId) {
		this.reportId = reportId;
	}
	public String getReportType() {
		return reportType;
	}
	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
}
