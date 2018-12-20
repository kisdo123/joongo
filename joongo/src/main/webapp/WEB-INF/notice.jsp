<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/main.css">
<link rel="stylesheet" type="text/css" href="/joongo/css/notice.css">
<script type="text/javascript" src="/joongo/script/main.js"></script>
<script type="text/javascript" src="/joongo/script/notice.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<div id="container" class="container">
	<div class="w1200">
		<div class="middle">

			<div id="notice-topDiv">

				<div id="notice-header">
					<div id="notice-title">
						<span id="notice-spanTitle">공지사항</span>
					</div>
					<p id="notice-title_sub">중고장터의 최근 소식을 신속하게 전달드립니다.</p>
				</div>

				<table id="notice-table">
					<thead>
						<tr>
							<td class="notice-thead_td">번호</td>
							<td class="notice-thead_td">제목</td>
							<td class="notice-thead_td">작성자</td>
							<td class="notice-thead_td">게시일</td>
						</tr>
					</thead>
					<c:forEach var="notice" items="${notices }">
						<tbody>
							<tr>
								<td>${notice.noticeNo }</td>
								<td><div class="notice-div">
										<a class="notice-atag"
											href="noticeInfo.do?noticeNo=${notice.noticeNo }">${notice.title }</a>
									</div></td>
								<td>중고장터 관리자</td>
								<td>${notice.wdate }</td>
							</tr>

						</tbody>
					</c:forEach>
				</table>

				<button class="notice_moreBtn">더보기</button>
			</div>

			<!-- 맨 위, 맨 아래로 -->
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>

<jsp:include page="/particular/footer.jsp"></jsp:include>