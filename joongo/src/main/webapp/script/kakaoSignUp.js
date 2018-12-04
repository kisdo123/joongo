$(function() {
	// 비밀번호 자리수
	$("#pw").blur(function() {
		if ($("#pw").val() != "") {
			if ($("#pw").val().length < 6) {
				$("#pw_msg").html("6~20자로 입력해주세요.").css("color", "red")
				$("#pw").css("border-color", "red");
				return false;
			} else {
				$("#pw_msg").html("");
				$("#pw").css("border-color", "gray");
			}
		}
	});
	$("#nickname").blur(function() {
		if ($("#nickname").val() == "") {
			$("#nickname_msg").html("별명을 입력하세요.").css("color", "red")
			$("#nickname").css("border-color", "red");
			return false;
		} else {
			$("#nickname_msg").html("");
			$("#nickname").css("border-color", "gray");
		}
	});

	// 주소
	$("#addr").blur(function() {
		if ($("#addr").val() == "") {
			$("#addr_msg").html("주소를 입력하세요.").css("color", "red")
			$("#addr").css("border-color", "red");
			return false;
		} else {
			$("#addr_msg").html("");
			$("#addr").css("border-color", "gray");
		}
	});
	// 생년월일
	$("#bdate").blur(function() {
		if ($("#bdate").val() == "") {
			$("#bdate_msg").html("생년월일을 입력하세요.").css("color", "red")
			$("#bdate").css("border-color", "red");
			return false;
		} else {
			$("#bdate_msg").html("");
			$("#bdate").css("border-color", "gray");
		}
	});

});
function check() {
	var flag = true;
	if ($("#name").val() == "") {
		$("#name_msg").html("이름을 입력하세요.").css("color", "red")
		$("#name").css("border-color", "red");
		flag = false;
	}
	
	if ($("#id").val() == "") {
		$("#id_msg").html("아이디를 입력하세요.").css("color", "red")
		$("#id").css("border-color", "red");
		flag = false;
	}
	if ($("#pw").val() == "") {
		$("#pw_msg").html("비밀번호를 입력하세요.").css("color", "red")
		$("#pw").css("border-color", "red");
		flag = false;
	}
	if ($("#question").val() == "") {
		$("#question_msg").html("질문을 선택하세요.").css("color", "red")
		$("#question").css("border-color", "red");
		flag = false;
	} else {
		$("#question_msg").html("");
		$("#question").css("border-color", "gray");
	}
	if ($("#answer").val() == "") {
		$("#answer_msg").html("답변을 입력하세요.").css("color", "red")
		$("#answer").css("border-color", "red");
		flag = false;
	} else {
		$("#answer_msg").html("");
		$("#answer").css("border-color", "gray");
	}
	if ($("#nickname").val() == "") {
		$("#nickname_msg").html("별명을 입력하세요.").css("color", "red")
		$("#nickname").css("border-color", "red");
		flag = false;
	}
	
	if ($("#addr").val() == "") {
		$("#addr_msg").html("주소를 입력하세요.").css("color", "red")
		$("#addr").css("border-color", "red");
		flag = false;
	}
	if ($("#phone1").val() == "" | $("#phone2").val() == "" & $("#phone3").val() == "") {
		$("#phone_msg").html("전화번호를 입력하세요.").css("color", "red")
		flag = false;
	} else {
		$("#phone_msg").html("");
		let phone = $("#phone1").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val();
		$("#phone").val(phone);
	}
	if ($("#bdate").val() == "") {
		$("#bdate_msg").html("생년월일을 입력하세요.").css("color", "red")
		$("#bdate").css("border-color", "red");
		flag = false;
	}
	if (flag) {
		$("#form")[0].submit();
	}
}
function idDuplicate() {
	if ($("#id").val() == '') {
		alert("ID를 입력하세요");
		return;
	}
	var id = $("#id").val();
	
	$.ajax({
		type: "POST",
		url: "idDuplication.do",
		data : {"loginId":id},
		error: function(error){
			
		},
		success: function(result){
			if(result==="false"){
				$("#id_msg").text('사용 가능한 아이디입니다.');
				idDup = true;
			}else if(result==="true"){
				$("#id_msg").html('이미 사용중이거나 탈퇴한 아이디 입니다.');
			}
		}
	});
	
}


function phoneDuplicate() {
	if ($('#phone1').val() == '' || $('#phone2').val() == ''
			|| $('#phone3').val() == '') {
		alert("전화번호를 입력하세요");
		return;
	}
	var phone = $('#phone1').val() + '-' + $('#phone2').val() + '-'
			+ $('#phone3').val();
	
	$.ajax({
		type: "POST",
		url: "phoneDuplication.do",
		data : {"phone":phone},
		error: function(error){
			console.log(error);
		},
		success: function(result){
			if(result==="false"){
				$("#phone_msg").html('사용 가능한 전화번호 입니다.');
				phoneDup = true;
			}else if(result ==="true"){
				$("#phone_msg").html('이미 사용중이거나 탈퇴한 전화번호 입니다.');
			}
		}
	});
}

