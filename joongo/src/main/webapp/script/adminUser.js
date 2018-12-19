

function deleteUser(userNo){
	$.ajax({
		url : "adminDeleteUser.do",
		data : { "userNo" : userNo }, 
		success : function() { 
			alert("유저를 삭제했습니다.");
			location.href="adminGetAllUsers.do";
		},
		error : function(error) {
			console.log(error); alert('유저 삭제에 실패했습니다.');
		}
	}); 
}
