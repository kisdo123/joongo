<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<button onclick="location.href='adminGetAllUsers.do'">유저관리</button>
<button onclick="location.href='adminlist.do'">공지사항</button>
<button onclick="location.href='adminGetAllReports.do'">신고목록</button>
<button>상품관리</button>

<div style="height: auto; margin-top: 50px;">
	공지사항 관리하는 페이지
	<button onclick="location.href='noticelist.do'">일반글 목록보기</button>
	<br><br><br>
	<table id="adminNotice-table"
		style="width: 100%; max-width: 95%; margin: auto; text-align:center; border: 1px solid black;">
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
					<td><div
							style="width: 400px; text-align: left; word-wrap: break-word; margin: auto;">${notice.content }</div></td>
					<td>${notice.userNo }</td>
					<td>${notice.wdate }</td>
					<td><button
							onclick="location.href='noticeUpdateForm.do?noticeNo=${notice.noticeNo }'">글수정</button></td>
					<td><button
							onclick="location.href='deleteNotice.do?noticeNo=${notice.noticeNo }&userNo=${loginUser.userNo }'">글삭제</button></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
	<button onclick="location.href=''">공지사항 글쓰기</button>

</div>