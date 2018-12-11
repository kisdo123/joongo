<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/joongo/css/public.css" rel="stylesheet" type="text/css">
<link href="/joongo/css/signUp.css" rel="stylesheet" type="text/css">
<title></title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="/joongo/script/signUp.js" type="text/javascript"></script>
</head>
<body>
	<div class="middle">
		<div class="signup_container">
			<div class="signup_logo">
				<a href="#"> <img src="/joongo/image/logo100.png" class="signup_logo_img">
				</a>
			</div>
			<form id="form" method="post" action="register.do" onsubmit="return false">
				<div class="signup">
					<h4 class="signup_title">이름</h4>
					<span class="box"> <input type="text" name="name" id="name">
					</span>
					<p id="name_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">아이디</h4>
					<span class="box"> <input type="text" name="loginId" id="id">
						<button class="id_check" onclick="idDuplicate()">중복확인</button>
					</span>
					<p id="id_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">비밀번호</h4>
					<span class="box"> <input type="password" name="password" id="pw" maxlength="20">
					</span>
					<p id="pw_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">비밀번호 확인</h4>
					<span class="box"> <input type="password" id="pw_ch" maxlength="20">
					</span>
					<p id="pw_ch_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">비밀번호 확인 질문</h4>
					<span class="box"> <select name="password_q" id="question">
							<option value="">-------------------------------------------------------질문------------------------------------------------</option>
							<option>자신이 나온 초등학교 이름은?</option>
							<option>자신의 보물 1호 는 무엇인가?</option>
							<option>나는 담배를 핀적이 있다,없다?</option>
							<option>자신이 존경하는 인물은?</option>
							<option>자신의 추억의 장소는?</option>
					</select>
					</span>
					<p id="question_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">비밀번호 확인 답변</h4>
					<span class="box"> <input type="text" name="password_a" id="answer">
					</span>
					<p id="answer_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">별명</h4>
					<span class="box"> <input type="text" name="nickname" id="nickname">
					</span>
					<p id="nickname_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">주소</h4>
					<span class="box"> <input type="text" name="addr" id="addr" placeholder="  예)서울특별시 강남구 ">
					</span>
					<p id="addr_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">전화번호</h4>
					<span class="box"> <input type="text" id="phone1" class="phone" maxlength="3" pattern="[0-1]{3}" value="010"> <input type="text" id="phone2" class="phone" maxlength="4" pattern="[0-9]{4}"> <input type="text" id="phone3" class="phone" maxlength="4" pattern="[0-9]{4}"> <input type="hidden" id="phone" name="phone">
						<button class="phone_cheak" onclick="phoneDuplicate()">중복확인</button>
					</span>
					<p id="phone_msg"></p>

				</div>
				<div class="signup">
					<h4 class="signup_title">이메일</h4>
					<span class="box"> <input type="text" id="email1"> <input type="text" value="@" id="email2" disabled> <input type="text" id="email3"> <input type="hidden" id="email" name="email"> <select class="signup_email_select">
							<option value="">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="daum.net">daum.net</option>
					</select>
					</span>
					<p id="email_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">생년월일</h4>
					<span class="box"> <input type="text" name="bdate" id="bdate" maxlength="6" pattern="[0-9]{6}" placeholder="  주민등록번호 앞자리를 입력하시오.">
					</span>
					<p id="bdate_msg"></p>
				</div>
				<input type="hidden" name="kakao" value="false">
				<div class="signup_submit">
					<input type="submit" value="가입 하기" id="signup" onclick="check()">
				</div>
			</form>
		</div>
	</div>
</body>
</html>