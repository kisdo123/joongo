<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/public.css" rel="stylesheet" type="text/css">
<link href="../css/signUp.css" rel="stylesheet" type="text/css">
<title></title>
<script language="javascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="../js/signUp.js" type="text/javascript"></script>
</head>
<body>
	<div class="middle">
		<div class="signup_container">
			<div class="logo">
				<h1>로고a로고</h1>
			</div>
			<form>
				<div class="signup_id">
					<h4 class="signup_title">아이디</h4>
					<span class="box">
						<input type="text" name="loginId"id="id" autofocus>
						<button class="id_check">중복확인</button>
					</span>
					<p id="id_msg"></p>
				</div>
				<div class="signup_password">
					<h4 class="signup_title">비밀번호</h4>
					<span class="box">
						<input type="password" name="password" id="pw" maxlength="20">
					</span>
					<p id="pw_msg"></p>
				</div>
				<div class="signup_password">
					<h4 class="signup_title">비밀번호 확인</h4>
					<span class="box">
						<input type="password" name="password_R" id="pw_ch" maxlength="20">
					</span>
					<p id="pw_ch_msg"></p>
				</div>
				<div class="signup_nickName">
					<h4 class="signup_title">별명</h4>
					<span class="box">
						<input type="text" name="nickname" id="nickname">
					</span>
					<p id="nickname_msg"></p>
				</div>
				<div class="signup_addr">
					<h4 class="signup_title">주소</h4>
					<span class="box">
						<input type="text" name="addr" id="addr" placeholder="  예)시 ·도 / 시군 ·구/ 읍 ·면 ">
					</span>
					<p id="addr_msg"></p>
				</div>
				<div class="signup_phone">
					<h4 class="signup_title">전화번호</h4>
					<span class="box">
						<input type="text" name="phone1" id="phone1" class="phone" maxlength="3" pattern="[0-1]{3}" value="010">
						<input type="text" name="phone2" id="phone2" class="phone" maxlength="4" pattern="[0-9]{4}">
						<input type="text" name="phone3" id="phone3" class="phone" maxlength="4" pattern="[0-9]{4}">
					</span>
					<p id="phone_msg"></p>
				</div>
				<div class="signup_email">
					<h4 class="signup_title">이메일</h4>
					<span class="box">
						<input type="text" name="email1" id="email1">
						<input type="text" name="email2" value="@" id="email2" disabled>
						<!-- <input type="text" name="email3" id="email3" pattern="(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-z]{2,3}$/i"> -->
						<input type="text" name="email3" id="email3">
						<select class="signup_email_select">
							<option value="">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="daum.net">daum.net</option>
						</select>
					</span>
					<p id="email_msg"></p>
				</div>
				<div class="signup_birthday">
					<h4 class="signup_title">생년월일</h4>
					<span class="box">
						<input type="text" name="bdate" id="bdate" maxlength="6" pattern="[0-9]{6}" placeholder="  주민등록번호 앞자리를 입력하시오.">
					</span>
					<p id="bdate_msg"></p>
				</div>
				<div class="signup_submit">
					<input type="submit" value="가입 하기" id="signup">
				</div>
			</form>
		</div>
	</div>
</body>
</html>