$(function() {
	// 아이디
	$("#signup").click(function() {
		if ($("#id").val() == "") {
			$("#id_msg").html("아이디를 입력하세요.").css("color", "red")
			$("#id").css("border-color", "red");
			return false;
		}
	});
	$("#id").blur(function() {
		if ($("#id").val() == "") {
			$("#id_msg").html("아이디를 입력하세요.").css("color", "red")
			$("#id").css("border-color", "red");
			return false;
		} else {
			$("#id_msg").html("");
			$("#id").css("border-color", "gray");
		}
	});
	// 비밀번호
	$("#signup").click(function() {
		if ($("#pw").val() == "") {
			$("#pw_msg").html("비밀번호를 입력하세요.").css("color", "red")
			$("#pw").css("border-color", "red");
			return false;
		}
	});
	$("#pw").blur(function() {
		if ($("#pw").val() == "") {
			$("#pw_msg").html("비밀번호를 입력하세요.").css("color", "red")
			$("#pw").css("border-color", "red");
			return false;
		}
	});
	$("#signup").click(function() {
		if ($("#pw_ch").val() == "") {
			$("#pw_ch_msg").html("비밀번호를 입력하세요.").css("color", "red")
			$("#pw_ch").css("border-color", "red");
			return false;
		}
	});
	$("#pw_ch").blur(function() {
		if ($("#pw_ch").val() == "") {
			$("#pw_ch_msg").html("비밀번호를 입력하세요.").css("color", "red")
			$("#pw_ch").css("border-color", "red");
			return false;
		}
	});
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
	// 비밀번호 체크
	$("#pw_ch").blur(function() {
		if ($("#pw_ch").val() != "") {
			if ($("#pw").val() != $("#pw_ch").val()) {
				$("#pw_ch_msg").html("입력하신 비밀번호가 다릅니다.").css("color", "red")
				$("#pw_ch").css("border-color", "red");
				return false;
			} else {
				$("#pw_ch_msg").html("");
				$("#pw_ch").css("border-color", "gray");
			}
		}
	});
	$("#signup").click(function() {
		if ($("#pw_ch").val() != "") {
			if ($("#pw").val() != $("#pw_ch").val()) {
				$("#pw_ch_msg").html("입력하신 비밀번호가 다릅니다.").css("color", "red")
				$("#pw_ch").css("border-color", "red");
				return false;
			} else {
				$("#pw_ch_msg").html("");
				$("#pw_ch").css("border-color", "gray");
			}
		}
	});
	//비밀번호 질문,답변
	$("#signup").click(function() {
		if ($("#question").val() == "") {
			$("#question_msg").html("질문을 선택하세요.").css("color", "red")
			$("#question").css("border-color", "red");
			return false;
		}
	});
	$("#signup").click(function() {
		if ($("#answer").val() == "") {
			$("#answer_msg").html("답변을 입력하세요.").css("color", "red")
			$("#answer").css("border-color", "red");
			return false;
		}
	});
	// 별명
	$("#signup").click(function() {
		if ($("#nickname").val() == "") {
			$("#nickname_msg").html("별명을 입력하세요.").css("color", "red")
			$("#nickname").css("border-color", "red");
			return false;
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
	$("#signup").click(function() {
		if ($("#addr").val() == "") {
			$("#addr_msg").html("주소를 입력하세요.").css("color", "red")
			$("#addr").css("border-color", "red");
			return false;
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
	// 전화번호
	$("#signup").click(
			function() {
				if ($("#phone1").val() == "" | $("#phone2").val() == ""
						& $("#phone3").val() == "") {
					$("#phone_msg").html("전화번호를 입력하세요.").css("color", "red")
					return false;
				}
			});
	// 이메일
	$("#signup").click(function() {
		if ($("#email1").val() == "" & $("#email3").val() == "") {
			$("#email_msg").html("이메일을 입력하세요.").css("color", "red")
			return false;
		}
	});
	$("#email3").blur(function() {
		var email = $("#email3").val();
		var regex = /^[a-zA-Z]([-_\.]?[a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		if (regex.test(email) === false) {
			$("#email_msg").html("잘못된 이메일 형식입니다.");
		} else {
			$("#email_msg").html('');
		}
	})
	$('.signup_email_select').change(function() {
		$('#email3').val($('.signup_email_select').val());
	});
	//생년월일
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
	$("#signup").click(function() {
		if ($("#bdate").val() == "") {
			$("#bdate_msg").html("생년월일을 입력하세요.").css("color", "red")
			$("#bdate").css("border-color", "red");
			return false;
		}
	});

});
function idDuplicate() {
	if ($("#id").val()=='') {
		alert("ID를 입력하세요");
		return;
	}
	url = 'idDuplication.do?loginId=' + $('#id').val();
	open(url, "confirm", "width=300, height=200, resizable=no, scrollbars=no");
}
function signUp(){
	console.log("ㄱㄱ");
	$("#form")[0].submit();
}

