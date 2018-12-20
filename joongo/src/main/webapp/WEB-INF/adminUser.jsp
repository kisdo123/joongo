<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/joongo/css/adminUser.css">
<script type="text/javascript" src="/joongo/script/adminUser.js"></script>
</head>
<body>

<jsp:include page="/particular/adminHeader.jsp"></jsp:include>

<div style="height: auto; margin-top: 50px;">
	유저관리하는 페이지<br><br><br>

	<table class="adminUser-table">
		<thead>
			<tr>
				<th>유저번호</th>
				<th>로그인ID</th>
				<th>암호</th>
				<th>암호질문</th>
				<th>암호답변</th>
				<th>닉네임</th>
				<th>이름</th>
				<th>이메일</th>
				<th>전화변호</th>
				<th>주소</th>
				<th style="width: 40px;">소개글</th>
				<th>생일</th>
				<th>활성여부</th>
			</tr>
		</thead>
		<c:forEach var="users" items="${userList }">
			<tbody>
				<tr>
					<td>${users.userNo }</td>
					<td>${users.loginId }</td>
					<td>${users.password }</td>
					<td>${users.password_q }</td>
					<td>${users.password_a }</td>
					<td>${users.nickname }</td>
					<td>${users.name }</td>
					<td>${users.email }</td>
					<td>${users.phone }</td>
					<td>${users.addr }</td>
					<td style="width: 30px;">${users.introduce }</td>
					<td>${users.bdate }</td>
					<td>${users.able }</td>
					<td><button onclick="admitUser(${users.userNo },true)">유저 활성화</button></td>
					<td><button onclick="admitUser(${users.userNo },false)">유저 비활성화</button></td>
					<td><button onclick="deleteUser(${users.userNo })">유저 삭제</button></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>

</div>
</body>
</html>