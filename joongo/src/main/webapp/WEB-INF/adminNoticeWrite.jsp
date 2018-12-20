<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<html>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/adminNoticeWrite.css">
</head>
<body>
	<form action="writeNotice.do" method="post">
		<div class="form-header">
			<!-- 제목 카테고리 -->
			<div class="form-title-container">
				<input type="text" id="title" name="title" placeholder="제목을 입력하세요" autofocus>
			</div>
		</div>
		<!-- 스마트 에디터가 생기는 textarea -->
		<textarea name="content" rows="10" cols="100" ></textarea>
		<input type="submit" value="등록" class="">
	</form>
</body>
</html>