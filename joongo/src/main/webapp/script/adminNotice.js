

function ModifyNotice(noticeNo){
	$.ajax({
		url : "noticeUpdate.do",
		data : { "noticeNo" : noticeNo }, 
		success : function() { 
			alert("공지사항을 수정했습니다.");
			location.href="adminlist.do";
		},
		error : function(error) {
			console.log(error); alert('공지사항 수정에 실패했습니다.');
		}
	}); 
}



function ableNotice(noticeNo, able){
	$.ajax({
		url : "ableUpdate.do",
		data : { "noticeNo" : noticeNo,
			"able" : able
		}, 
		success : function() { 
			alert("공지사항을 수정했습니다.");
			location.href="adminlist.do";
		},
		error : function(error) {
			console.log(error); alert('공지사항 수정에 실패했습니다.');
		}
	}); 
}
