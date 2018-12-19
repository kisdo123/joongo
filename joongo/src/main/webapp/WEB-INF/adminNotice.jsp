<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div style="height: auto; margin-top: 50px;">
	공지사항 관리하는 페이지<br>

		<button onclick="location.href='notice.do'">일반글 목록보기</button>
		
	<table style="text-align: center; border: 1px solid black;">
		<thead>
			<tr>
				<th>공지사항번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>유저번호</th>
				<th>작성날짜</th>
			</tr>
		</thead>
		<c:forEach var="notice" items="${notices }">
			<tbody>
				<tr>
					<td>${notice.noticeNo }</td>
					<td>${notice.title }</td>
					<td>${notice.content }</td>
					<td>${notice.userNo }</td>
					<td>${notice.wdate }</td>
					<td><button onclick="location.href='noticeUpdateForm.do?noticeNo=${notice.noticeNo }'">글수정</button></td>
					<td><button>글삭제</button></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
	<button onclick="location.href=''">공지사항 글쓰기</button>

</div>