<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<html>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/writeProduct.css?6">
<script type="text/javascript" src="/joongo/script/writeProduct.js"></script>
<script type="text/javascript" src="/joongo/se2/js/HuskyEZCreator.js"></script>
</head>
<body>
	<div class="write-container">
		<div class="first-div">
			<div class="middle">
				<div class="form-container">
					<form action="writeProduct.do" name="writefrm" id="writefrm" onsubmit="return false" method="post">
						<div class="form-header">
							<!-- 제목 카테고리 -->
							<div class="form-title-container">
								<input type="text" id="title" name="title" placeholder="제목을 입력하세요" class="title-input" autofocus>
							</div>
						</div>
						<!-- 스마트 에디터가 생기는 textarea -->
						<textarea id="ir1" name="content" rows="10" cols="100" style='width: 100%; height: 400px;'></textarea>
						<input type="submit" value="등록" id="register" class="register"> <a href="#" onclick="history.back(-1);" class="cancel">취소</a>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>