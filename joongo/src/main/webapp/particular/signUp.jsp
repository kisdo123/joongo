<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/public.css" rel="stylesheet" type="text/css">
<link href="../css/signUp.css" rel="stylesheet" type="text/css">
<title></title>
</head>
<body>
	<div class="middle">
		<div class="signup-container">
			<div class="logo">
				<h1>로고로고</h1>
			</div>
			<form>
				<div class="signup-id">
					<h4 class="signup-title">아이디</h4>
					<span class="box"><input type="text" name="loginId"></span>
					
				</div>
				<div class="signup-password">
					<h4 class="signup-title">비밀번호</h4>
					<span class="box"><input type="password" name="password"></span>
				</div>
				<div class="signup-password">
					<h4 class="signup-title">비밀번호 확인</h4>
					<span class="box"><input type="password" name="password"></span>
				</div>
				<div class="signup-nickName">
					<h4 class="signup-title">별명</h4>
					<span class="box"><input type="text" name="nickname"></span>
					
				</div>
				<div class="signup-addr">
					<h4 class="signup-title">주소</h4>
					<span class="box"><input type="text" name="addr"></span>
					
				</div>
				<div class="signup-phone">
					<h4 class="signup-title">전화번호</h4>
					<span class="box">
					<input type="tel" name="phone" size="4px"> - 
					<input type="tel" name="phone" size="4px"> - 
					<input type="tel" name="phone" size="4px">
					</span>
					
				</div>
				<div class="signup-email">
					<h4 class="signup-title">이메일</h4>
					<span class="box"><input type="email" name="email"></span>
					
				</div>
				<div class="signup-birthday">
					<h4 class="signup-title">생년월일</h4>
					<span class="box"><input type="text" name="bdate"></span>
				</div>
				<div class="signup-submit">
					<input type="submit" value="가입 하기">
				</div>
			</form>
		</div>
	</div>
</body>
</html>