<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/joongo/css/adminNotice.css">
<script type="text/javascript" src="/joongo/script/adminNotice.js"></script>
</head>
<body>
	<div class="adminHeader"><jsp:include page="/particular/adminHeader.jsp"></jsp:include></div>

	<div class="adminNotice-divTop">

		<div class="adminNotice-divTitle">[ 공지사항 관리 ]</div>
		<div class="adminNotice-btmDiv">
			<button class="adminHeader-btn2" onclick="location.href='noticeList.do'" style="margin-left: 50px;">일반글 목록보기</button>
			<button class="adminHeader-btn2" onclick="location.href='adminWriteNoticeForm.do'" style="float: right; margin-right: 50px;">공지사항 글쓰기</button>
		</div>
		
		<table class="adminNotice-table">
			<thead>
				<tr>
					<th>공지번호</th>
					<th>공지제목</th>
					<th>공지내용</th>
					<th>유저번호</th>
					<th>작성날짜</th>
					<th>활성여부</th>
					<th colspan="4">공지 관리</th>

				</tr>
			</thead>
			<c:forEach var="notice" items="${notices }">
				<tbody>
					<tr>
						<td>${notice.noticeNo }</td>
						<td>${notice.title }</td>
						<td>
							<div class="adiminNotice-div">${notice.content }</div>
						</td>
						<td>${notice.userNo }</td>
						<td>${notice.wdate }</td>
						<td>${notice.able }</td>
						<td>
							<button onclick="ableNotice(${notice.noticeNo },true)">글 활성화</button>
						</td>
						<td>
							<button onclick="ableNotice(${notice.noticeNo },false)">글 비활성화</button>
						</td>
						<td>
							<button onclick="location.href='adminNoticeUpdateForm.do?noticeNo=${notice.noticeNo }'">글수정</button>
						</td>
						<td>
							<button class="admitNoticeDel-Btn" onclick="location.href='adminNoticeDelete.do?noticeNo=${notice.noticeNo }'">글삭제</button>
						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>




	</div>
</body>
</html>