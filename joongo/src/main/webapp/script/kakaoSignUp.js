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
	$("#email").blur(function() {
		var email = $("#email").val();
		var regex = /^[a-zA-Z]([-_\.]?[a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		if (regex.test(email) === false) {
			$("#email_msg").html("잘못된 이메일 형식입니다.").css("color", "red")
			return false;
		} else {
			$("#email_msg").html("");
		}
	})
	$("#signup").click(function() {
		var email = $("#email").val();
		var regex = /^[a-zA-Z]([-_\.]?[a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		if (regex.test(email) === false) {
			$("#email_msg").html("잘못된 이메일 형식입니다.").css("color", "red")
			return false;
		} else {
			$("#email_msg").html("");
		}
	})
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
	
	var email = $("#email3").val();
	let regex = /^[a-zA-Z]([-_\.]?[a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	if (regex.test(email) === false) {
		$("#email_msg").html("잘못된 이메일 형식입니다.").css("color", "red")
		return false;
	} else {
		$("#email_msg").html("");
		let email = $('#email1').val() + $('#email2').val() + $('#email3').val();
		$("#email").val(email);
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
	if ($("#email").val() == "") {
		$("#email_msg").html("이메일을 입력하세요.").css("color", "red")
		flag = false;
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
	url = 'idDuplication.do?loginId=' + $('#id').val();
	var popupX = (window.screen.width / 2) - (200 / 2);
	var popupY= (window.screen.height /2) - (300 / 2);

	window.open(url, 'confirm', 'status=no, height=200, width=300, resizable=no, scrollbar=no,left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}

function phoneDuplicate() {
	if ($('#phone1').val() == '' || $('#phone2').val() == ''
			|| $('#phone3').val() == '') {
		alert("전화번호를 입력하세요");
		return;
	}
	var phone = $('#phone1').val() + '-' + $('#phone2').val() + '-'
			+ $('#phone3').val();
	url = "phoneDuplication.do?phone="+phone;
	var popupX = (window.screen.width / 2) - (200 / 2);
	var popupY= (window.screen.height /2) - (300 / 2);

	window.open(url, 'confirm', 'status=no, height=200, width=300, resizable=no, scrollbar=no,left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}

