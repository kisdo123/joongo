

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



function admitUser(userNo){
	$.ajax({
		url : "adminUpdateUserAble.do",
		data : { "userNo" : userNo
		}, 
		success : function() { 
			alert("관리자 권한을 부여했습니다");
			location.href="adminGetAllUsers.do";
		},
		error : function(error) {
			console.log(error); alert('권리자 권한 부여에 실패했습니다.');
		}
	}); 
}
