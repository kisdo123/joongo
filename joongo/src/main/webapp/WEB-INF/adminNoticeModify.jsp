<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
			<input type="submit" value="수정하기">
		</c:if>
	</form>

</div>