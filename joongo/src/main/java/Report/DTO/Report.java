package Report.DTO;

import org.apache.ibatis.type.Alias;

@Alias("Report")
public class Report {
	private int reportNo;
	private int demandNo; // 신고인
	private int claimeeNo; //피신고인
	private int reportId;
	private String content;
	private String wdate; //신고일
	
	public Report() {
		
	}
	
	public Report(int reportNo, int demandNo, int claimeeNo, int reportId, String content, String wdate) {
		this.reportNo = reportNo;
		this.demandNo = demandNo;
		this.claimeeNo = claimeeNo;
		this.reportId = reportId;
		this.content = content;
		this.wdate = wdate;
	}
	
	public Report(int demandNo, int claimeeNo, int reportId, String content) {
		this.demandNo = demandNo;
		this.claimeeNo = claimeeNo;
		this.reportId = reportId;
		this.content = content;
	}

	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public int getDemandNo() {
		return demandNo;
	}
	public void setDemandNo(int demandNo) {
		this.demandNo = demandNo;
	}
	public int getClaimeeNo() {
		return claimeeNo;
	}
	public void setClaimeeNo(int claimeeNo) {
		this.claimeeNo = claimeeNo;
	}
	public int getReportId() {
		return reportId;
	}
	public void setReportId(int reportId) {
		this.reportId = reportId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	
}
