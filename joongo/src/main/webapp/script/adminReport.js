

function deleteReport(reportNo){
	$.ajax({
		url : "adminDeleteReport.do",
		data : { "reportNo" : reportNo }, 
		success : function() { 
			alert("신고글을 삭제했습니다.");
			location.href="adminGetAllReports.do";
		},
		error : function(error) {
			console.log(error); alert('신고글 삭제가 실패했습니다.');
		}
	}); 
}
