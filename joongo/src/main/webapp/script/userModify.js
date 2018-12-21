var phoneDup = true;
$(function() {
	
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
	
	$("#phone").on("change", function(){
		phoneDup = false;
	});
	
	$("#nickname").keyup(function() {
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
	
	
});

function check() {
	var flag = true;
	if ($("#name").val() == "") {
		$("#name_msg").html("이름을 입력하세요.").css("color", "red")
		$("#name").css("border-color", "red");
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
	
	if ($("#phone1").val() == "" | $("#phone2").val() == "" | $("#phone3").val() == "") {
		$("#phone_msg").html("전화번호를 입력하세요.").css("color", "red")
		flag = false;
	} else {
		$("#phone_msg").html("");
		let phone = $("#phone1").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val();
		$("#phone").val(phone);
	}
	if (flag) {
		if(phoneDup){
			$("#form")[0].submit();			
		}else{
			alert("전화번호 중복체크를 해주세요");
		}
		
	}
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



