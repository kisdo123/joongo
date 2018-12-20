<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/joongo/script/adminNoticeModify.js"></script>
</head>
<body>

<jsp:include page="/particular/adminHeader.jsp"></jsp:include>

<div style="height: auto; margin-top: 50px;">
	공지사항 글 수정하는 페이지<br>

	<form action="noticeUpdate.do" method="post">
		<c:if test="${notice != null }">
			공지사항 번호 : <input type="text" name="noticeNo" value="${notice.noticeNo }" readonly="readonly">
			<br>
			공지사항 제목 : <input type="text" name="title" value="${notice.title }">
			<br>
			공지사항 내용 : <input type="text" name="content" value="${notice.content }">
			<input type="hidden" name="userNo" value="${loginUser.userNo }">
			<input type="submit" value="수정하기" class="admitNoticeModift-submitBtn">
		</c:if>
	</form>

</div>
</body>
</html>