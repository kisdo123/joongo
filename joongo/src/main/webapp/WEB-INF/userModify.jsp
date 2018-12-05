<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<form id="form" method="post" action="modifyUser.do" onsubmit="return false">
				<div class="signup">
					<h4 class="signup_title">이름</h4>
					<span class="box">
						<input type="text" name="name" id="name" value="${loginUser.name }" readonly>
					</span>
					<p id="name_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">아이디</h4>
					<span class="box">
						<input type="text" name="loginId" id="id" value="${loginUser.loginId }" readonly style="width: 100%">
					</span>
					<p id="id_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">비밀번호 확인 질문</h4>
					<span class="box">
						<select name="password_q" id="question">
							<option value="">-------------------------------------------------------질문------------------------------------------------</option>
							<c:if test="${loginUser.password_q.equals('내가 졸업한 초등학교의 이름은?') }"><option selected >내가 졸업한 초등학교의 이름은?</option></c:if>
							<c:if test="${loginUser.password_q != '내가 졸업한 초등학교의 이름은?' }"><option>내가 졸업한 초등학교의 이름은?</option></c:if>
							<c:if test="${loginUser.password_q.equals('나의 보물 1호는?') }"><option selected >나의 보물 1호는?</option></c:if>
							<c:if test="${loginUser.password_q != '나의 보물 1호는?' }"><option>나의 보물 1호는?</option></c:if>
							<c:if test="${loginUser.password_q.equals('나의 고향은?') }"><option selected >나의 고향은?</option></c:if>
							<c:if test="${loginUser.password_q != '나의 고향은?' }"><option>나의 고향은?</option></c:if>
							<c:if test="${loginUser.password_q == '내가 가장 존경하는 인물은?' }"><option selected >내가 가장 존경하는 인물은?</option></c:if>
							<c:if test="${loginUser.password_q != '내가 가장 존경하는 인물은?' }"><option>내가 가장 존경하는 인물은?</option></c:if>
							<c:if test="${loginUser.password_q == '가장 기억에 남는 장소는?' }"><option selected >가장 기억에 남는 장소는?</option></c:if>
							<c:if test="${loginUser.password_q != '가장 기억에 남는 장소는?' }"><option>가장 기억에 남는 장소는?</option></c:if>
						</select>
					</span>
					<p id="question_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">비밀번호 확인 답변</h4>
					<span class="box">
						<input type="text" name="password_a" id="answer" value="${loginUser.password_a }">
					</span>
					<p id="answer_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">별명</h4>
					<span class="box">
						<input type="text" name="nickname" id="nickname" value="${loginUser.nickname }">
					</span>
					<p id="nickname_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">주소</h4>
					<span class="box">
						<input type="text" name="addr" id="addr" value="${loginUser.addr }">
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
						<input type="text" id="email" name="email" value="${loginUser.email }" style="width: 100%" readonly>
					</span>
					<p id="email_msg"></p>
				</div>
				<div class="signup">
					<h4 class="signup_title">생년월일</h4>
					<span class="box">
						<input type="text" name="bdate" id="bdate" maxlength="6" pattern="[0-9]{6}" value="${loginUser.bdate }" readonly>
					</span>
					<p id="bdate_msg"></p>
				</div>
				<div class="signup_submit">
					<input type="submit" value="수정 하기" id="signup" onclick="check()" >
				</div>
			</form>
		</div>
	</div>
</body>
</html>