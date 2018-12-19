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

			<div id="notice-topContentDiv">

				<div id="notice-header">
					<div id="notice-title">
						<span id="notice-spanTitle">공지사항</span>
					</div>
					<p id="notice-title_sub">중고장터의 최근 소식을 신속하게 전달드립니다.</p>
				</div>

				<table id="notice-table">
					<thead>
						<tr>
							<th class="notice-thead_th">내용</th>
						</tr>
					</thead>
				</table>
				<c:if test="${notice.noticeNo != null }">
					<div class="notice-divContent">${notice.content }</div>
				</c:if>

			</div>
			<button class="notice-noticeListBtn" onclick="location.href='noticelist.do'">목록보기</button>
			<!-- 맨 위, 맨 아래로 -->
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>

<jsp:include page="/particular/footer.jsp"></jsp:include>