<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<html>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="/joongo/css/adminNoticeWrite.css">
</head>
<body>
	<div class="adminNoticeWrite-div">
		<form action="writeNotice.do" method="post">
			<div class="adminNoticeWrite-title">
				공지사항 제목 <input type="text" class="adminNoticeWrite-inputTitle" name="title"
					placeholder="제목을 입력하세요" autofocus>
			</div>
			<div>공지사항 내용</div>
			<textarea name="content" rows="10" cols="100"></textarea>
			<input type="submit" value="등록" class="">
		</form>
	</div>
</body>
</html>