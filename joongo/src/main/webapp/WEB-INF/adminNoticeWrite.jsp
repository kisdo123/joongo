<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/joongo/css/adminNoticeWrite.css">
</head>
<body>
	<div class="adminHeader"><jsp:include page="/particular/adminHeader.jsp"></jsp:include></div>

	<div style="height: auto; margin-top: 50px;">
		<div class="adminNoticeWrite-div">
			<div class="adminNotice-divTitle">[ 공지사항 작성 ]</div>
			<form action="adminWriteNotice.do" method="post">
				<div class="adminNoticeWrite-title">
					<div class="adminNoticeWrite-title1">공지사항 제목</div>
					<input type="text" class="adminNoticeWrite-inputTitle" name="title" placeholder="공지사항 제목을 입력하세요" required autofocus>
				</div>
				<div class="adminNoticeWrite-content">공지사항 내용</div>
				<textarea name="content" rows="30" cols="100" placeholder="공지사항 내용을 입력하세요" class="adminNoticeWrite-textarea" required></textarea>
				<div>
					<input class="adminHeader-btn3" type="submit" value="공지등록">
					<button class="adminHeader-btn" onclick="location.href='adminNoticeList.do'">취소</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>