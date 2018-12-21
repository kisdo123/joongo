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

<jsp:include page="/particular/adminHeader.jsp"></jsp:include>

<div class="adminReport-divTop">
	<div class="adminNotice-divTitle">신고내용 관리</div>

	<table class="adminReport-table">
		<thead>
			<tr>
				<th>신고내용번호</th>
				<th>신고자</th>
				<th>피신고자</th>
				<th>신고ID</th>
				<th>신고내용</th>
				<th>작성날짜</th>
				<th colspan="2">신고 관리</th>
			</tr>
		</thead>
		<c:forEach var="reports" items="${reportList }">
			<tbody>
				<tr>
					<td>${reports.reportNo }</td>
					<td>${reports.demandNo }</td>
					<td>${reports.claimeeNo }</td>
					<td>${reports.reportId }</td>
					<td><div class="adminReport-div">${reports.content }</div></td>
					<td>${reports.wdate }</td>
					<td style="border-right: 3px solid #6666667a;"><button class="noticeDelBtn" onclick="deleteReport(${reports.reportNo })">글 삭제</button></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>

</div>
</body>
</html>