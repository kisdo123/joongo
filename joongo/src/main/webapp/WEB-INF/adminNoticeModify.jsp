<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/joongo/css/adminNotice.css">
<script type="text/javascript" src="/joongo/script/adminNoticeModify.js"></script>
</head>
<body>
	<div class="adminHeader"><jsp:include page="/particular/adminHeader.jsp"></jsp:include></div>

	<div class="adminNoticeModify-topDiv" style="height: auto; margin-top: 50px;">
		<div class="adminNoticeModify-div">
			<div class="adminNotice-divTitle">공지사항 수정</div>

			<form action="adminNoticeUpdate.do" method="post">
				<c:if test="${notice != null }">
					<div class="adminNoticeModify-titleDiv">
						<div class="adminNoticeModify-titleNum">공지사항 번호</div>
						<input class="adminNoticeModify-input1" type="text" name="noticeNo" value="${notice.noticeNo }" readonly="readonly">

						<div class="adminNoticeModify-title">공지사항 제목</div>
						<input class="adminNoticeModify-input2" type="text" name="title" placeholder="공지사항 제목을 입력하세요" value="${notice.title }" required autofocus>
					</div>

					<div class="adminNoticeModify-content">공지사항 내용</div>
					<textarea class="adminNoticeModify-textarea" name="content" rows="20" cols="100" placeholder="공지사항 내용을 입력하세요" required>${notice.content }</textarea>
					<input type="hidden" name="userNo" value="${loginUser.userNo }">
					<div>
						<input type="submit" value="공지수정">
						<button onclick="location.href='adminNoticeList.do'">취소</button>
					</div>
				</c:if>
			</form>
		</div>
	</div>
</body>
</html>