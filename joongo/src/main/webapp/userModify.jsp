<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/joongo/css/public.css" rel="stylesheet" type="text/css">
<link href="/joongo/css/signUp.css" rel="stylesheet" type="text/css">
<title>회원정보 수정</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="/joongo/script/userModify.js" type="text/javascript"></script>
</head>
<body>
	<div class="middle">
		<div class="signup_container">
			<div class="signup_logo">
				<a href="#">
					<img src="joongo/image/logo100x100.png" class="signup_logo_img">
				</a>
			</div>
			<form id="form" method="post" action="register.do" onsubmit="return false">
				<div class="signup">
					<h4 class="signup_title">이름</h4>
					<span class="box">
						<input type="text" name="name" id="name" value="a" readonly>
					</span>
					<p id="name_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">아이디</h4>
					<span class="box">
						<input type="text" name="loginId" id="id" value="a" readonly style="width: 100%">
					</span>
					<p id="id_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">비밀번호 확인 질문</h4>
					<span class="box">
						<select name="password_q" id="question">
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
					<span class="box">
						<input type="text" name="password_a" id="answer" value="a">
					</span>
					<p id="answer_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">별명</h4>
					<span class="box">
						<input type="text" name="nickname" id="nickname" value="a">
					</span>
					<p id="nickname_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">주소</h4>
					<span class="box">
						<input type="text" name="addr" id="addr" value="a">
					</span>
					<p id="addr_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">전화번호</h4>
					<span class="box">
						<input type="text" id="phone1" class="phone" maxlength="3" pattern="[0-1]{3}" value="010">
						<input type="text" id="phone2" class="phone" maxlength="4" pattern="[0-9]{4}" value="8529">
						<input type="text" id="phone3" class="phone" maxlength="4" pattern="[0-9]{4}" value="7777">
						<input type="hidden" id="phone" name="phone">
						<button class="phone_cheak" onclick="phoneDuplicate()">중복확인</button>
					</span>
					<p id="phone_msg"></p>
					
				</div>
				<div class="signup">
					<h4 class="signup_title">이메일</h4>
					<span class="box">
						<input type="text" id="email" name="email" value="" style="width: 100%" readonly>
					</span>
					<p id="email_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">생년월일</h4>
					<span class="box">
						<input type="text" name="bdate" id="bdate" maxlength="6" pattern="[0-9]{6}" value="001126" readonly>
					</span>
					<p id="bdate_msg"></p>
				</div>
				<input type="hidden" name="kakao" value="false">
				<div class="signup_submit">
					<input type="submit" value="수정 하기" id="signup" onclick="check()" >
				</div>
			</form>
		</div>
	</div>
</body>
</html>