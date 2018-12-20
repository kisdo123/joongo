<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/joongo/css/adminNotice.css">
<script type="text/javascript" src="/joongo/script/adminNotice.js"></script>
</head>
<body>

	<jsp:include page="/particular/adminHeader.jsp"></jsp:include>

	<div style="height: auto; margin-top: 50px;">
		공지사항 관리하는 페이지
		<button onclick="location.href='noticelist.do'">일반글 목록보기</button>
		<br> <br> <br>
		<table class="adminNotice-table">
			<thead>
				<tr>
					<th>공지사항번호</th>
					<th>제목</th>
					<th>내용</th>
					<th>유저번호</th>
					<th>작성날짜</th>
					<th>활성여부</th>
				</tr>
			</thead>
			<c:forEach var="notice" items="${notices }">
				<tbody>
					<tr>
						<td>${notice.noticeNo }</td>
						<td>${notice.title }</td>
						<td><div class="adiminNotice-div">${notice.content }</div></td>
						<td>${notice.userNo }</td>
						<td>${notice.wdate }</td>
						<td>${notice.able }</td>
						<td><button onclick="ableNotice(${notice.noticeNo },true)">글 활성화</button></td>
						<td><button onclick="ableNotice(${notice.noticeNo },false)">글 비활성화</button></td>
						<td><button
								onclick="location.href='noticeUpdateForm.do?noticeNo=${notice.noticeNo }'">글수정</button></td>
						<td><button
								onclick="location.href='noticeDelete.do?noticeNo=${notice.noticeNo }'">글삭제</button></td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
		<br>
		<button onclick="location.href='writeNoticeForm.do'">공지사항 글쓰기</button>
	</div>
</body>
</html>