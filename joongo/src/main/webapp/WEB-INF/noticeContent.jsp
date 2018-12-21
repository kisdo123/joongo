<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

				<table id="noticeContent-table">
					<thead class="notice-thead">
						<tr>
							<td class="noticeContent-thead_td1">
								<span class="noticeContent-titleNum">공지 ${notice.noticeNo }</span>
								<div class="noticeContent-titleDiv">${notice.title }</div>
							</td>
							<td class="noticeContent-thead_td"><i class="fa fa-paint-brush" aria-hidden="true"></i>  중고장터 관리자</td>
							<td class="noticeContent-thead_td"><i class="fa fa-calendar" aria-hidden="true"></i>  ${notice.wdate }</td>
						</tr>
					</thead>
					<tbody class="notice-tbody">
						<tr>
							<td colspan="3">
								<div class="noticeContent-div"><pre>${notice.content }</pre></div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<button class="notice-noticeListBtn" onclick="location.href='noticeList.do'">목록보기</button>
			<!-- 맨 위, 맨 아래로 -->
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>

<jsp:include page="/particular/footer.jsp"></jsp:include>