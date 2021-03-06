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
<div class="adminHeader"><jsp:include page="/particular/adminHeader.jsp"></jsp:include></div>

<div class="adminUser-divTop">
	<div class="adminUser-divTitle">[ 사용자 관리 ]</div>
	

	<table class="adminUser-table">
		<thead>
			<tr>
				<th>유저번호</th>
				<th>로그인ID</th>
				<th>닉네임</th>
				<th>이름</th>
				<th>이메일</th>
				<th>전화변호</th>
				<th>주소</th>
				<th>생일</th>
				<th>활성여부</th>
				<th colspan="3">사용자 관리</th>
			</tr>
		</thead>
		<c:forEach var="users" items="${userList }">
			
			<tbody>
				<tr>
					<td><a href="userPage.do?userNo=${users.userNo }">${users.userNo }</a></td>
					<td>${users.loginId }</td>
					<td>${users.nickname }</td>
					<td>${users.name }</td>
					<td>${users.email }</td>
					<td>${users.phone }</td>
					<td>${users.addr }</td>
					<td>${users.bdate }</td>
					<td>${users.able }</td>
					<td><button onclick="admitUser(${users.userNo },true)">유저 활성화</button></td>
					<td><button onclick="admitUser(${users.userNo },false)">유저 비활성화</button></td>
						
							<td>
							<c:if test="${users.loginId != loginUser.loginId}">
								<button onclick="deleteUser(${users.userNo })">유저 삭제</button>
							</c:if>
						</td>
					</tr>
			</tbody>
		</c:forEach>
	</table>

</div>
</body>
</html>