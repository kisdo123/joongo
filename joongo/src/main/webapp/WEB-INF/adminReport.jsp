<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div style="height: auto; margin-top: 50px;">
	신고내용 관리하는 페이지<br>

	<table style="text-align: center; border: 1px solid black;">
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
					<td><button>글 삭제</button></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>

</div>
