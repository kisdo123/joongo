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
				신고목록보는 페이지<br> <br> <br>
				
				
				신고목록 나와야 하는 곳
				<c:forEach var="reports" items="${reportList }">
					${reports.reportNo }<br>
					${reports.content }<br>
				</c:forEach>

			</div>





			<!-- 맨 위, 맨 아래로 -->
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>

<jsp:include page="/particular/footer.jsp"></jsp:include>