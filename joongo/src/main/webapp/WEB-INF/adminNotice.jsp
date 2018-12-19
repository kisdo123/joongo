<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/main.css">
<link rel="stylesheet" type="text/css" href="/joongo/css/notice.css">
<script type="text/javascript" src="/joongo/script/main.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<div id="container" class="container">
	<div class="w1200">
		<div class="middle">

			<div style="height: 1000px; margin-top: 100px;">
				공지사항 관리하는 페이지<br> <br> <br> 공
				지사항 리스트 나와야하는곳
				<c:forEach var="notice" items="${notices}">
					${notice.title }<br>
				</c:forEach>



				<div>
					<button>글쓰기</button>
					<br> <br> <br>
					<button>글수정</button>
					<br> <br> <br>
				</div>
			</div>





			<!-- 맨 위, 맨 아래로 -->
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>

<jsp:include page="/particular/footer.jsp"></jsp:include>