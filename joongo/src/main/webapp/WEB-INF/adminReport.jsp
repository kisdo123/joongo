<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/joongo/css/adminReport.css">
<script type="text/javascript" src="/joongo/script/adminReport.js"></script>
</head>
<body>

<button onclick="location.href='adminGetAllUsers.do'">유저관리</button>
<button onclick="location.href='adminlist.do'">공지사항</button>
<button onclick="location.href='adminGetAllReports.do'">신고목록</button>
<button>상품관리</button>

<div style="height: auto; margin-top: 50px;">
	신고내용 관리하는 페이지<br><br><br>

	<table class="adminReport-table">
		<thead>
			<tr>
				<th>신고내용번호</th>
				<th>demandNo</th>
				<th>claimeeNo</th>
				<th>신고ID</th>
				<th>내용</th>
				<th>작성날짜</th>
			</tr>
		</thead>
		<c:forEach var="reports" items="${reportList }">
			<tbody>
				<tr>
					<td>${reports.reportNo }</td>
					<td>${reports.demandNo }</td>
					<td>${reports.claimeeNo }</td>
					<td>${reports.reportId }</td>
					<td>${reports.content }</td>
					<td>${reports.wdate }</td>
					<td><button class="noticeDelBtn" onclick="deleteReport(${reports.reportNo })">글 삭제</button></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>

</div>
</body>
</html>