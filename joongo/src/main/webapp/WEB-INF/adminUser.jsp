<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<button onclick="location.href='adminGetAllUsers.do'">유저관리</button>
<button onclick="location.href='adminlist.do'">공지사항</button>
<button onclick="location.href='adminGetAllReports.do'">신고목록</button>
<button>상품관리</button>

<div style="height: auto; margin-top: 50px;">
	유저관리하는 페이지<br>

	<table style="text-align: center; border: 1px solid black; font-size: 7px;">
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
					<td>${users.userNo }</td>
					<td><button>유저 수정</button></td>
					<td><button>유저 삭제</button></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>

</div>
